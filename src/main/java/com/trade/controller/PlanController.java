package com.trade.controller;

import com.trade.entity.Plan;
import com.trade.entity.Plans;
import com.trade.entity.User;
import com.trade.repository.PlanRepository;
import com.trade.repository.PlansRepository;
import com.trade.repository.UserResository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.LocalDate;
import java.util.Date;

@Controller
public class PlanController {

    @Autowired
    PlansRepository plansRepository;

    @Autowired
    PlanRepository planRepository;

    @Autowired
    UserResository userResository;

    @GetMapping("/buy")
    public String buyPlan(Model model){
model.addAttribute("plans",planRepository.findAll());
        return "buyPlan";
    }
    @GetMapping("/buyplanbyuser")
    public String plans(Model model, @RequestParam int id, HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = null;
        Plan plan = null;
        Plans plans = new Plans();
        if (session != null && session.getAttribute("user") != null){
            user = (User) session.getAttribute("user");
            if(user != null){
                user = userResository.findById(user.getId()).get();
                plan = planRepository.findById(id);
                if(user.getUserType().equals("u")){
                    if (user.getBalance() >= Integer.parseInt(plan.getAmount())){
                        plans.setPlanId(plan.getId());
                        plans.setUserId(user.getId());
                        plans.setActiveAt(LocalDate.now().toString());
                         plans.setExpireDate(LocalDate.now().plusMonths(
                                 Long.valueOf(plan.getDuration()) ).toString());
                         user.setBalance(user.getBalance()-Integer.parseInt(plan.getAmount()));
                         user.setInvestment(user.getInvestment()+Integer.parseInt(plan.getAmount()));
                         plansRepository.save(plans);
                         userResository.save(user);

                    }else {
                        model.addAttribute("msg","You don't have enough Balance to buy this plan current balance " + user.getBalance() + " Required Balance " + plan.getAmount());
                        model.addAttribute("amt", Integer.parseInt(plan.getAmount()) - user.getBalance());
                        return "fund";
                    }

                }


            }

        }

model.addAttribute("msg", "Successfully Invested .. in plan  "+ plan.getName());
        model.addAttribute("plans",planRepository.findAll());
        session.setAttribute("user", userResository.findById(user.getId()).get());

        return "buyPlan";
    }
}

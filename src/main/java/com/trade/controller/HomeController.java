package com.trade.controller;


import com.trade.entity.Plan;
import com.trade.entity.User;
import com.trade.model.StatusMessage;
import com.trade.repository.PlanRepository;
import com.trade.repository.UserResository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    UserResository userResository;

    @Autowired
    PlanRepository planRepository;


    @GetMapping("/")
    public String home() {
        return "fxtm";
    }

    @GetMapping("/login")
    public String page(@RequestParam String flag) {
        if (flag.equalsIgnoreCase("login"))
            return "login";
        else return "registration";
    }

    @PostMapping("/regi")
    public String regi(@RequestParam String firstName, @RequestParam String lastName, @RequestParam String course, @RequestParam String mobile, @RequestParam String email, @RequestParam String id, @RequestParam String password, Model model) {
        User user = new User();
        if (!(id.isBlank() || id.isEmpty())) user.setId(Integer.parseInt(id));
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setCourse(course);
        user.setEmail(email);
        user.setMobile(mobile);
        user.setPassword(password);
        user.setLoginCounter("n");
        user.setUserType("u");
        user.setAble(true);


        List<User> existing = userResository.findAllByEmailOrMobile(email, mobile);
        StatusMessage statusMessage = validation(existing, user);
        if (statusMessage.getStatus() != 200) {
            model.addAttribute("msg", statusMessage.getMessage());
            return "registration";
        }

        userResository.save(user);
        model.addAttribute("msg", "registration success");
        return "registration";
    }

    private StatusMessage validation(List<User> existing, User user) {
        StatusMessage sm = new StatusMessage();
        for (User u : existing) {
            if (u.getMobile().equals(user.getMobile())) {
                sm.setStatus(9);
                sm.addMessage("Mobile exists ");
            }
            if (u.getEmail().equals(user.getEmail())) {
                sm.setStatus(9);
                sm.addMessage("Email exists");
            }
        }

        return sm;
    }


    @PostMapping("/loginn")
    public String login(HttpServletRequest request, Model model, @RequestParam String email, @RequestParam String password) {

        User user = userResository.findByEmail(email);
        if (user == null) {
            model.addAttribute("msg", "invalid user");
            return "login";
        }
        if (user.getPassword().equals(password)) {


            if (user.isAble()){
                model.addAttribute("msg","Your account is inactive");
                return "login";
            }
            HttpSession session =   request.getSession(true);
            session.setAttribute("user", user);

            if (session == null){
                model.addAttribute("msg","invalid session");
                return "login";
            }

            if (user.getUsertype().equals("u")) {
                if (user.getLoginCounter().equals("n")){
                    user.setLoginCounter("y");
                    userResository.save(user);

                    return "fund";
                }else return "userPage";
            } else {
                return "adminPage";
            }

        }
        model.addAttribute("msg", "invalid user");
        return "login";

    }
    @GetMapping("/plan")
    public String plan(Model model){

        model.addAttribute("plans",planRepository.findAll());
        return "plan";
    }

    @PostMapping("/addPlan")
    public String add(Model model,@RequestParam String name,@RequestParam String amount,@RequestParam String duration,@RequestParam String returnn,@RequestParam boolean selfTrade){
        Plan plan = new Plan();
        plan.setName(name);
        plan.setAmount(amount);
        plan.setDuration(duration);
        plan.setReturnn(returnn);
        plan.setSelfTrade(selfTrade);
        plan.setCreatedAt(new Date().toString());

        StatusMessage statusMessage = detailsValidation(plan);
        if (statusMessage.getStatus() != 200) {
            model.addAttribute("msg", statusMessage.getMessage());
            model.addAttribute("plans",planRepository.findAll());
            return "plan";

        }


        planRepository.save(plan);
        model.addAttribute("plans",planRepository.findAll());
        return "plan";
    }

    private StatusMessage detailsValidation(Plan plan) {
        StatusMessage sm = new StatusMessage();
        List<Plan> existing = planRepository.findAllByName(plan.getName());
        if (plan.getAmount()==null && plan.getAmount().isEmpty())
       {
            sm.setStatus(2);
            sm.addMessage("Amount error");
        }
        if (plan.getDuration()==null && plan.getDuration().isEmpty()){
            sm.setStatus(2);
            sm.addMessage("Duration error");
        }
        if(plan.getName()==null && plan.getName().isEmpty()){
            sm.setStatus(2);
            sm.addMessage("Name error");
        }
        if (plan.getReturnn()==null && plan.getReturnn().isEmpty()){
            sm.setStatus(2);
            sm.addMessage("Return error");
        }
        for (Plan p :existing) {
            if (p.getName().equals(plan.getName())){
                sm.setStatus(2);
                sm.addMessage("Duplicate plan's name exists");

                break;
            }

        }

        return sm;
    }

    @PostMapping("/deletePlan")
    public String deletePlan(Model model,@RequestParam int id){
        if (id <= 0) {
            model.addAttribute("msg", "invalid plan id");
            return "plan";
        }
        Plan plan = planRepository.findById(id);

        if(plan == null) {
            model.addAttribute("msg","user is already deleted");
            return "plan";
        }
        assert plan != null;
        planRepository.delete(plan);
        model.addAttribute("msg", "User Delete Successfully");
        model.addAttribute("plans", planRepository.findAll());
        return "plan";
    }

    @GetMapping("/contect")
    public String contect(){
        return "contect";
    }

    @GetMapping("/home")
    public String homePage(){
        return "userPage";
    }
    @GetMapping("/adminHome")
    public String adminHome(){
        return "adminHome";
    }

}
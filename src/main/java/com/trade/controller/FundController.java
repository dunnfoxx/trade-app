package com.trade.controller;

import com.trade.entity.Fund;
import com.trade.entity.User;
import com.trade.model.FundResponse;
import com.trade.repository.FundRepository;
import com.trade.repository.UserResository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class FundController {


    @Autowired
    FundRepository fundRepository;

    @Autowired
    UserResository userResository;

    @GetMapping("/addFund")
    public String addFund() {
        return "fund";
    }

    @PostMapping("/addManualFund")
    public String addManualFund(HttpServletRequest request, Model model, @RequestParam int amount) {
        HttpSession session = request.getSession();
        User user;
        Fund fund = new Fund();
        if (session != null) {
            user = (User) session.getAttribute("user");
            if (user != null && user.getUserType().equalsIgnoreCase("u")) {
                fund.setAmount(amount);
                fund.setCredit(true);
                fund.setPaymentMode("Manual");
                fund.setUserId(user.getId());
                fund = fundRepository.save(fund);

            } else {
                session.invalidate();
                model.addAttribute("msg", "session expired please login again");
                return "login";
            }

        } else {
            session.invalidate();
            model.addAttribute("msg", "session expired please login again");
            return "login";
        }

        model.addAttribute("fundId", "YOUR FUND ID IS :-  FXTM-CREDIT-MANUAL-" + fund.getId());
        return "fund";

    }

    @GetMapping("/approveFund")
    public String approveFund(HttpServletRequest request, Model model, @RequestParam int id,

                              @RequestParam String flag) {
        HttpSession session = request.getSession();
        StringBuilder messageBuilder = new StringBuilder();
        if (session != null && session.getAttribute("user") != null) {
            Fund fund = fundRepository.findById(id).get();
            if (flag.equalsIgnoreCase("Approve")) {
                        User user = userResository.findById(fund.getUserId()).get();
                    user.setBalance(user.getBalance() + fund.getAmount());
                    fund.setApproved(true);
                    fundRepository.save(fund);
                    userResository.save(user);
                    messageBuilder.append("Request approved successfully");

            } else {
                fundRepository.delete(fund);
                messageBuilder.append("Request deleted successfully");
            }
        } else {

            model.addAttribute("msg", "session expired please login again");
            return "login";
        }
        model.addAttribute("msg", messageBuilder.toString());
        model.addAttribute("funds",  buildFundResponse(fundRepository.findAllByApproved(false)));
        return "approveFund";
    }

    @GetMapping("/pytmNotify")
    public String pytmNotify(Model model) {
        model.addAttribute("funds",  buildFundResponse(fundRepository.findAllByApproved(false)));
        return "approveFund";
    }

    public  List<FundResponse> buildFundResponse(List<Fund> funds) {

        List<FundResponse> fundResponses = new ArrayList<>();
        for (Fund fund : funds) {
            User u = userResository.findById(fund.getUserId()).get();
            fundResponses.add(new FundResponse(u, fund));
        }
        System.out.println(fundResponses.toString());
        return fundResponses;
    }
}

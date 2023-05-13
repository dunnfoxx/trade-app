package com.trade.controller;

import com.trade.entity.User;
import com.trade.repository.UserResository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
    @Autowired
    UserResository userResository;

    @GetMapping("/totalUser")
    public String totalUser(Model model){
        model.addAttribute("users",userResository.findAll());
        return "users";

    }
    @GetMapping("/activeUser")
    public String activeUser(Model model){
        model.addAttribute("users",userResository.findByAble(true));
        return "users";
    }

    @GetMapping("/inactiveUser")
    public String inactiveUser(Model model){
        model.addAttribute("users",userResository.findByAble(false));
        return "users";
    }
    @GetMapping("/able")
    public String able(Model model,@RequestParam int id,@RequestParam String activeStatus){
        User user = userResository.findById(id).get();
        if (user != null) {
            if (activeStatus.equals("yes")) {
                user.setAble(false);
                userResository.save(user);
                model.addAttribute("users", userResository.findByAble(true));
                model.addAttribute("status", "User deactivated");
                return "users";
            } else {
                user.setAble(true);
                userResository.save(user);
                model.addAttribute("users",userResository.findByAble(false));
                model.addAttribute("status", "User activated");
                return "users";
            }
        }

        return "users";
    }


}

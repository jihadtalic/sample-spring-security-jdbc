package com.springsecurity4.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String indexPage(ModelMap model) {

        model.addAttribute("message", "Hello! This is the Home Page.");
        return "index";
    }

    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String accesssDeniedPage(ModelMap model) {

        model.addAttribute("message", "You do not have permission to access this page!");
        return "403";
    }
}

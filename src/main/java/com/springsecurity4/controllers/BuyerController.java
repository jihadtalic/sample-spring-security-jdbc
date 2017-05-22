package com.springsecurity4.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuyerController {
    @RequestMapping(value = "/buyer", method = RequestMethod.GET)
    public String buyerPage(ModelMap model) {

        model.addAttribute("message", "Buyer Page...");
        return "buyer/buyer";
    }
}

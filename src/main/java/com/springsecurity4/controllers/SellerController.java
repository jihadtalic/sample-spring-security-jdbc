package com.springsecurity4.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SellerController {
    @RequestMapping(value = "/seller", method = RequestMethod.GET)
    public String sellerPage(ModelMap model) {

        model.addAttribute("message", "Seller Page...");
        return "seller/seller";
    }
}

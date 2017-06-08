package com.springsecurity4.controllers;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.security.providers.ExpiringUsernameAuthenticationToken;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springsecurity4.models.UserDetails;
import com.springsecurity4.dao.UserDetailsDao;


@Controller
public class SellerController {
    @RequestMapping(value = "/seller", method = RequestMethod.GET)
    public String sellerPage(ModelMap model) {
        ExpiringUsernameAuthenticationToken credentials = (ExpiringUsernameAuthenticationToken) SecurityContextHolder.getContext().getAuthentication();
        String username =  credentials.getPrincipal().toString();

        ApplicationContext context = new ClassPathXmlApplicationContext("spring-module.xml");

        UserDetailsDao userdetailsDao = (UserDetailsDao) context.getBean("userDetailsDAO");
        UserDetails userdetails = userdetailsDao.findByUsername(username);

        model.addAttribute("userName", username);
        model.addAttribute("firstName", userdetails.getFirstName());
        model.addAttribute("lastName", userdetails.getLastName());
        model.addAttribute("companyName", userdetails.getCompanyName());
        model.addAttribute("roles", userdetails.getRoles());
        model.addAttribute("isActive", userdetails.getIsActive());
        model.addAttribute("title", "This is the Seller Page.");
        model.addAttribute("message", "Only users with ROLE_SELLER permission can access this page");

        return "/seller/seller";
    }
}

package com.springsecurity4.controllers;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.security.cas.authentication.CasAuthenticationToken;
import org.springframework.security.core.userdetails.AuthenticationUserDetailsService;
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
        SecurityContext ctx = SecurityContextHolder.getContext();
        CasAuthenticationToken casAuthenticationToken = (CasAuthenticationToken) ctx.getAuthentication();
        String username = casAuthenticationToken.getUserDetails().getUsername();

        ApplicationContext context = new ClassPathXmlApplicationContext("spring-module.xml");

        UserDetailsDao userdetailsDao = (UserDetailsDao) context.getBean("userDetailsDAO");
        UserDetails userdetails = userdetailsDao.findByUsername(username);

        model.addAttribute("userName", username);
        model.addAttribute("firstName", userdetails.getFirstName());
        model.addAttribute("lastName", userdetails.getLastName());
        model.addAttribute("companyName", userdetails.getCompanyName());
        model.addAttribute("title", "This is the Seller Page.");
        model.addAttribute("message", "Only users with ROLE_SELLER permissions can access this page");

        return "seller/seller";
    }
}

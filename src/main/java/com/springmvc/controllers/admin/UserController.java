package com.springmvc.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {


    @RequestMapping(path = "/login", method = RequestMethod.GET)
    public String getLogin()
    {
        return "/login";
    }
    @RequestMapping(path = "/register", method = RequestMethod.GET)
    public String getRegister()
    {
        return "/register";
    }

    @RequestMapping(path = "/", method = RequestMethod.POST)
    public void login()
    {

    }
}

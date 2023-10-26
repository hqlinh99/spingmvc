package com.springmvc.controllers.web;

import com.springmvc.services.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    @Autowired
    private IProductService productService;

    @RequestMapping(path = "trang-chu", method = RequestMethod.GET)
    public ModelAndView getHome() {
        ModelAndView mv = new ModelAndView("/web/home");
        mv.addObject("products", productService.getAll());
        return mv;
    }
}

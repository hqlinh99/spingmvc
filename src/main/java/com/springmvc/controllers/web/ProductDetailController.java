package com.springmvc.controllers.web;

import com.springmvc.services.IProductService;
import com.springmvc.services.IProductVariantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(path = "/product")
public class ProductDetailController {

    private @Autowired IProductService productService;
    private @Autowired IProductVariantService productVariantService;

    @RequestMapping(path = "/{url}")
    public ModelAndView getByPath(@PathVariable("url") String url, @RequestParam("variant") int id) {
        ModelAndView mv = new ModelAndView("/web/single-page-product");
        mv.addObject("product", productVariantService.findBienTheByIdAndSanPhamUrl(url, id));
        return mv;
    }
}

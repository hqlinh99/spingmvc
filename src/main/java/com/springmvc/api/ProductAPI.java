package com.springmvc.api;

import com.springmvc.entity.Product;
import com.springmvc.services.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import java.util.List;
import java.util.Optional;

@Controller
@EnableWebMvc
@RequestMapping(value = "/api/v1")
public class ProductAPI {
    @Autowired
    private IProductService productServices;

    @RequestMapping(value = "/products", method = RequestMethod.GET)
    @ResponseBody
    public List<Product> getAll() {
        return productServices.getAll();
    }

    @RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Product getById(@PathVariable("id") int id) {
        return productServices.getById(id);
    }

    @RequestMapping(value = "/product", method = RequestMethod.POST)
    public String insert(@RequestBody Product product) {
        productServices.insert(product);
        return "redirect:/api/v1/products";
    }
    @RequestMapping(value = "/product/{id}", method = RequestMethod.PUT)
    public void update(@RequestBody Product product, @PathVariable("id") Integer id) {
        productServices.update(id, product);
    }

    @RequestMapping(value = "/product/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    public void delete(@PathVariable("id") int id) {

    }
}

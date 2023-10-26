package com.springmvc.api;

import com.springmvc.entity.VaiTro;
import com.springmvc.services.IRoleService;
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
public class RoleAPI {
    @Autowired
    private IRoleService roleServices;

    @RequestMapping(value = "/roles", method = RequestMethod.GET)
    @ResponseBody
    public List<VaiTro> getAll() {
        return roleServices.getAll();
    }

    @RequestMapping(value = "/role/{id}", method = RequestMethod.GET)
    @ResponseBody
    public VaiTro getById(@PathVariable("id") int id) {
        return roleServices.getById(id);
    }

    @RequestMapping(value = "/role", method = RequestMethod.POST)
    public String insert(@RequestBody VaiTro vaiTro) {
        roleServices.insert(vaiTro);
        return "redirect:/api/v1/roles";
    }

    @RequestMapping(value = "/role/{id}", method = RequestMethod.DELETE)
    public void delete(@PathVariable("id") Integer id) {
        roleServices.delete(id);
    }
}

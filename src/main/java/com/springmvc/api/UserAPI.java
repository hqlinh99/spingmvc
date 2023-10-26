package com.springmvc.api;

import com.springmvc.entity.TaiKhoan;
import com.springmvc.services.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(path = "/api/v1")
public class UserAPI {
    @Autowired
    private IUserService userServices;

    @RequestMapping(path = "/users", method = RequestMethod.GET)
    @ResponseBody
    public List<TaiKhoan> getAll() {
        return userServices.getAll();
    }

    @RequestMapping(path = "/user", method = RequestMethod.POST)
    @ResponseBody
    public void upload(@RequestBody TaiKhoan taiKhoan) {
        userServices.insert(taiKhoan);
    }

    @RequestMapping(path = "/user/{id}", method = RequestMethod.DELETE)
    @ResponseBody
    public void delete(@PathVariable("id") Integer id)
    {
        userServices.delete(id);
    }
}

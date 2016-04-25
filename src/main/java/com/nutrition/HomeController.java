package com.nutrition;

import com.nutrition.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class HomeController {

    @Autowired
    UserService userService;


    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/home")
    public String homeage(){
        return "home";
    }

    @RequestMapping("/statistics")
    public String statistics(){
        return "statistics";
    }

    @RequestMapping("/users")
    public @ResponseBody
    Map<String, Object> girls(){

        Map<String, Object> map = new HashMap<>();
        map.put("two", "Elva");
        map.put("one", "Débora");
        map.put("three", "Kimberly");
        map.put("three", "Ruth");
        map.put("users", userService.findAll());
        return map;
    }
}

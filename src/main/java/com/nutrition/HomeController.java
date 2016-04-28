package com.nutrition;

import com.nutrition.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @RequestMapping(value = "/statistics", method = RequestMethod.GET)
    public String statistics(){
        return "statistics";
    }

    @RequestMapping(value = "/statistics", method = RequestMethod.POST)
    public String statisticsProcess(){
        return "home";
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

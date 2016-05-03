package com.nutrition;

import com.nutrition.model.SerieRequest;
import com.nutrition.services.CountryService;
import com.nutrition.services.SerieService;
import com.nutrition.services.StatService;
import com.nutrition.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class SeriesController {

    @Autowired
    UserService userService;

    @Autowired
    StatService statService;

    @Autowired
    CountryService countryService;

    @Autowired
    SerieService serieService;


    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/home")
    public String homeage(){
        return "home";
    }

    @RequestMapping(value = "/statistics", method = RequestMethod.GET)
    public String statistics(Model model){

        model.addAttribute("countries", countryService.findAll());
        model.addAttribute("series", serieService.findAll());

        return "statistics";
    }

    @RequestMapping(value = "/statistics", method = RequestMethod.POST)
    public @ResponseBody  Map<String, Object> statisticsProcess(@RequestBody SerieRequest params){

        Map<String, Object> map = new HashMap<>();
        map.put("stats", statService.allData(params.getSerie(), params.getCountries()));

        return map;

    }

    @RequestMapping("/users")
    public @ResponseBody Map<String, Object> girls(){

        Map<String, Object> map = new HashMap<>();
        map.put("two", "Elva");
        map.put("one", "Débora");
        map.put("three", "Kimberly");
        map.put("three", "Ruth");
        return map;
    }
}

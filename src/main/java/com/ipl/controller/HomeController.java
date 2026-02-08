package com.ipl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class HomeController {

    @GetMapping("/")
    public String getPlayers() {
        return "redirect:/home";
    }

    @GetMapping("/home")
    public String redirectHome() {
        return "home/home";
    }

}


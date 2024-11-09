package com.gestion.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ExempleController {
    @GetMapping("/")
    @ResponseBody
    public String test() {
        return "hellosopring";
    }

    @GetMapping("/test")
    public String test2(Model m) {
        return "login";
    }
}

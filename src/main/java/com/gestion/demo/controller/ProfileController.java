package com.gestion.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {

    @GetMapping("/details_profil")
    public ModelAndView details_profil() {
        return new ModelAndView("details-profil");
    }

    @GetMapping("/employes_profil")
    public ModelAndView employeProfil() {
        return new ModelAndView("employes-Profil");
    }

    @GetMapping("/insert_profil")
    public ModelAndView insertProfil() {
        return new ModelAndView("insert-profil");
    }

    @GetMapping("/liste_profil")
    public ModelAndView listeProfil() {
        return new ModelAndView("liste-profil");
    }

    @GetMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("login");
    }

}

package com.gestion.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AnnonceController {
    public ModelAndView liste_annonce_rh() {
        return new ModelAndView("liste-annonce-rh");
    }

    public ModelAndView liste_annonce_user() {
        return new ModelAndView("liste-annonce-user");
    }

}

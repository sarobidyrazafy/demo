package com.gestion.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.gestion.demo.repository.CV.CvRepo;

@Controller
public class AnnonceController {
    @Autowired
    CvRepo cvRepo;

    public ModelAndView liste_annonce_rh() {
        return new ModelAndView("liste-annonce-rh");
    }

    public ModelAndView liste_annonce_user() {
        return new ModelAndView("liste-annonce-user");
    }

}

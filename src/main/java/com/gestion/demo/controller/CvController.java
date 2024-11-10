package com.gestion.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CvController {
    @GetMapping("/cv_formulaire")
    public ModelAndView cv_formulaire() {
        return new ModelAndView("cv-formulaire");
    }

    @GetMapping("/cv_moyenne")
    public ModelAndView cv_moyenne() {
        return new ModelAndView("cv-moyenne");
    }

    @GetMapping("/details_cv")
    public ModelAndView details_cv() {
        return new ModelAndView("details-cv");
    }

    @GetMapping("/liste_cvtest")
    public ModelAndView liste_cv() {
        return new ModelAndView("liste-cv-test");
    }

    public ModelAndView noter_cv() {
        return new ModelAndView("noter-cv");
    }
}

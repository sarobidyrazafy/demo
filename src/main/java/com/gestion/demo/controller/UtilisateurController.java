package com.gestion.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gestion.demo.dto.UtilisateurDTO;
import com.gestion.demo.model.Utilisateur;
import com.gestion.demo.repository.UtilisateurRepository;

@Controller
public class UtilisateurController {

    @Autowired
    private UtilisateurRepository utilisateurRepository;

    @GetMapping("/login")
    public ModelAndView showLoginPage(@RequestParam(required = false) String error) {
        ModelAndView mv = new ModelAndView("login");
        mv.addObject("page", "login");
        if (error != null) {
            mv.addObject("error", error);
        }
        return mv;
    }

    @PostMapping("/traitlogin")
    public String login(@ModelAttribute UtilisateurDTO loginDTO) {
        System.out.println("Tentative de connexion avec email: " + loginDTO.getEmail());
        Utilisateur utilisateur = utilisateurRepository.findByEmailAndMdp(loginDTO.getEmail(), loginDTO.getMdp()).orElse(null);
        
        if (utilisateur != null) {
            System.out.println("Utilisateur trouvé : " + utilisateur.getEmail());
            return "redirect:/home";  
        } else {
            System.out.println("Utilisateur non trouvé ou mot de passe incorrect");
            return "redirect:/login?error=true";  
        }
    }


    @GetMapping("/home")
    public ModelAndView showHomePage() {
        ModelAndView mv = new ModelAndView("home");
        mv.addObject("page", "home");
        return mv;
    }

    @GetMapping("/signup")
    public ModelAndView showSignUpPage() {
        ModelAndView mv = new ModelAndView("signup");
        mv.addObject("page", "signup");
        return mv;
    }

    @PostMapping("/register")
    public String register(@ModelAttribute UtilisateurDTO utilisateurDTO) {
        // Vérifiez si l'utilisateur existe déjà
        if (utilisateurRepository.findByEmail(utilisateurDTO.getEmail()).isPresent()) {
            return "redirect:/signup?error=exists";
        }
        
        // Créez et sauvegardez le nouvel utilisateur
        Utilisateur utilisateur = new Utilisateur();
        utilisateur.setEmail(utilisateurDTO.getEmail());
        utilisateur.setMdp(utilisateurDTO.getMdp()); // N'oubliez pas de chiffrer le mot de passe en production

        utilisateurRepository.save(utilisateur);
        return "redirect:/login";  // Redirige vers la page de connexion après inscription
    }
}

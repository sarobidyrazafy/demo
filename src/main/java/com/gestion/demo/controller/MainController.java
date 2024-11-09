package com.gestion.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.gestion.demo.model.Utilisateur;
import com.gestion.demo.repository.UtilisateurRepository;

@Controller
public class MainController {

    @Autowired
    private UtilisateurRepository utilisateurRepository;

    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @GetMapping("/")
    public String redirectToLogin() {
        return "index"; // Redirection vers index.jsp
    }

    @GetMapping("/connexion")
    public String connexion() {
        return "pages/connexion"; // Affiche login.jsp
    }

    @PostMapping("/traitementconnexion")
    public String traitementConnexion(@ModelAttribute("utilisateur") Utilisateur utilisateur, Model model) {
        Utilisateur existingUser = utilisateurRepository.findByEmail(utilisateur.getEmail()).orElse(null);

        if (existingUser != null) {
            if (passwordEncoder.matches(utilisateur.getMdp(), existingUser.getMdp())) {
                model.addAttribute("user", existingUser);
                return "pages/home"; // Redirige vers la page d'accueil après connexion réussie
            } else {
                model.addAttribute("error", "Mot de passe incorrect.");
            }
        } else {
            utilisateur.setMdp(passwordEncoder.encode(utilisateur.getMdp())); // Cryptage du mot de passe
            utilisateurRepository.save(utilisateur);
            model.addAttribute("user", utilisateur);
            return "pages/home"; // Redirection vers la page d'accueil après inscription
        }

        return "pages/login"; // Retour à la page de login en cas d'erreur
    }
}

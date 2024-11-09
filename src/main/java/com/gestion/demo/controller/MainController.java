package com.gestion.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.gestion.demo.dto.UtilisateurDTO;
import com.gestion.demo.entity.Utilisateur;
import com.gestion.demo.services.UtilisateurService;

@Controller
public class MainController {

    @Autowired
    private UtilisateurService utilisateurService;

    @GetMapping("/")
    public String showLoginPage() {
        return "connexion"; // Renvoie la page login.html
    }

    // Page de connexion/inscription
    @GetMapping("/connexion")
    public String connexion() {
        return "connexion"; // Affiche la page de login/signup
    }

    // Gère la soumission du formulaire de login/signup
    @PostMapping("/traitementconnexion")
    public String traitementconnexion(@ModelAttribute UtilisateurDTO loginDTO, Model model) {
        Utilisateur utilisateur = utilisateurService.findByEmail(loginDTO.getEmail());

        if (utilisateur != null) { // Si l'utilisateur existe
            if (utilisateurService.verifyPassword(loginDTO.getPassword(), utilisateur.getMdp())) { // Vérification du mot de passe
                model.addAttribute("user", utilisateur);
                return "home"; // Rediriger vers la page d'accueil après un login réussi
            } else {
                model.addAttribute("error", "Mot de passe incorrect."); // Message d'erreur en cas de mot de passe incorrect
            }
        } else { // Si l'utilisateur n'existe pas, c'est une inscription
            Utilisateur newUser = new Utilisateur();
            newUser.setEmail(loginDTO.getEmail());
            newUser.setMdp(loginDTO.getPassword());  // Ici, le mot de passe est en clair, il doit être crypté
            utilisateurService.save(newUser); // Sauvegarder le nouvel utilisateur
            model.addAttribute("user", newUser);
            return "home"; // Redirection vers la page d'accueil après inscription
        }

        return "connexion"; // Si une erreur se produit, revenir à la page de login/signup
    }

    @GetMapping("/home")
    public String home() {
        return "home"; // Page d'accueil
    }
}

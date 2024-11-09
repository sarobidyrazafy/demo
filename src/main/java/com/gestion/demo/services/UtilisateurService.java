package com.gestion.demo.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.gestion.demo.entity.Utilisateur;
import com.gestion.demo.repository.UtilisateurRepository;

@Service
public class UtilisateurService {

    @Autowired
    private UtilisateurRepository utilisateurRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public Utilisateur findByEmail(String email) {
        return utilisateurRepository.findByEmail(email).orElse(null);
    }

    public boolean verifyPassword(String rawPassword, String encodedPassword) {
        return passwordEncoder.matches(rawPassword, encodedPassword);
    }

    public Utilisateur save(Utilisateur utilisateur) {
        utilisateur.setMdp(passwordEncoder.encode(utilisateur.getMdp())); // Encoder le mot de passe
        return utilisateurRepository.save(utilisateur);
    }
}

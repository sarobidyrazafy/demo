package com.gestion.demo.repository.Annonce;

import org.springframework.data.jpa.repository.JpaRepository;
import com.gestion.demo.model.Annonce.Annonce;

public interface AnnonceRepo extends JpaRepository<Annonce, Integer> {
    
}

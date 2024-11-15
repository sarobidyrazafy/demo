package com.gestion.demo.model.Annonce;

import java.time.LocalDate;

import com.gestion.demo.model.Profil.Profil;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class Annonce {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY )
    int id;
    LocalDate dateAnnonce;

    @ManyToOne
    @JoinColumn(name = "id_profil",referencedColumnName = "id")
    Profil profil;

    public Annonce() {
    }
}

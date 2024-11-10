package com.gestion.demo.model.CV;

import java.time.LocalDate;

import com.gestion.demo.model.Simple.Domaine;

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
public class CvExperience {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_cv")
    private Cv cv;

    @ManyToOne
    @JoinColumn(name = "id_domaine")
    private Domaine domaine;

    private LocalDate dateDebut;
    private LocalDate dateFin;
    private String posteOccupe;
    private String entreprise;
}

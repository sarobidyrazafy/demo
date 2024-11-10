package com.gestion.demo.model.Profil;

import java.util.List;

import com.gestion.demo.model.Poste;
import com.gestion.demo.model.Simple.Domaine;
import com.gestion.demo.model.Simple.Sexe;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter

public class Profil {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String designation;
    private Integer ageMin;
    private Integer ageMax;
    private Integer anneeExp;
    private Double salaireMin;
    private Double salaireMax;

    @ManyToOne
    @JoinColumn(name = "id_poste")
    private Poste poste;

    @ManyToOne
    @JoinColumn(name = "id_domaine")
    private Domaine domaine;

    @ManyToOne
    @JoinColumn(name = "id_sexe")
    private Sexe sexe;

    @OneToMany(mappedBy = "profil", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ProfilDiplome> diplomes;

    @OneToMany(mappedBy = "profil", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<ProfilLangue> langues;
}

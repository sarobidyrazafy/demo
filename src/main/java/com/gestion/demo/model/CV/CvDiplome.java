package com.gestion.demo.model.CV;

import com.gestion.demo.model.Simple.Diplome;
import com.gestion.demo.model.Simple.Filiere;

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
public class CvDiplome {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_cv")
    private Cv cv;

    @ManyToOne
    @JoinColumn(name = "id_diplome")
    private Diplome diplome;

    @ManyToOne
    @JoinColumn(name = "id_filiere")
    private Filiere filiere;

    private String etablissement; 

    public CvDiplome() {
    }

    public CvDiplome(Diplome diplome,Filiere filiere,String etablissement){
        setDiplome(diplome);
        setFiliere(filiere);
        setEtablissement(etablissement);
    }
}

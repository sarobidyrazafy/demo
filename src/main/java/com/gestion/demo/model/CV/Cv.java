package com.gestion.demo.model.CV;

import java.time.LocalDate;
import java.time.Period;
import java.util.List;

import com.gestion.demo.model.Annonce.Annonce;
import com.gestion.demo.model.Simple.Sexe;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name="cv")
@Getter
@Setter
public class Cv {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment
    int id;
    String nom;
    String prenom;
    LocalDate dateNaissance;
    int anneeExp;
    double salaireMin;
    double salaireMax;
    // @ManyToOne
    // @JoinColumn(name = "id_utilisateur",referencedColumnName = "id")
    // Utilisateur user;
    @ManyToOne
    @JoinColumn(name = "id_annonce")
    private Annonce annonce;

    @ManyToOne
    @JoinColumn(name = "id_sexe")
    private Sexe sexe;

    @OneToMany(mappedBy = "cv", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<CvLangue> langues;

    @OneToMany(mappedBy = "cv", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<CvDiplome> diplomes;

    @OneToMany(mappedBy = "cv", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<CvExperience> experiences;

    @OneToOne(mappedBy = "cv", cascade = CascadeType.ALL, orphanRemoval = true)
    private MoyenneCv moyenne;

    public Cv(){
        
    }
    public int calculerAge() throws Exception {
        LocalDate currentDate = LocalDate.now(); // Obtenir la date actuelle
        if ((dateNaissance != null) && (dateNaissance.isBefore(currentDate))) {
            return Period.between(dateNaissance, currentDate).getYears();
        } else {
            throw new IllegalArgumentException("La date de naissance doit être avant la date actuelle.");
        }
    }
    
}

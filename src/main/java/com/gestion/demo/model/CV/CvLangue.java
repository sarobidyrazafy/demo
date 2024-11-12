package com.gestion.demo.model.CV;

import com.gestion.demo.model.Simple.Langue;

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
public class CvLangue {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_cv")
    private Cv cv;

    @ManyToOne
    @JoinColumn(name = "id_langue")
    private Langue langue;

    public CvLangue(){
        
    }
    public CvLangue(Cv cv, Langue langue) {
        this.cv = cv;
        this.langue = langue;
    }

    // Getters et setters
}

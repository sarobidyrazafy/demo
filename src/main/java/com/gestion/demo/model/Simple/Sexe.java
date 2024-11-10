package com.gestion.demo.model.Simple;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Sexe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY )
    int id;
    
    String designation;

    public Sexe() {
    }
}

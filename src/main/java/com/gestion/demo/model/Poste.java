package com.gestion.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class Poste {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    int id;
    String designation;
    boolean occupied = false;

    public Poste() {
    }
    
}

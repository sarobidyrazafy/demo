package com.gestion.demo.model.Simple;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class Domaine {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String designation;    
}

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
public class Diplome {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    String designation;
    Integer niveau;
}

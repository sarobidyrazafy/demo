package com.gestion.demo.model.questionReponse;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "reponse")
@Getter
@Setter
public class Reponse {
    @Id
    int id;
    int idQuestion;
    int idPoste;
}

package com.gestion.demo.model.questionReponse;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
public class Question {
    @Id
    int id;
    
    String question;
}

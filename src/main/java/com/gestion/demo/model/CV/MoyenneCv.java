package com.gestion.demo.model.CV;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter

public class MoyenneCv {
    @OneToOne
    @JoinColumn(name = "id_cv",referencedColumnName = "id")
    Cv cv;
    double moyenne;
    public MoyenneCv() {
    }
}

package com.gestion.demo.repository.simple;

import org.springframework.data.jpa.repository.JpaRepository;
import com.gestion.demo.model.Simple.Sexe;

public interface SexeRepo extends JpaRepository<Sexe, Long> {

}

package com.gestion.demo.repository.simple;

import org.springframework.data.jpa.repository.JpaRepository;
import com.gestion.demo.model.Simple.Domaine;

public interface DomaineRepo extends JpaRepository<Domaine, Integer> {

}
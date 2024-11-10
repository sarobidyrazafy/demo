package com.gestion.demo.repository.simple;

import org.springframework.data.jpa.repository.JpaRepository;
import com.gestion.demo.model.Simple.Langue;

public interface LangueRepo extends JpaRepository<Langue, Long> {

}

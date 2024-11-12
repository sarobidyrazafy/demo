package com.gestion.demo.repository.simple;
import org.springframework.data.jpa.repository.JpaRepository;
import com.gestion.demo.model.Simple.Filiere;

public interface FiliereRepo extends JpaRepository<Filiere, Integer> {

}

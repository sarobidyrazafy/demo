package com.gestion.demo.repository.simple;
import org.springframework.data.jpa.repository.JpaRepository;
import com.gestion.demo.model.Simple.Diplome;

public interface DiplomeRepo extends JpaRepository<Diplome, Long> {

}

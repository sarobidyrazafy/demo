package com.gestion.demo.repository.CV;

import org.springframework.data.jpa.repository.JpaRepository;
import com.gestion.demo.model.CV.Cv;

public interface CvRepo extends JpaRepository<Cv, Long> {

}


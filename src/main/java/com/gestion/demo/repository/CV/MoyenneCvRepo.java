package com.gestion.demo.repository.CV;

import org.springframework.data.jpa.repository.JpaRepository;
import com.gestion.demo.model.CV.MoyenneCv;

public interface MoyenneCvRepo extends JpaRepository<MoyenneCv, Long> {

}

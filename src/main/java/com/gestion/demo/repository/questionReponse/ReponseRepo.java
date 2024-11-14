package com.gestion.demo.repository.questionReponse;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.gestion.demo.model.questionReponse.Reponse;

public interface ReponseRepo extends JpaRepository<Reponse,Integer> {
    @Query(value="SELECT r.* from reponse where r.id_question = :idQuestion and r.id_poste = :idPoste ",nativeQuery=true)
    Reponse findResponsePoste(@Param("idQuestion") int idQuestion,@Param("idPoste") int idPoste);   
    
}

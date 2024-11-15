package com.gestion.demo.repository.questionReponse;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.gestion.demo.model.questionReponse.Question;

public interface QuestionRepo extends JpaRepository<Question,Integer> {
    
    @Query("SELECT q from Question q where q.question like  '%:chaine%' ")
    List<Question> findQuestionContains(@Param("chaine") String chaine);
}

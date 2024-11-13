package com.gestion.demo.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gestion.demo.model.CV.Cv;
import com.gestion.demo.model.CV.CvDiplome;
import com.gestion.demo.model.CV.CvExperience;
import com.gestion.demo.model.CV.CvLangue;
import com.gestion.demo.model.CV.MoyenneCv;
import com.gestion.demo.model.Simple.Diplome;
import com.gestion.demo.repository.CV.CvRepo;
import com.gestion.demo.repository.simple.LangueRepo;
import com.gestion.demo.repository.simple.SexeRepo;
import com.gestion.demo.services.CvService;

@Controller
public class CvController {

    @Autowired
    SexeRepo sexRepo;

    @Autowired
    LangueRepo langueRepo;

    @Autowired
    CvService cvService;

    @Autowired 
    CvRepo cvRepo;

    @GetMapping("/cv_formulaire/new")
    public ModelAndView cv_formulaire(@RequestParam(value="message",required = false) String message){
        ModelAndView mv = new ModelAndView("template");
        mv.addObject("page", "pages/cv_formulaire.jsp" );
        if (message!=null) {
            mv.addObject("message", message);
        }
        mv.addObject("sexes",sexRepo.findAll());
        mv.addObject("langues", langueRepo.findAll());
        return mv;
    }

    @PostMapping("/cv_formulaire/insert")
    public ModelAndView insert_cv(
        @RequestParam("nom") String nom,
        @RequestParam("date_naissance") LocalDate dateNaissance,
        @RequestParam("id_sexe") int sexe,
        @RequestParam("id_annonce") int idAnnonce ,
        @RequestParam("id_diplome[]") String[] diplomes,
        @RequestParam("id_filiere[]") String[] filieres,
        @RequestParam("lieu_etude[]") String[] lieuEtudes,
        @RequestParam("langues[]") String[] langues,
        @RequestParam("debut_exp[]") String[] debutExps,
        @RequestParam("fin_exp[]") String[] finExps,
        @RequestParam("poste_occupe[]") String[] postesOccupes,
        @RequestParam("entreprise[]") String[] entreprises
    ) {
        ModelAndView mv = new ModelAndView("template");
        try {
            Cv cv = new Cv();
            cv.setNom(nom);
            cv.setDateNaissance(dateNaissance);
            cv.setSexe(sexRepo.findById(sexe).orElseThrow(() -> new Exception("Sexe not found with id: " + sexe)));
            List<CvDiplome> listeCvDiplomes = cvService.getListeCvDiplome(diplomes, filieres, lieuEtudes, cv);
            List<CvExperience> listeCvExperiences = cvService.getListeCvExperience(debutExps, finExps, postesOccupes, entreprises, cv);
            List<CvLangue> listeCvLangues = cvService.getListeCvLangue(langues, cv);
            cv.setDiplomes(listeCvDiplomes);
            cv.setExperiences(listeCvExperiences);  
            cv.setLangues(listeCvLangues);
            MoyenneCv moyenneCv = cvService.calculateMoyenneCv(cv, idAnnonce);
            cv.setMoyenne(moyenneCv);
            cvRepo.save(cv);
            
        } catch (Exception e) {
            mv.setViewName("redirect:/cv_formulaire/new"); // Redirect on error
            mv.addObject("message", e.getMessage()); // Pass the error message}
            e.printStackTrace();
            return mv;
        }
        return mv;
    }

}

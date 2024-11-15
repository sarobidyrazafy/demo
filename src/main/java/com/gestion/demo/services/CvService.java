package com.gestion.demo.services;

import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gestion.demo.model.Annonce.Annonce;
import com.gestion.demo.model.CV.Cv;
import com.gestion.demo.model.CV.CvDiplome;
import com.gestion.demo.model.CV.CvExperience;
import com.gestion.demo.model.CV.CvLangue;
import com.gestion.demo.model.CV.MoyenneCv;
import com.gestion.demo.model.Profil.Profil;
import com.gestion.demo.model.Profil.ProfilDiplome;
import com.gestion.demo.model.Profil.ProfilLangue;
import com.gestion.demo.model.Simple.Diplome;
import com.gestion.demo.model.Simple.Langue;
import com.gestion.demo.repository.Annonce.AnnonceRepo;
import com.gestion.demo.repository.CV.CvRepo;
import com.gestion.demo.repository.simple.DiplomeRepo;
import com.gestion.demo.repository.simple.DomaineRepo;
import com.gestion.demo.repository.simple.FiliereRepo;
import com.gestion.demo.repository.simple.LangueRepo;

@Service
public class CvService {
    @Autowired
    CvRepo cvRepo;

    @Autowired
    LangueRepo langueRepo;
    @Autowired
    FiliereRepo filierRepo;
    @Autowired
    DiplomeRepo diplomeRepo;
    @Autowired
    DomaineRepo domaineRepo;
    @Autowired
    AnnonceRepo annonceRepo;

    
    
    public List<CvLangue> getListeCvLangue(String[] langues,Cv cv) throws Exception{
        ArrayList<CvLangue> listeCvLangue = new ArrayList<>();
        for (int i = 0; i < langues.length; i++) {
            CvLangue cl = new CvLangue(cv, langueRepo.findById(Integer.parseInt(langues[i])).orElseThrow(()-> new Exception("Langue Inexistante")) );
            cl.setCv(cv);
            listeCvLangue.add(cl);
        }
        return listeCvLangue;
    }

    public List<CvDiplome> getListeCvDiplome(String[] diplomes,String[] filieres,String[] lieuEtudes,Cv cv) throws Exception{
        ArrayList<CvDiplome> listeCvDiplomes = new ArrayList<>();
        for (int i = 0; i < lieuEtudes.length; i++) {
            CvDiplome cvDiplome = new CvDiplome( diplomeRepo.findById(Integer.parseInt(diplomes[i])).orElseThrow(()-> new Exception("Diplome inexistante")) , filierRepo.findById(Integer.parseInt(filieres[i])).orElseThrow(()-> new Exception("Filiere introuvable")),  lieuEtudes[i]);
            cvDiplome.setCv(cv);
            listeCvDiplomes.add(cvDiplome);
        }
        return listeCvDiplomes;
    }

    public List<CvExperience> getListeCvExperience(String[] dateDebut , String[] dateFin , String[] posteOccupe,String[] entreprise , Cv cv) throws Exception {
        ArrayList<CvExperience> listeExperiences = new ArrayList<>();
        for (int i = 0; i < entreprise.length; i++) {
            CvExperience cvExperience = new CvExperience();
            cvExperience.setDateDebut(LocalDate.parse(dateDebut[i]));
            cvExperience.setDateFin(LocalDate.parse(dateFin[i]));
            //cvExperience.setDomaine(domaineRepo.findById(Integer.parseInt(posteOccupe[i])).orElseThrow(()->new Exception("Domaine pas dans la base")));
            cvExperience.setEntreprise(entreprise[i]);
            cvExperience.setPosteOccupe(posteOccupe[i]);
            cvExperience.setCv(cv);
            listeExperiences.add(cvExperience);
        }
        return listeExperiences;
    }
    public MoyenneCv calculateMoyenneCv(Cv cv , int idAnnonce) throws Exception{
        Annonce annonce = annonceRepo.findById(idAnnonce).orElseThrow(()-> new Exception("Annonce inexistante "));
        Profil profil = annonce.getProfil();
        /* Ato ny manao comparaison */
        
        // Age
        double points = 0;
        if (profil.getAgeMin() <= cv.calculerAge() && cv.calculerAge() <= profil.getAgeMax() ) {
            points+=3;
        }
        // Sexe
        if (profil.getSexe().getId() == cv.getSexe().getId()) {
            points+=3;
        }
        // Diplomes
        for (int i = 0; i < profil.getDiplomes().size(); i++) {
            ProfilDiplome profilDiplome = profil.getDiplomes().get(i);
            for (int j = 0; j < cv.getDiplomes().size(); j++) {
                CvDiplome cvDiplome = cv.getDiplomes().get(j);
                if (profilDiplome.getDiplome().getNiveau() == cvDiplome.getDiplome().getNiveau() && profilDiplome.getFiliere().getId() == cvDiplome.getFiliere().getId() ) {
                    points+=7;        
                }
            }
        }
        // Langues
        for (int i = 0; i < profil.getLangues().size(); i++) {
            ProfilLangue langueProfil = profil.getLangues().get(i);
            for (int j = 0; j < cv.getLangues().size() ; j++) {
                if (langueProfil.getId() == cv.getLangues().get(j).getId()) {
                    points+=3;
                }
            }
        }

        // Salaire
        if (cv.getSalaireMin() <= profil.getSalaireMin() ) {
            points+=2;
        }
        if (cv.getSalaireMax()<= profil.getSalaireMax() ) {
            points+=3;
        }

        //Experience
        //Sommena ny experience nananana
        int anneeCvExp = 0;
        for (int i = 0; i < cv.getExperiences().size();i++) {
            Period period = Period.between(cv.getExperiences().get(i).getDateDebut(), cv.getExperiences().get(i).getDateFin());             
            anneeCvExp += period.getYears();
        }
        if (anneeCvExp >= profil.getAnneeExp() ) {
            points+=7;
        }

        MoyenneCv mCv = new MoyenneCv();
        mCv.setMoyenne(points);
        mCv.setCv(cv);

        return mCv;
        
    }
}

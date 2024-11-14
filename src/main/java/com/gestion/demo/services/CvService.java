package com.gestion.demo.services;

import java.time.LocalDate;
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
import com.gestion.demo.model.Simple.Diplome;
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
        // Mbola tsy mety
        double points = 0;
        if (profil.getAgeMin() <= cv.calculerAge() && cv.calculerAge() <= profil.getAgeMax() ) {
            points+=3;
        }
        for (int i = 0; i < profil.getDiplomes().size(); i++) {
            ProfilDiplome profilDiplome = profil.getDiplomes().get(i);
            for (int j = 0; j < cv.getDiplomes().size(); j++) {
                CvDiplome cvDiplome = cv.getDiplomes().get(j);
                if (profilDiplome.getDiplome().getNiveau() == cvDiplome.getDiplome().getNiveau()) {
                    points+=2;        
                }
            }
        }
        MoyenneCv mCv = new MoyenneCv();
        mCv.setMoyenne(points);
        mCv.setCv(cv);

        return mCv;
        
    }
}

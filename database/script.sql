CREATE DATABASE gestion_rh;
\c gestion_rh;

CREATE TABLE utilisateur (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    email VARCHAR(100),
    mdp VARCHAR(255)
);

CREATE TABLE poste (
    id SERIAL PRIMARY KEY,
    designation VARCHAR(100),
    occupied BOOLEAN DEFAULT FALSE
);

CREATE TABLE diplome (
    id SERIAL PRIMARY KEY,
    designation VARCHAR(100),
    niveau INT
);

CREATE TABLE filiere (
    id SERIAL PRIMARY KEY,
    designation VARCHAR(100)
);

CREATE TABLE langue (
    id SERIAL PRIMARY KEY,
    designation VARCHAR(100)
);

CREATE TABLE sexe (
    id SERIAL PRIMARY KEY,
    designation VARCHAR(50)
);

CREATE TABLE domaine (
    id SERIAL PRIMARY KEY,
    designation VARCHAR(100)
);

CREATE TABLE profil (
    id SERIAL PRIMARY KEY,
    designation VARCHAR(100),
    age_min INT,
    age_max INT,
    annee_exp INT,
    salaire_min DECIMAL,
    salaire_max DECIMAL,
    id_poste INT,
    id_domaine INT,
    id_sexe INT,
    FOREIGN KEY (id_poste) REFERENCES poste(id),
    FOREIGN KEY (id_domaine) REFERENCES domaine(id),
    FOREIGN KEY (id_sexe) REFERENCES sexe(id)
);

CREATE TABLE profil_diplome (
    id_profil INT,
    id_diplome INT,
    id_filiere INT,
    FOREIGN KEY (id_profil) REFERENCES profil(id),
    FOREIGN KEY (id_diplome) REFERENCES diplome(id),
    FOREIGN KEY (id_filiere) REFERENCES filiere(id)
);

CREATE TABLE profil_langue (
    id_profil INT,
    id_langue INT,
    FOREIGN KEY (id_profil) REFERENCES profil(id),
    FOREIGN KEY (id_langue) REFERENCES langue(id)
);

CREATE TABLE employe (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    email VARCHAR(100),
    date_naissance DATE,
    id_sexe INT,
    id_cv INT,
    id_poste INT,
    FOREIGN KEY (id_sexe) REFERENCES sexe(id),
    FOREIGN KEY (id_cv) REFERENCES cv(id),
    FOREIGN KEY (id_poste) REFERENCES poste(id)
);



CREATE TABLE annonce (
    id SERIAL PRIMARY KEY,
    date_annonce DATE,
    id_profil INT,
    FOREIGN KEY(id_profil) REFERENCES profil(id)
);

CREATE TABLE cv (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    date_naissance DATE,
    annee_exp INT,
    salaire_min DECIMAL,
    salaire_max DECIMAL,
    id_utilisateur INT,
    id_annonce INT,
    id_sexe INT,
    etat INT DEFAULT 1, --0 pour oui et 1 pour non
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateur(id),
    FOREIGN KEY (id_annonce) REFERENCES annonce(id),
    FOREIGN KEY (id_sexe) REFERENCES sexe(id)
);

CREATE TABLE cv_langue (
    id_cv INT,
    id_langue INT,
    FOREIGN KEY (id_cv) REFERENCES cv(id),
    FOREIGN KEY (id_langue) REFERENCES langue(id)
);

CREATE TABLE cv_diplome (
    id_cv INT,
    id_diplome INT,
    id_filiere INT,
    etablissement VARCHAR(200),
    FOREIGN KEY (id_cv) REFERENCES cv(id),
    FOREIGN KEY (id_diplome) REFERENCES diplome(id),
    FOREIGN KEY (id_filiere) REFERENCES filiere(id)
);

CREATE TABLE cv_experience (
    id_cv INT,
    id_domaine INT,
    date_debut DATE,
    date_fin DATE,
    poste_occupe VARCHAR(100),
    entreprise VARCHAR(100),
    FOREIGN KEY (id_cv) REFERENCES cv(id),
    FOREIGN KEY (id_domaine) REFERENCES domaine(id)
);

CREATE TABLE moyenne_cv(
    id_cv INT,
    moyenne DECIMAL,
    FOREIGN KEY (id_cv) REFERENCES cv(id)
);

CREATE TABLE type_contrat (
    id SERIAL PRIMARY KEY,
    type_contrat VARCHAR(50)
);

CREATE TABLE test(
    id SERIAL PRIMARY KEY,
    id_cv INT,
    note DECIMAL,
    FOREIGN KEY (id_cv) REFERENCES cv(id)
);

CREATE TABLE entretien(
    id SERIAL PRIMARY KEY,
    id_cv INT,
    note DECIMAL,
    pretention_salariale DECIMAL,
    FOREIGN KEY (id_cv) REFERENCES cv(id)
);

CREATE TABLE contrat (
    id SERIAL PRIMARY KEY,
    date_debut DATE,
    date_fin DATE,
    date_rupture DATE,
    salaire DECIMAL,
    duree_preavis INT,
    preavis DECIMAL,
    statut INT,
    id_employe INT,
    id_type_contrat INT,
    nb_heure_jour INT,
    nb_jour_semaine INT,
    nb_conge_annuel INT,
    FOREIGN KEY (id_employe) REFERENCES employe(id),
    FOREIGN KEY (id_type_contrat) REFERENCES type_contrat(id)
);


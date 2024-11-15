CREATE DATABASE gestion_rh;
\c gestion_rh;
create table utilisateur(
    id int primary key,
    nom varchar,
    email --(verification mail valide),
    mdp varchar
);

create table poste(
    id int primary key auto_increment
    designation varchar
    occupied int 
);

create table diplome(
    id int primary key auto_increment
    designation varchar
    niveau int
);

create table filiere(
    id int primary key auto_increment
    designation varchar
);

create table langue(
    id int primary key auto_increment
    designation varchar
);

create table sexe(
    id int primary key auto_increment
    designation varchar
);

create table domaine(
    id int primary key auto_increment
    designation varchar
);

create table profil(
    id int primary key auto_increment
    designation varchar
    id_poste int fk
    id_domaine int fk
    id_sexe int fk
    age_min int fk
    age_max int fk
    exp_min int fk
    exp_max int fk
    id_diplome int fk
    id_filiere int fk
    salaire_min decimal
    salaire_max decimal
);

create table profil_langue(
    id_profil int fk
    id_langue int fk
);

create table annonce(
    id int primary key auto_increment
    date_annonce date
    id_profil int fk
);

create table cv(
    id int primary key auto_increment
    id_utilisateur int fk
    id_annonce int fk
    nom varchar
    prenom varchar
    date_naissance date
    id_sexe int fk
    annee_exp int fk
    salaire_min decimal
    salaire_max decimal
);

create table cv_langue(
    id_cv int fk
    id_langue int fk
);

create table cv_diplome(
    id_cv int fk
    id_diplome int fk
    id_filiere int fk
    etablissement varchar
);

create table cv_experience(
    id_cv int fk
    id_domaine int fk
    date_debut date 
    date_fin date
    poste_occupe varchar
    entreprise varchar
);

create table type_contrat(
    id int primary key auto_increment
    type_contrat varchar
);

create table contrat(
    id int primary key auto_increment
    id_employe int fk
    id_type_contrat int fk
    date_debut date
    date_fin date
    date_rupture date
    salaire decimal
    duree_preavis int--en jour
    preavis decimal
    statut int 
);

create table employe(
    id int primary key auto_increment
    nom varchar
    email varchar
    date_naissance date 
    id_sexe int fk
    id_cv int fk
    id_contrat int fk
);

DELETE FROM cv;
DELETE FROM cv_langue;
DELETE FROM cv_diplome;
DELETE FROM cv_experience;



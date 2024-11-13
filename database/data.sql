insert into poste(designation) values
    ('Manager'),
    ('Chef de projet IT'),
    ('Comptable'),
    ('Data analyst'),
    ('Receptionniste');



insert into annonce(date_annonce,id_profil) values
                    ('2024-02-02',1);

insert into diplome (designation, niveau) values
    ('CEPE',0),
    ('BEPC',1),
    ('BAC',2),
    ('Licence',3),
    ('Master 1',4),
    ('Master 2',5),
    ('Doctorat',6);

insert into filiere (designation) values 
    ('Comptabilité'),
    ('Informatique'),
    ('Communication'),
    ('Gestion'),
    ('Mathematiques'),
    ('Economie');

insert into langue (designation) values
    ('Français'),
    ('Anglais'),
    ('Mandarin'),
    ('Italien'),
    ('Espagnol'),
    ('Malagasy');

insert into sexe (designation) values
    ('Homme'),
    ('Femme'),
    ('Mixte');

insert into domaine (designation) values
    ('IT'),
    ('Finance'),
    ('Communication');

insert into type_contrat (type_contrat) values
    ('CDE'),
    ('CDD'),
    ('CDI');

/* Donnees profil */
insert into profil (designation, age_min, age_max, annee_exp, salaire_min, salaire_max, id_poste, id_domaine, id_sexe)
values 
('Manager Junior', 25, 35, 2, 2000.00, 3500.00, 2, 1, 1),  -- Profil avec un poste de Manager, Domaine IT, Homme
('Chef de projet IT Senior', 30, 45, 5, 4500.00, 7000.00, 2, 1, 2), -- Profil Chef de projet IT, Domaine IT, Femme
('Comptable Junior', 22, 30, 1, 1500.00, 2500.00, 3, 2, 1),  -- Profil avec un poste de Comptable, Domaine Finance, Homme
('Data Analyst', 24, 35, 3, 3000.00, 5000.00, 4, 1, 2),  -- Profil Data Analyst, Domaine IT, Femme
('Receptionniste', 20, 30, 0, 1000.00, 1800.00, 5, 3, 3); 

-- Liens entre profil et diplômes
insert into profil_diplome (id_profil, id_diplome, id_filiere)
values
(1, 5, 2),  -- Manager Junior, Master 2, Filière Informatique
(2, 6, 2),  -- Chef de projet IT Senior, Doctorat, Filière Informatique
(3, 3, 1),  -- Comptable Junior, Bac, Filière Comptabilité
(4, 5, 2),  -- Data Analyst, Master 1, Filière Informatique
(5, 2, 3);  -- Receptionniste, BEPC, Filière Communication

insert into profil_langue (id_profil, id_langue)
values
(1, 1),  -- Manager Junior, Langue: Français
(2, 2),  -- Chef de projet IT Senior, Langue: Anglais
(3, 1),  -- Comptable Junior, Langue: Français
(4, 2),  -- Data Analyst, Langue: Anglais
(5, 3);  -- Receptionniste, Langue: Mandarin

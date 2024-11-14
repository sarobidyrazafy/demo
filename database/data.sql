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

/* Chat Bot */
INSERT INTO question (id, question) VALUES
    (1, 'Est-ce que ce poste paye bien ?'),
    (2, 'Y a-t-il des opportunités de promotion pour ce poste ?'),
    (3, 'Quelles sont les conditions de travail pour ce poste ?'),
    (4, 'Est-ce que ce poste permet de travailler à distance ?'),
    (5, 'Quelles compétences sont nécessaires pour réussir dans ce poste ?');

-- Réponses pour Manager
INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (1, 1, 1, 'Le poste de Manager offre une rémunération compétitive, et elle peut évoluer en fonction des performances et de l''ancienneté.'),
    (2, 2, 1, 'Oui, il existe de réelles opportunités de promotion, surtout au sein des grandes équipes.'),
    (3, 3, 1, 'Les conditions de travail sont dynamiques avec des responsabilités variées, mais elles offrent également beaucoup de flexibilité.'),
    (4, 4, 1, 'Le travail à distance est envisageable, mais une présence régulière est souvent requise pour superviser les équipes.'),
    (5, 5, 1, 'Pour réussir dans ce poste, il est important de maîtriser la gestion d''équipe, la planification stratégique et d''avoir d''excellentes compétences en communication.');

-- Réponses pour Chef de projet IT
INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (6, 1, 2, 'Ce poste est bien rémunéré, surtout pour des projets de grande envergure.'),
    (7, 2, 2, 'Il y a de nombreuses opportunités de promotion, notamment vers des rôles de direction IT.'),
    (8, 3, 2, 'Les conditions de travail peuvent être intenses, mais nous fournissons tout le soutien nécessaire pour gérer des projets complexes.'),
    (9, 4, 2, 'Le travail à distance est largement adopté dans nos équipes IT, tant que les objectifs sont atteints.'),
    (10, 5, 2, 'Les compétences techniques en gestion de projet, la maîtrise des outils comme Jira ou Git, ainsi qu''une bonne communication avec les équipes sont essentielles.');

-- Réponses pour Comptable
INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (11, 1, 3, 'Le poste de Comptable offre une rémunération stable, avec des augmentations régulières basées sur les performances.'),
    (12, 2, 3, 'Oui, il est possible d''évoluer vers des rôles tels que Chef Comptable ou Contrôleur Financier.'),
    (13, 3, 3, 'Les conditions de travail sont structurées, avec des horaires réguliers et des échéances fixes.'),
    (14, 4, 3, 'Le travail à distance est possible, surtout pour les tâches de clôture comptable et d''analyse financière.'),
    (15, 5, 3, 'Une excellente maîtrise des logiciels comptables, une grande rigueur et une connaissance approfondie des normes comptables sont indispensables.');

-- Réponses pour Data Analyst
INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (16, 1, 4, 'Le poste de Data Analyst offre une rémunération compétitive, surtout dans les secteurs où la demande est forte.'),
    (17, 2, 4, 'Il existe des opportunités de promotion vers des postes comme Data Scientist ou Responsable des Analyses.'),
    (18, 3, 4, 'Les conditions de travail sont flexibles avec des deadlines serrées, mais nous encourageons un bon équilibre travail-vie privée.'),
    (19, 4, 4, 'Le travail à distance est très fréquent dans ce rôle, avec des outils de collaboration en ligne bien établis.'),
    (20, 5, 4, 'Pour réussir, il faut de solides compétences en analyse des données, une connaissance approfondie des outils comme Python, SQL, et des compétences en visualisation de données.');

-- Réponses pour Réceptionniste
INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (21, 1, 5, 'Le poste de Réceptionniste est correctement rémunéré, avec des augmentations basées sur l''ancienneté et la performance.'),
    (22, 2, 5, 'Il y a des opportunités de promotion vers des rôles administratifs plus élevés, comme Assistant de direction.'),
    (23, 3, 5, 'Les conditions de travail sont agréables avec des horaires fixes et un environnement de travail convivial.'),
    (24, 4, 5, 'Le travail à distance n''est généralement pas possible pour ce poste, en raison de la nature de l''accueil physique des clients.'),
    (25, 5, 5, 'Pour réussir, il est important d''être accueillant, organisé et de maîtriser la gestion des appels et des rendez-vous.');
/* Deuxieme serie */
INSERT INTO question (id, question) VALUES
    (6, 'Quelle est l''atmosphère de travail dans l''équipe ?'),
    (7, 'Le poste offre-t-il une formation continue ?'),
    (8, 'Est-ce que le poste propose des avantages sociaux intéressants ?'),
    (9, 'Y a-t-il des déplacements fréquents pour ce poste ?'),
    (10, 'Quelles sont les principales responsabilités de ce poste ?');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (26, 6, 1, 'L''équipe est collaborative et dynamique, avec une bonne communication entre les différents départements.'),
    (27, 7, 1, 'Oui, nous offrons des formations régulières pour développer les compétences en leadership et gestion de projet.'),
    (28, 8, 1, 'Oui, en plus du salaire, nous offrons des avantages comme une assurance santé, des primes et des congés payés.'),
    (29, 9, 1, 'Il peut y avoir des déplacements occasionnels pour rencontrer des clients ou des partenaires.'),
    (30, 10, 1, 'Les principales responsabilités incluent la gestion de l''équipe, la prise de décisions stratégiques et l''atteinte des objectifs.');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (31, 6, 2, 'L''équipe est orientée vers les résultats avec une forte collaboration entre les développeurs et les designers.'),
    (32, 7, 2, 'Oui, nous offrons des formations sur les nouvelles technologies et les méthodes agiles.'),
    (33, 8, 2, 'Nous offrons des avantages sociaux comme des assurances, des tickets restaurant, et des primes de performance.'),
    (34, 9, 2, 'Il y a des déplacements occasionnels pour participer à des conférences ou rencontrer des clients.'),
    (35, 10, 2, 'Les principales responsabilités incluent la gestion des projets IT, la coordination des équipes et la livraison des projets dans les délais.');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (36, 6, 3, 'L''équipe est stable, avec une bonne cohésion, et nous privilégions un environnement calme pour le travail.'),
    (37, 7, 3, 'Nous offrons des formations pour rester à jour sur les normes comptables et les logiciels financiers.'),
    (38, 8, 3, 'Oui, nous offrons une couverture sociale, des congés payés, et des primes de fin d''année.'),
    (39, 9, 3, 'Ce poste ne nécessite généralement pas de déplacements fréquents, à moins qu''il y ait des audits externes.'),
    (40, 10, 3, 'Les principales responsabilités incluent la tenue des comptes, l''analyse financière et la préparation des rapports comptables.');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (41, 6, 4, 'L''équipe est composée de passionnés de données, avec une ambiance axée sur la collaboration et l''analyse approfondie.'),
    (42, 7, 4, 'Oui, nous proposons des formations sur les nouvelles technologies, comme les outils de machine learning et les logiciels de visualisation de données.'),
    (43, 8, 4, 'Nous offrons des avantages tels que des primes de performance, une couverture santé et des jours de congé supplémentaires.'),
    (44, 9, 4, 'Ce poste ne nécessite pas de déplacements fréquents, tout peut être fait à distance ou sur place.'),
    (45, 10, 4, 'Les principales responsabilités incluent l''analyse de données, la création de rapports et la présentation des résultats aux décideurs.');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (46, 6, 5, 'L''équipe est accueillante et bienveillante, avec une bonne communication entre tous les membres.'),
    (47, 7, 5, 'Nous offrons des formations pour améliorer les compétences en gestion administrative et accueil client.'),
    (48, 8, 5, 'Nous offrons une couverture santé, des congés payés et des primes basées sur la satisfaction des clients.'),
    (49, 9, 5, 'Ce poste ne nécessite pas de déplacements, car il est principalement basé à l''accueil de l''entreprise.'),
    (50, 10, 5, 'Les principales responsabilités incluent l''accueil des visiteurs, la gestion des appels et la planification des rendez-vous.');

/* Troisieme serie  */
INSERT INTO question (id, question) VALUES
    (11, 'Combien de personnes composent l''équipe de travail ?'),
    (12, 'Est-ce que ce poste permet de voyager à l''étranger ?'),
    (13, 'Quel est le principal défi de ce poste ?'),
    (14, 'Est-ce que l''entreprise propose des primes de performance ?'),
    (15, 'Quelle est la culture d''entreprise ici ?');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (51, 11, 1, 'L''équipe est composée de 10 à 15 personnes, selon les projets en cours.'),
    (52, 12, 1, 'Il peut y avoir des opportunités de voyager pour des réunions avec des clients ou des séminaires.'),
    (53, 13, 1, 'Le principal défi est de coordonner plusieurs équipes tout en atteignant les objectifs stratégiques.'),
    (54, 14, 1, 'Oui, nous offrons des primes de performance pour les managers qui atteignent ou dépassent leurs objectifs.'),
    (55, 15, 1, 'Notre culture d''entreprise repose sur l''innovation, la collaboration et le développement personnel.');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (56, 11, 2, 'L''équipe varie entre 5 à 10 personnes, selon les phases du projet.'),
    (57, 12, 2, 'Des voyages à l''étranger peuvent être nécessaires pour des conférences ou des réunions avec des partenaires.'),
    (58, 13, 2, 'Le plus grand défi est de respecter les délais tout en gérant les imprévus techniques.'),
    (59, 14, 2, 'Oui, des primes de performance sont offertes pour les projets livrés dans les délais et avec satisfaction client.'),
    (60, 15, 2, 'Notre culture d''entreprise favorise l''agilité, l''autonomie et l''apprentissage continu.');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (61, 11, 3, 'L''équipe de comptabilité est composée de 4 personnes.'),
    (62, 12, 3, 'Il n''y a pas de voyages à l''étranger pour ce poste, sauf pour des formations spécifiques.'),
    (63, 13, 3, 'Le principal défi est de garantir l''exactitude des chiffres dans des délais serrés.'),
    (64, 14, 3, 'Nous proposons des primes de performance basées sur la qualité et la rapidité des travaux financiers.'),
    (65, 15, 3, 'Notre culture est axée sur la précision, la rigueur et la collaboration entre les services.');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (66, 11, 4, 'L''équipe de Data Analysts est généralement composée de 5 personnes, avec des collaborateurs transversaux.'),
    (67, 12, 4, 'Il n''y a pas de voyages réguliers, mais des déplacements à l''étranger peuvent être nécessaires pour des conférences de données.'),
    (68, 13, 4, 'Le principal défi est d''extraire des informations exploitables à partir de vastes volumes de données.'),
    (69, 14, 4, 'Oui, les analystes reçoivent des primes en fonction de la qualité de leurs analyses et de leur impact sur les décisions.'),
    (70, 15, 4, 'Notre culture est centrée sur l''innovation et l''utilisation intelligente des données pour orienter les stratégies.');

INSERT INTO reponse (id, id_question, id_poste, reponse) VALUES
    (71, 11, 5, 'L''équipe de réception est composée de 3 personnes.'),
    (72, 12, 5, 'Ce poste ne nécessite pas de voyages à l''étranger.'),
    (73, 13, 5, 'Le principal défi est de gérer efficacement les visiteurs tout en assurant la gestion administrative.'),
    (74, 14, 5, 'Des primes de satisfaction client sont accordées aux réceptionnistes les plus performants.'),
    (75, 15, 5, 'Notre culture d''entreprise est axée sur la convivialité, l''accueil chaleureux et la satisfaction client.');


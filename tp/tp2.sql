-- 1) Créer la table formation
CREATE TABLE formation (
	idFormation INTEGER PRIMARY KEY NOT NULL,
	lastname VARCHAR(50) NOT NULL
);

-- 2) Ajouter une colonne level a la table formation
ALTER TABLE formation ADD level VARCHAR(50);

-- 3) Insérer l'ensemble de formations dans le tableau
INSERT INTO formation (
  lastname,
  level
) 
VALUES 
('INFORMATIQUE', 'B1'),
('INFORMATIQUE', 'B2'),
('INFORMATIQUE', 'B3'),
('MARKETTING ET COMMUNICATION', 'B1'),
('MARKETTING ET COMMUNICATION', 'B2'),
('MARKETTING ET COMMUNICATION', 'B3'),
('AUDIOVISUEL', 'B1'),
('AUDIOVISUEL', 'B2'),
('AUDIOVISUEL', 'B3'),
('ANIMATION', 'B1'),
('ANIMATION', 'B2'),
('ANIMATION', 'B3'),
('CREATION ET DESIGN', 'B1'),
('CREATION ET DESIGN', 'B2'),
('CREATION ET DESIGN', 'B3')
;

-- 4) Créer la table student
CREATE TABLE student (
	idStudent INTEGER PRIMARY KEY NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	firstname VARCHAR(50) NOT NULL,
	birthDate DATE NOT NULL,
	idFormation REFERENCES formation(idFormation)
);

-- 5) Insérer la liste d'étudiants
INSERT INTO student (
  firstname,
  lastname,
  birthDate,
  idFormation
) 
VALUES
('Charlotte', 'Louis', '1999-10-27', '2'),
('Frédéric-Nicolas', 'Olivier', '2000-05-01', '14'),
('Thibault', 'Hoarau', '1998-07-02', '6'),
('Catherine-Elise', 'Toussaint', '1996-08-03', '1'),
('Thérèse', 'Pires', '2001-07-02', '8'),
('Isaac', 'Le Rousseau', '2002-03-13', '13'),
('Nathalie', 'de Lenoir', '1995-02-28', '3'),
('Matthieu', 'Blot', '1996-03-25', '2'),
('Christine', 'Bourdon', '2000-05-14', '1'),
('Vincent-Sébastien', 'Prevost', '1998-05-08', '11'),
('Théophile', 'Berthelot du Da Silva', '2000-11-22', '10'),
('Agathe', 'Brun', '1999-02-03', '15'),
('Bernard', 'Charles', '2001-07-05', '3'),
('Pierre', 'Le Thibault', '1998-06-30', '5'),
('Aimé-David', 'Guichard', '1999-05-03', '4'),
('Noël', 'Lemonnier', '2000-12-01', '7'),
('Caroline', 'Le Boucher', '2002-01-04', '1'),
('Josette-Jeanne', 'Gallet', '1997-08-05', '15'),
('Raymond', 'Marchal', '2001-10-31', '8'),
('Alex-Aurore', 'Lejeune', '1999-05-03', '3')
;

-- 6) Ecrire une requête qui permet d’ajouter l’étudiante Laurent Caroline qui est née le 2000-07-16 et qui est en B2 informatique à la table student
INSERT INTO student (
  firstname,
  lastname,
  birthDate,
  idFormation
) 
VALUES 
(
  'Laurent', 
  'Caroline', 
  '2000-07-16', 
  '2'
);

-- 7) Créer la table teacher
CREATE TABLE teacher (
	idTeacher INTEGER PRIMARY KEY NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	firstname VARCHAR(50) NOT NULL,
	birthDate DATE NOT NULL
);

-- 8) Insérer la liste des enseignants qui se trouve dans le fichier liste_enseignants.txt
INSERT INTO teacher (
  firstname,
  lastname,
  birthDate
) 
VALUES
('Honoré', 'Delahaye', '1990-10-02'),
('Tristan', 'Peltier', '1985-06-02'),
('Danielle', 'Texier-Boulay', '1982-12-01'),
('Jérôme', 'Rousseau', '1992-11-30'),
('Thierry', 'Morvan', '1971-11-02'),
('Jérôme', 'Perez-Aubry', '1972-11-16'),
('Sébastien', 'Merle', '1964-12-03'),
('Michelle', 'Bazin', '1989-01-12'),
('Michèle-Suzanne', 'Millet', '1979-08-20'),
('Camille', 'Le Blin', '1990-03-09')
;

-- 9) Créer la table education
CREATE TABLE education (
  idFormation REFERENCES formation(idFormation),
  idTeacher REFERENCES teacher(idTeacher)
);

-- 10) Remplissez la table education 
INSERT INTO education (
  idFormation,
  idTeacher
) 
VALUES
('4', '3'),
('5', '3'),
('6', '3'),
('7', '4'),
('8', '4'),
('9', '4'),
('10', '5'),
('11', '5'),
('12', '5'),
('13', '6'),
('14', '6'),
('15', '6'),
('1', '7'),
('2', '7'),
('3', '7'),
('1', '1'),
('2', '1'),
('3', '2'),
('5', '8'),
('6', '8'),
('10', '9'),
('12', '9'),
('7', '10'),
('8', '10')
;

-- =========== Exo 2 =============

-- 1) Afficher teacher
SELECT * FROM teacher;

-- 2)  Ecrire une requête qui permet de modifier la date de naissance de l’étudiant Blot Matthieu, la date de naissance correcte est « 1997-03- 25 »
UPDATE student
SET birthDate = '1997-03- 25'
WHERE "idStudent" = 8;

-- 3) L’enseignant Merle n’enseigne plus les b1 info, faites la mise à jour nécessaire dans la table enseignements
DELETE FROM education
WHERE idFormation = '1' AND idTeacher = '7';

-- 4) L’école décide de supprimer tous les niveaux de la formation Animation faites des requêtes pour mettre à jour les tables concernées.
DELETE FROM formation
WHERE lastname = 'ANIMATION';

DELETE FROM education
WHERE idFormation = '10' OR idFormation = '11' OR idFormation = '12';

DELETE FROM student
WHERE idFormation = '10' OR idFormation = '11' OR idFormation = '12';

-- 5) Ecrire une requête qui permet d’afficher tous les étudiants qui ont un nom qui contient la lettre ‘b’
SELECT * FROM student
WHERE lastname LIKE '%b%' OR lastname LIKE '%b';

-- 6) Ecrire une requête qui permet d’afficher les 3 plus jeunes étudiants.
SELECT * FROM student
ORDER BY birthDate DESC
LIMIT 3;

-- 7) Ecrire une requête qui permet d’afficher tous les étudiants qui sont en b1 et en b2.
SELECT * FROM student
WHERE idFormation = '1' 
OR idFormation = '2' 
OR idFormation = '4' 
OR idFormation = '5'
OR idFormation = '7'
OR idFormation = '8'
OR idFormation = '13'
OR idFormation = '14';

-- 8) Ecrire une requête qui permet d’afficher (avec un alias phrase) des phrases sous la forme suivante :
-- Mr (nom enseignant) enseigne la formation (nom de formation) ou se trouve l’étudiant (nom étudiant).
SELECT 'Mr ' || teacher.lastname || 'enseigne la formation ' || formation.lastname || " ou se trouve l'étudiant " || student.lastname AS phrase
FROM teacher
INNER JOIN education ON teacher.idTeacher = education.idTeacher
INNER JOIN formation ON education.idFormation = formation.idFormation
INNER JOIN student ON formation.idFormation = student.idFormation;

-- 9) Ecrire une requête qui permet d’afficher le nombre de formations au niveau B3, avec un alias nbFormationsB3
SELECT COUNT(*) AS nbFormationsB3 FROM formation WHERE level = 'B3';

-- 10) Ecrire une requête qui permet d’afficher le nom et prénom et l’Age de chaque étudiant.
SELECT lastname, firstname, (2021 - birthDate) AS Age FROM student;

-- 11) Ecrire une requête qui permet d’afficher en plus du lastname et firstname de l’étudiant une nouvelle case ou on indique s’il est concerné par le stage ou pas, la case est nommée stage.
SELECT lastname, firstname,
	CASE 
		WHEN idStudent = '3' THEN 'Oui'
		WHEN idStudent = '6' THEN 'Oui'
		WHEN idStudent = '9' THEN 'Oui'
		WHEN idStudent = '15' THEN 'Oui'
		ELSE 'Non'
	END stage
FROM student;

-- 12) En utilisant une sous-requête, Supprimez tous les étudiants qui sont en ‘Audiovisuel’.
DELETE
FROM student
WHERE idFormation IN (
	SELECT idFormation
	FROM student
	WHERE idFormation = '7'
	OR idFormation = '8'
	OR idFormation = '9'
)
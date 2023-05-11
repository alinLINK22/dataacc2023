CREATE SCHEMA `universitate2023` DEFAULT CHARACTER SET utf8 ;
CREATE TABLE `universitate2023`.`utilizatori` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nume` VARCHAR(45) NOT NULL,
  `prenume` VARCHAR(45) NOT NULL,
  `email` VARCHAR(145) NULL,
  `telefon` CHAR(10) NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE SCHEMA `magazin` DEFAULT CHARACTER SET utf8 ;
CREATE TABLE `magazin`.`produse` (
  `idprodus` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `numep` VARCHAR(45) NOT NULL,
  `cantitate` VARCHAR(45) NOT NULL,
  `idfirma` VARCHAR(45) NOT NULL,
  `firma` VARCHAR(45) NOT NULL,
  `adresafirma` VARCHAR(545) NOT NULL,
  `modelp` VARCHAR(45) NOT NULL,
  `stocp` VARCHAR(45) NOT NULL,
  `pret` DECIMAL(7,2) NOT NULL,
  `categoriep` VARCHAR(45) NOT NULL,
  `descrierep` VARCHAR(545) NOT NULL,
  `data_addp` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idprodus`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE SCHEMA `facultate` DEFAULT CHARACTER SET utf8 ;

SELECT * FROM `student` WHERE data_nastere >= "1996-01-01"

SELECT * FROM `student` WHERE year(data_nastere) >= "1996";

SELECT * FROM `profesor` WHERE grad_didactic IN ('I','II');

SELECT * FROM `cursuri` WHERE an =2 AND semestru =2;

SELECT * FROM `student` WHERE prenume LIKE "ion%";

SELECT * FROM `student` WHERE DATE_FORMAT(data_nastere,'%m-%d') ='09-21';

SELECT *, bursa*12 AS 'bursa anuala' FROM `student` WHERE bursa*12 >= 4000;/ SELECT *, bursa*12 AS bursa_anuala FROM `student` WHERE bursa*12 >= 4000;

SELECT * FROM `student` ORDER BY nume ASC;/SELECT * FROM `student` ORDER BY nume DESC;

SELECT * FROM `student` ORDER BY nume ASC, prenume ASC;

SELECT * FROM `student` ORDER BY rand();

SELECT * FROM `student` ORDER BY data_nastere DESC LIMIT 5;/SELECT * FROM `student` ORDER BY data_nastere DESC LIMIT 5, 5;

SELECT c.id_curs,c.titlu_curs,n.valoare FROM `cursuri` AS c NATURAL JOIN note AS n;

SELECT * FROM `cursuri` AS c INNER JOIN note as n ON c.id_curs=n.id_curs;

SELECT * FROM `profesor` LEFT JOIN didactic ON profesor.id = didactic.id_prof WHERE profesor.id =6;

SELECT profesor.nume , profesor.prenume, cursuri.titlu_curs, note.valoare FROM `profesor` LEFT JOIN didactic ON profesor.id = didactic.id_prof INNER JOIN cursuri on cursuri.id_curs= didactic.id_curs LEFT JOIN note ON cursuri.id_curs = note.id_curs WHERE profesor.id =6 AND note.valoare IS NOT NULL;

SELECT * FROM `profesor` AS p LEFT JOIN didactic as d ON p.id = d.id_prof WHERE d.id_prof is NULL;

SELECT s.nume,s.prenume FROM `note` AS n INNER JOIN student AS s ON n.id_student = s.id GROUP BY n.id_student;

SELECT s.nume,s.prenume FROM `note` AS n INNER JOIN student AS s ON n.id_student = s.id WHERE s.id=111;

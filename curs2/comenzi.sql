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

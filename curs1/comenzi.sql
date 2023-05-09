CREATE TABLE `mydb2023`.`produse` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
     `nume_produs` VARCHAR(100) NOT NULL , 
     `descriere` TEXT NULL , 
     `pret` DECIMAL(7,2) NOT NULL , 
     `stoc` INT NOT NULL DEFAULT '0' , 
     `producator` VARCHAR(250) NOT NULL , 
     `user_at` INT NOT NULL ,
      `data_adaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
      PRIMARY KEY (`id`)) ENGINE = InnoDB;
      INSERT INTO `produse` (`id`, `nume_produs`, `descriere`, `pret`, `stoc`, `producator`, `user_at`, `data_adaugare`) 
      VALUES (NULL, 'Pix', 'Pix albastru de grosime 0.7', '22.5', '10', 'bic', '1', current_timestamp());
      CREATE USER 'mydb2023'@'localhost' 
      IDENTIFIED VIA mysql_native_password USING '***';
      GRANT SELECT, INSERT, UPDATE, DELETE, FILE ON *.* TO 'mydb2023'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
      CREATE TABLE `mydb2024`.`jsusers` (`id` TEXT NOT NULL , `nume` VARCHAR(20) NOT NULL , `prenume` VARCHAR(20) NOT NULL , `email` VARCHAR(50) NOT NULL , `telefon` VARCHAR(20) NOT NULL , `datanastere` DATE NOT NULL , `dataadaugare` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`id`)) ENGINE = InnoDB;

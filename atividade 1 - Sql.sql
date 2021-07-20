-- MySQL Script generated by MySQL Workbench
-- Tue Jul 20 17:53:32 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ecommerce
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ecommerce` DEFAULT CHARACTER SET utf8 ;
USE `ecommerce` ;

-- -----------------------------------------------------
-- Table `ecommerce`.`loja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`loja` (
  `idloja` INT NOT NULL AUTO_INCREMENT,
  `shorts` FLOAT NOT NULL,
  `camiseta` FLOAT NOT NULL,
  `bone` FLOAT NOT NULL,
  `saia` FLOAT NOT NULL,
  `vestido` FLOAT NOT NULL,
  `blusa` FLOAT NOT NULL,
  PRIMARY KEY (`idloja`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;



SELECT * FROM misericordia.rh_help where salario < 2.000;

SELECT * FROM misericordia.rh_help where salario > 2.000


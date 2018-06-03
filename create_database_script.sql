-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema eits_db
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema eits_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `eits_db` DEFAULT CHARACTER SET latin1 ;
USE `eits_db` ;

-- -----------------------------------------------------
-- Table `eits_db`.`caseworkers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eits_db`.`caseworkers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `fname` VARCHAR(30) NOT NULL,
  `lname` VARCHAR(30) NOT NULL,
  `age` INT(11) NOT NULL,
  `password` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'Case-Worker Table for EITS';


-- -----------------------------------------------------
-- Table `eits_db`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eits_db`.`customers` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `fname` VARCHAR(30) NOT NULL,
  `lname` VARCHAR(30) NOT NULL,
  `age` INT(11) NOT NULL,
  `password` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1
COMMENT = 'Customer Table For EITS';


-- -----------------------------------------------------
-- Table `eits_db`.`customers_has_caseworkers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eits_db`.`customers_has_caseworkers` (
  `customers_id` INT(11) NOT NULL,
  `caseworkers_id` INT(11) NOT NULL,
  `joining_date` DATE NOT NULL,
  PRIMARY KEY (`customers_id`, `caseworkers_id`),
  INDEX `fk_customers_has_caseworkers_caseworkers1_idx` (`caseworkers_id` ASC),
  INDEX `fk_customers_has_caseworkers_customers_idx` (`customers_id` ASC),
  CONSTRAINT `fk_customers_has_caseworkers_customers`
    FOREIGN KEY (`customers_id`)
    REFERENCES `eits_db`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_caseworkers_caseworkers1`
    FOREIGN KEY (`caseworkers_id`)
    REFERENCES `eits_db`.`caseworkers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

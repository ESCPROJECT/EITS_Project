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
-- Table `eits_db`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eits_db`.`admin` (
  `admin_id` INT(11) NOT NULL,
  `fname` VARCHAR(30) NOT NULL,
  `lname` VARCHAR(30) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


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
  `email` INT(30) NOT NULL,
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
  CONSTRAINT `fk_customers_has_caseworkers_caseworkers1`
    FOREIGN KEY (`caseworkers_id`)
    REFERENCES `eits_db`.`caseworkers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_caseworkers_customers`
    FOREIGN KEY (`customers_id`)
    REFERENCES `eits_db`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `eits_db`.`Courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eits_db`.`Courses` (
  `idCourses` VARCHAR(15) NOT NULL,
  `CoursesTitle` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCourses`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eits_db`.`Units`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eits_db`.`Units` (
  `idUnits` VARCHAR(15) NOT NULL,
  `UnitsTitle` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUnits`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eits_db`.`Courses_has_Units`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eits_db`.`Courses_has_Units` (
  `Courses_idCourses` VARCHAR(15) NOT NULL,
  `Units_idUnits` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`Courses_idCourses`, `Units_idUnits`),
  INDEX `fk_Courses_has_Units_Units1_idx` (`Units_idUnits` ASC),
  INDEX `fk_Courses_has_Units_Courses1_idx` (`Courses_idCourses` ASC),
  CONSTRAINT `fk_Courses_has_Units_Courses1`
    FOREIGN KEY (`Courses_idCourses`)
    REFERENCES `eits_db`.`Courses` (`idCourses`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Courses_has_Units_Units1`
    FOREIGN KEY (`Units_idUnits`)
    REFERENCES `eits_db`.`Units` (`idUnits`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `eits_db`.`Enroll`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eits_db`.`Enroll` (
  `customers_id` INT(11) NOT NULL,
  `Courses_idCourses` VARCHAR(15) NOT NULL,
  `Date` DATE NOT NULL,
  PRIMARY KEY (`customers_id`, `Courses_idCourses`),
  INDEX `fk_customers_has_Courses_Courses1_idx` (`Courses_idCourses` ASC),
  INDEX `fk_customers_has_Courses_customers1_idx` (`customers_id` ASC),
  CONSTRAINT `fk_customers_has_Courses_customers1`
    FOREIGN KEY (`customers_id`)
    REFERENCES `eits_db`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_Courses_Courses1`
    FOREIGN KEY (`Courses_idCourses`)
    REFERENCES `eits_db`.`Courses` (`idCourses`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

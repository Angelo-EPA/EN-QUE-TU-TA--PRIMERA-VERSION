-- MySQL Script generated by MySQL Workbench
-- Thu Mar 16 12:40:49 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cloudcode-db
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `cloudcode-db` ;

-- -----------------------------------------------------
-- Schema cloudcode-db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cloudcode-db` DEFAULT CHARACTER SET utf8mb4 ;
USE `cloudcode-db` ;

-- -----------------------------------------------------
-- Table `cloudcode-db`.`business`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cloudcode-db`.`business` (
  `business_id` INT(11) NOT NULL AUTO_INCREMENT,
  `business_email` VARCHAR(150) NOT NULL,
  `business_name` VARCHAR(200) NOT NULL,
  `business_phone` VARCHAR(20) NULL DEFAULT NULL,
  `business_adress` TEXT NOT NULL,
  `business_type` VARCHAR(200) NULL DEFAULT NULL,
  `business_area` VARCHAR(200) NULL DEFAULT NULL,
  `business_description` TEXT NULL DEFAULT NULL,
  `business_logo` LONGBLOB NULL DEFAULT NULL,
  `business_website` TEXT NULL DEFAULT NULL,
  `business_facebook` TEXT NULL DEFAULT NULL,
  `business_instagram` TEXT NULL DEFAULT NULL,
  `business_whatsapp` TEXT NULL DEFAULT NULL,
  `business_twitter` TEXT NULL DEFAULT NULL,
  `business_youtube` TEXT NULL DEFAULT NULL,
  `business_date_creation` DATE NOT NULL,
  `business_owner` VARCHAR(200) NOT NULL,
  `business_token` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`business_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `cloudcode-db`.`clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cloudcode-db`.`clients` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(150) NOT NULL,
  `uname` VARCHAR(150) NOT NULL,
  `ulastname` VARCHAR(150) NULL DEFAULT NULL,
  `phone` VARCHAR(30) NULL DEFAULT NULL,
  `id_doc` BIGINT(20) NULL DEFAULT NULL,
  `birthday` DATE NULL DEFAULT NULL,
  `nacionality` VARCHAR(150) NULL DEFAULT NULL,
  `status` VARCHAR(50) NULL DEFAULT NULL,
  `logo` LONGBLOB NULL DEFAULT NULL,
  `passcode` TEXT NOT NULL,
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  `verification` INT(1) NOT NULL DEFAULT 0,
  `token` VARCHAR(20) NULL DEFAULT '',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `cloudcode-db`.`follows`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cloudcode-db`.`follows` (
  `id_follow` INT(11) NOT NULL AUTO_INCREMENT,
  `followed` VARCHAR(150) NOT NULL,
  `follower` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id_follow`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `cloudcode-db`.`readed`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cloudcode-db`.`readed` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `read_usermail` VARCHAR(70) NOT NULL,
  `qrcode_readed` INT(11) NOT NULL DEFAULT 0,
  `website_readed` INT(11) NOT NULL DEFAULT 0,
  `facebook_readed` INT(11) NOT NULL DEFAULT 0,
  `instagram_readed` INT(11) NOT NULL DEFAULT 0,
  `whatsapp_readed` INT(11) NOT NULL DEFAULT 0,
  `twitter_readed` INT(11) NOT NULL DEFAULT 0,
  `youtube_readed` INT(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 43
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `cloudcode-db`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cloudcode-db`.`users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(30) NOT NULL,
  `email` VARCHAR(70) NOT NULL,
  `phone` VARCHAR(30) NULL DEFAULT '',
  `adress` TEXT NULL DEFAULT NULL,
  `businesstype` VARCHAR(200) NULL DEFAULT NULL,
  `businessarea` VARCHAR(200) NULL DEFAULT NULL,
  `logo` LONGBLOB NULL DEFAULT NULL,
  `passcode` TEXT NOT NULL,
  `website` TEXT NULL DEFAULT NULL,
  `facebook` TEXT NULL DEFAULT NULL,
  `instagram` TEXT NULL DEFAULT NULL,
  `whatsapp` TEXT NULL DEFAULT NULL,
  `twitter` TEXT NULL DEFAULT NULL,
  `youtube` TEXT NULL DEFAULT NULL,
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  `verification` INT(1) NOT NULL DEFAULT 0,
  `token` VARCHAR(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 58
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `cloudcode-db`.`users_location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cloudcode-db`.`users_location` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(150) NULL DEFAULT NULL,
  `country` VARCHAR(500) NULL DEFAULT NULL,
  `state` VARCHAR(500) NULL DEFAULT NULL,
  `city` VARCHAR(500) NULL DEFAULT NULL,
  `block` VARCHAR(500) NULL DEFAULT NULL,
  `street` VARCHAR(500) NULL DEFAULT NULL,
  `home_number` INT(11) NULL DEFAULT NULL,
  `postal` INT(8) NULL DEFAULT NULL,
  `religion` VARCHAR(150) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `cloudcode-db`.`users_medical_information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cloudcode-db`.`users_medical_information` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(150) NOT NULL,
  `gender` VARCHAR(50) NULL DEFAULT NULL,
  `blood_type` VARCHAR(4) NULL DEFAULT NULL,
  `sickness` VARCHAR(250) NULL DEFAULT NULL,
  `allergy` VARCHAR(250) NULL DEFAULT NULL,
  `sos_contact` VARCHAR(15) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `cloudcode-db`.`users_physical_features`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cloudcode-db`.`users_physical_features` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(150) NOT NULL,
  `height` DOUBLE(3,2) NULL DEFAULT NULL,
  `weight` DOUBLE(5,2) NULL DEFAULT NULL,
  `skin` VARCHAR(100) NULL DEFAULT NULL,
  `eyes` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
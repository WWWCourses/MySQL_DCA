-- Active: 1663945334496@@127.0.0.1@3306@drinks_db
CREATE DATABASE IF NOT EXISTS drinks_db;

CREATE TABLE IF NOT EXISTS drinks (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  country VARCHAR(100) NOT NULL,
  beer_servings SMALLINT UNSIGNED,
  spirit_servings SMALLINT UNSIGNED,
  wine_servings SMALLINT UNSIGNED,
  continent VARCHAR(100),
  PRIMARY KEY `pk_id`(`id`),
  INDEX (country)
) ENGINE = InnoDB;

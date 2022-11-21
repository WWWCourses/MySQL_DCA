DROP DATABASE IF EXISTS music_db;
CREATE DATABASE music_db;
USE music_db;

CREATE TABLE artist (
  artist_id SMALLINT(5) NOT NULL AUTO_INCREMENT,
  fname VARCHAR(20) DEFAULT NULL,
  lname VARCHAR(20) NOT NULL,
  PRIMARY KEY  (artist_id)
);
CREATE TABLE band (
  band_id SMALLINT(5) NOT NULL DEFAULT 0,
  name VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY  (band_id)
);
CREATE TABLE artists_bands (
  band_id SMALLINT(5) NOT NULL DEFAULT 0,
  artist_id SMALLINT(5) NOT NULL DEFAULT 0,
  PRIMARY KEY  (artist_id, band_id)
);
CREATE TABLE album (
  album_id SMALLINT(4) NOT NULL DEFAULT 0,
  artist_id SMALLINT(5) NOT NULL DEFAULT 0,
  label_id SMALLINT(5) DEFAULT NULL,
  album_name VARCHAR(128) DEFAULT NULL,
  release_date DATE,
  PRIMARY KEY  (artist_id,album_id)
);
CREATE TABLE track (
  track_id SMALLINT(3) NOT NULL DEFAULT 0,
  artist_id SMALLINT(5) NOT NULL DEFAULT 0,
  album_id SMALLINT(4) NOT NULL DEFAULT 0,
  track_name VARCHAR(128) DEFAULT NULL,
  time DECIMAL(5,2) DEFAULT NULL,
  PRIMARY KEY  (artist_id, album_id, track_id)
);
CREATE TABLE label (
  label_id SMALLINT(3) NOT NULL AUTO_INCREMENT,
  label_name VARCHAR(128),
  PRIMARY KEY  (label_id)
);

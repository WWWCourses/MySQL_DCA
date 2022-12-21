-- Active: 1663945334496@@127.0.0.1@3306@movie_db
drop database if exists song_db;
create database if not exists song_db;
use song_db;



create table song(
    song_id int(5) not null,
    song_name varchar(100) not null,
    song_length int(3),
    song_url varchar(150),
    constraint song_pk primary key (song_id)
) engine innodb;

create table artist(
    artist_id int(5) not null,
    artist_name varchar(50) not null,
    artist_nationality varchar(50),
    constraint artist_pk primary key (artist_id)
)engine innodb;

create table song_artist(
    song_artist_id int(5) not null,
    s_song_id int(5) not null,
    a_artist_id int(5) not null,
    constraint song_artist_pk primary key (song_artist_id),
    constraint song_artist_fk_song foreign key (s_song_id) references song (song_id),
    constraint song_artist_fk_artist foreign key (a_artist_id) references artist (artist_id)
)engine innodb;

create table band(
    band_id int(5) not null,
    band_name varchar(25) not null,
    constraint band_pk primary key (band_id)
) engine innodb;

create table song_band(
    song_band_id int(5) not null,
    song_song_id int(5) not null,
    b_band_id int(5) not null,
    constraint song_band_pk primary key (song_band_id),
    constraint song_band_fk_song foreign key (song_song_id) references song (song_id),
    constraint song_band_fk_band foreign key (b_band_id) references band (band_id)
)engine innodb;

create table artist_band(
    artist_band_id int(5) not null,
    band_role varchar(50),
    a_artist_id int(5) not null,
    b_band_id int(5) not null,
    constraint artist_band_pk primary key (artist_band_id),
    constraint artist_band_fk_artist foreign key (a_artist_id) references artist (artist_id),
    constraint artist_band_fk_band foreign key (b_band_id) references band (band_id)
)engine innodb;
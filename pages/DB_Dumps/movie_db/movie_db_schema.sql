-- Active: 1663945334496@@127.0.0.1@3306@movie_db
drop database if exists movie_db;
create database if not exists movie_db;
use movie_db;

create table movie(
    movie_id int(5) not null,
    movie_title varchar(50) not null,
    movie_desc varchar(150),
    movie_release_date date,
    movie_runtime int(3) check (movie_runtime > 25),
    movie_certificate varchar(4) check (movie_certificate in ('N/A','PG','12','12A','15','15A','16','18')),
    movie_rating int(1) check (movie_rating > 0 and movie_rating <= 5),
    constraint movie_pk primary key (movie_id)
)engine innodb;

create table poster(
    poster_id int(5) not null,
    poster_link varchar(200) default 'http://www.uidownload.com/files/478/82/442/error-404-page-not-found-icon.jpg',
    p_movie_id int(5) not null,
    constraint poster_pk primary key (poster_id),
    constraint poster_fk_movie foreign key (p_movie_id) references movie (movie_id)
)engine innodb;

create table trailer(
    trailer_id int(5) not null,
    trailer_length int(2),
    trailer_url varchar(150),
    t_movie_id int(5) not null,
    constraint trailer_pk primary key (trailer_id),
    constraint trailer_fk_movie foreign key (t_movie_id) references movie (movie_id)
)engine innodb;

create table studio(
    studio_id int(5) not null,
    studio_name varchar(50) not null,
    studio_address varchar(200),
    constraint studio_pk primary key (studio_id)
)engine innodb;

create table movie_studio(
    movie_studio_id int(5) not null,
    m_movie_id int(5) not null,
    s_studio_id int(5) not null,
    constraint movie_studio_pk primary key (movie_studio_id),
    constraint movie_studio_fk_movie foreign key (m_movie_id) references movie (movie_id),
    constraint movie_studio_fk_studio foreign key (s_studio_id) references studio (studio_id)
)engine innodb;

create table genre(
    genre_id int(5) not null,
    genre_type varchar(25) not null,
    genre_desc varchar(200),
    constraint genre_pk primary key (genre_id)
)engine innodb;

create table movie_genre(
    movie_genre_id int(5) not null,
    m_movie_id int(5) not null,
    g_genre_id int(5) not null,
    constraint movie_genre_pk primary key (movie_genre_id),
    constraint movie_genre_fk_movie foreign key (m_movie_id) references movie (movie_id),
    constraint movie_genre_fk_genre foreign key (g_genre_id) references genre (genre_id)
)engine innodb;

create table person(
    person_id int(5) not null,
    person_first_name varchar(50) not null,
    person_last_name varchar(50),
    person_nationality varchar(50),
    person_picture varchar (150),
    constraint person_pk primary key (person_id)
)engine innodb;

create table role(
    role_id int(5) not null,
    role_desc varchar(25) not null,
    m_movie_id int(5) not null,
    p_person_id int(5) not null,
    constraint role_pk primary key (role_id),
    constraint role_fk_movie foreign key (m_movie_id) references movie (movie_id),
    constraint role_fk_person foreign key (p_person_id) references person (person_id)
)engine innodb;

create table soundtrack(
    soundtrack_id int(5) not null,
    soundtrack_name varchar(100) not null,
    soundtrack_size int(2),
    m_movie_id int(5) not null,
    constraint soundtrack_pk primary key (soundtrack_id),
    constraint soundtrack_fk_movie foreign key (m_movie_id) references movie (movie_id)
) engine innodb;

create table song(
    song_id int(5) not null,
    song_name varchar(100) not null,
    song_length int(3),
    song_url varchar(150),
    constraint song_pk primary key (song_id)
) engine innodb;

create table soundtrack_song(
    soundtrack_song_id int(5) not null,
    soundtrack_soundtrack_id int(5) not null,
    song_song_id int(5) not null,
    constraint soundtrack_song_pk primary key (soundtrack_song_id),
    constraint soundtrack_song_fk_soundtrack foreign key (soundtrack_soundtrack_id) references soundtrack (soundtrack_id),
    constraint soundtrack_song_fk_song foreign key (song_song_id) references song (song_id)
)engine innodb;

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
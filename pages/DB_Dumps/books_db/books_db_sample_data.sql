-- Active: 1663945334496@@127.0.0.1@3306@books_store_db

ALTER TABLE authors AUTO_INCREMENT = 1;

INSERT INTO authors(fname,lname,birth_year,death_year) VALUES
    ('Kurt'   , 'Vonnegut', '1922','2007'),
    ('Douglas', 'Adams'   , '1952','2001'),
    ('Charles', 'Dodgson' , '1832','1898'),
    ('Georgi','Gospodinov',1968,NULL),
    ('Alek','Popov',1966,NULL),
    ('Georgi','Markov',1929,1978);


ALTER TABLE authors AUTO_INCREMENT = 1;

INSERT INTO books(author_id,book_name,pub_year,price) VALUES
    (1, 'The Sirens of Titan', 1959, 23.56),
    (1, 'Mother Night', 1961, 14.25),
    (1, 'Cat\'s Cradle', 1963, 20.02),
    (1, 'God Bless You', 1965, 23.5),
    (1, 'Slaughterhouse', 1969, 43.23),
    (1, 'Breakfast of Champions', 1973, 12.34),
    (2, "The Hitchhiker's Guide to the Galaxy", 1979, 20.99),
    (2, 'The Restaurant at the End of the Universe', 1980,34.56),
    (2, 'Life', 1982, 12.90),
    (2, 'So Long', 1984, 9.89),
    (2, 'Young Zaphod Plays It Safe', 1986, 5.60),
    (2, "Dirk Gently's Holistic Detective Agency", 1987, 23.90),
    (2, 'The Long Dark Tea', 1988, 43.5),
    (2, 'Last Chance to See', 1990, 5.78),
    (2, 'Mostly Harmless', 1992, 23.5),
    (3, "Alice's Adventures in Wonderland", 1865, 120),
    (3, "Through the Looking-Glass, and What Alice Found There", 1871, 52.5),
    (3, "Rhyme? And Reason?",NULL, 125.6),
    (3, "A Tangled Tale",NULL, 23.5),
    (3, "Pillow Problems",NULL,89.9),
    (3, "La Guida di Bragia, a Ballad Opera for the Marionette Theatre",1950,42.5),
    (3, "Sylvie and Bruno",NULL, 43.5),
    (3, "Sylvie and Bruno Concluded",NULL, 50.9),
    (3, "Three Sunsets and Other Poems", 1898, 42.9),
    (3, "The Hunting of the Snark", 1876, 90.5),
    (3, "What the Tortoise Said to Achilles", 1895, 27.9),
    (3, "A Syllabus of Plane Algebraic Geometry", 1860, 21.2),
    (3, "The Fifth Book of Euclid Treated Algebraically", 1858, 89.5),
    (3, "An Elementary Treatise on Determinants, With Their Application to Simultaneous Linear Equations and Algebraic Equations",NULL, 48.99),
    (3, "Euclid and his Modern Rivals",1879, 56.3),
    (3, "Symbolic Logic Part I",NULL, 93.9),
    (3, "Symbolic Logic Part II",NULL, 25.89),
    (3, "The Alphabet Cipher",1868, 67.9),
    (3, "The Game of Logic", 1887, 142.9),
    (3, "Curiosa Mathematica I", 1888, 295.4),
    (3, "Curiosa Mathematica II", 1892, 200.9),
    (4,'Natural Novel',1999, 25.9),
    (4,'And Other Stories',2001, 18.9),
    (4,'The Physics of Sorrow',2012, 32.9),
    (4,'Time Shelter',2020, 52.9),
    (6,'The Truth That Killed',1984, 95.0),
    (6,'A Portrait of My Double',1966, 83.9)
;

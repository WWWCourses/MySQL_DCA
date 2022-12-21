use song_db;

/* song inserts */
insert into song values (0001, 'May' , 1 , 'www.youtube.com/may');
insert into song values (0002, 'Shawshank Prison', 2, 'www.youtube.com/shawshankprison');
insert into song values (0003, 'New Fish', 3, 'www.youtube.com/newfish');
insert into song values (0004, 'Rock Hammer', 3, 'www.youtube,com/rockhammer');
insert into song values (0005, 'An Inch of his life', 2, 'www.youtube.com/aninchofhislife');
insert into song values (0006, 'The Godfather Waltz', 4, 'www.youtube.com/thewaltz');
insert into song values (0007, 'I have but one heart', 3, 'www.youtube.com/ihavebutoneheart');
insert into song values (0008, 'The Pickup', 2, 'www.youtube.com/thepickup');
insert into song values (0009, 'Connies Wedding', 3, 'www.youtube.com/connieswedding');
insert into song values (0010, 'Miller Compilation', 20, 'www.youtube.com/millercompilation');
insert into song values (0011, 'Hip to be Square', 3, 'www.youtube.com/hiptobesquare');
insert into song values (0012, 'You Spin me Round', 2, 'www.youtube.com/youspinmeround');
insert into song values (0013, 'Jungle Boogie', 3, 'www.youtube.com/jungleboogie');
insert into song values (0014, 'Son of a Preacher Man', 4, 'www.youtube.com/sonofapreacherman');
insert into song values (0015, 'Girl, Youll be a Woman Soon', 3, 'www.youtube.com/youllbeawomansoon');
insert into song values (0016, 'Rock is Dead', 3, 'www.youtube.com/rockisdead');
insert into song values (0017, 'Mindfields', 5, 'www.youtube.com/mindfields');
insert into song values (0018, 'Du Hast', 4, 'www.youtube.com/duhast');
insert into song values (0019, 'Dragula', 4, 'www.youtube.com/dragula');
insert into song values (0020, 'Make it Bang', 4, 'www.youtube.com/makeitbang');
insert into song values (0021, 'I got a name', 3, 'www.youtube.com/igotaname');
insert into song values (0022, 'Are you watching closely', 3, 'www.youtube.com/areyouwatching');
insert into song values (0023, 'The light field', 2, 'www.youtube.com/thelightfield');
insert into song values (0024, 'Border Meets Sarah', 4, 'www.youtube.com/bordermeetssarah');
insert into song values (0025, 'No, not today', 5, 'www.youtube.com/nonottoday');
insert into song values (0026, 'Interstellar compilation', 72, 'https://www.youtube.com/watch?v=iBfk37Fa3H0');
insert into song values (0027, 'Bang Bang', 4, 'www.youtube.com/bangbang');
insert into song values (0028, 'Pretty Thing', 3, 'www.youtube.com/prettything');
insert into song values (0029, 'Smokestack Lightning', 4, 'www.youtube.com/smokestack');


/* artist inserts */
insert into artist values (0001, 'Thomas Newman', 'American');
insert into artist values (0002, 'Nino Rota', 'Italian');
insert into artist values (0003, 'Joe Bloggs', 'British');
insert into artist values (0004, 'Carmine Coppola', 'Italian');
insert into artist values (0005, 'Hans Zimmer', 'Germamn');
insert into artist values (0006, 'Hughie Lewis', 'American');
insert into artist values (0007, 'Edsel Dope', 'American');
insert into artist values (0008, 'Acey Slade', 'American');
insert into artist values (0009, 'Racci Shay', 'American');
insert into artist values (0010, 'Virus', 'American');
insert into artist values (0011, 'John Hurley', 'American');
insert into artist values (0012, 'Neil Diamond', 'American');
insert into artist values (0013, 'Robert Bell', 'American');
insert into artist values (0014, 'Ronald Bell', 'American');
insert into artist values (0015, 'George Brown', 'American');
insert into artist values (0016, 'Lavell Evans', 'American');
insert into artist values (0017, 'Amir Bayyan', 'American');
insert into artist values (0018, 'Marilyn Manson', 'American');
insert into artist values (0019, 'Liam Howlett', 'British');
insert into artist values (0020, 'Keith Flint', 'British');
insert into artist values (0021, 'Maxim', 'British');
insert into artist values (0022, 'Till Lindemann', 'German');
insert into artist values (0023, 'Richard Z. Kruspe', 'German');
insert into artist values (0024, 'Paul Landers', 'German');
insert into artist values (0025, 'Christoph Schneider', null);
insert into artist values (0026, 'Rob Zombie', null);
insert into artist values (0027, 'Baauer', null);
insert into artist values (0028, 'Jim Croce', null);
insert into artist values (0029, 'David Julyan', 'American');
insert into artist values (0030, 'Joe Cuba', null);
insert into artist values (0031, 'Bo Diddley', 'American');
insert into artist values (0032, 'Howlin Wolf', 'American');

/* song-artist inserts */
insert into song_artist values (0001, 0001, 0001);
insert into song_artist values (0002, 0002, 0001);
insert into song_artist values (0003, 0003, 0001);
insert into song_artist values (0004, 0004, 0001);
insert into song_artist values (0005, 0005, 0001);
insert into song_artist values (0006, 0006, 0002);
insert into song_artist values (0007, 0007, 0003);
insert into song_artist values (0008, 0008, 0002);
insert into song_artist values (0009, 0009, 0004);
insert into song_artist values (0010, 0010, 0005);
insert into song_artist values (0011, 0011, 0006);
insert into song_artist values (0012, 0014, 0011);
insert into song_artist values (0013, 0015, 0012);
insert into song_artist values (0014, 0016, 0018);
insert into song_artist values (0015, 0019, 0026);
insert into song_artist values (0016, 0020, 0027);
insert into song_artist values (0017, 0021, 0028);
insert into song_artist values (0018, 0022, 0029);
insert into song_artist values (0019, 0023, 0029);
insert into song_artist values (0020, 0024, 0029);
insert into song_artist values (0021, 0025, 0029);
insert into song_artist values (0022, 0026, 0005);
insert into song_artist values (0023, 0027, 0030);
insert into song_artist values (0024, 0028, 0031);
insert into song_artist values (0025, 0029, 0032);

/* band inserts */
insert into band values (0001, 'Dope');
insert into band values (0002, 'Kool and the Gang');
insert into band values (0003, 'The Prodigy');
insert into band values (0004, 'Rammstein');

/* song-band inserts */
insert into song_band values (0001, 0012, 0001);
insert into song_band values (0002, 0013, 0002);
insert into song_band values (0003, 0017, 0003);
insert into song_band values (0004, 0018, 0004);

/* artist-band inserts */
insert into artist_band values (0001, 'lead vocals', 0007, 0001);
insert into artist_band values (0002, 'bass', 0008, 0001);
insert into artist_band values (0003, 'drums', 0009, 0001);
insert into artist_band values (0004, 'lead guitar', 0010, 0001);
insert into artist_band values (0005, 'bass', 0013, 0002);
insert into artist_band values (0006, 'saxophone', 0014, 0002);
insert into artist_band values (0007, 'drums', 0015, 0002);
insert into artist_band values (0008, 'lead vocals', 0016, 0002);
insert into artist_band values (0009, 'guitar', 0017, 0002);
insert into artist_band values (0010, 'Keyboards', 0019, 0003);
insert into artist_band values (0011, 'dancer', 0020, 0003);
insert into artist_band values (0012, 'MC', 0021, 0003);
insert into artist_band values (0014, 'lead vocals', 0022, 0004);
insert into artist_band values (0015, 'lead guitar', 0023, 0004);
insert into artist_band values (0016, 'bass', 0024, 0004);
insert into artist_band values (0017, 'drums', 0025, 0004);
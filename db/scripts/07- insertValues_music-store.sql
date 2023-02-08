USE MUSICSTORE;

INSERT INTO empleados VALUES 
(NULL, 24512812, "Juan", "Gomez", "juangm123@fake.com", "+545244912", "2010-01-02", "gerencia", 1),
(NULL, 34515822, "Carlos", "Gomez", "juangm123@fake.com", "+545243915", "2010-01-01", "gerencia", 1),
(NULL, 44512312, "Laura", "Perez", "juangm123@fake.com", "+545243415", "2010-01-01", "rrhh", 1),
(NULL, 22712812, "Maria", "Guzman", "juangm123@fake.com", "+545143915", "2010-03-01", "rrhh", 1),
(NULL, 20572812, "Veronica", "Piñeiro", "juangm123@fake.com", "+545343915", "2010-03-01", "tesoreria", 1),
(NULL, 14512312, "Martin", "Reyes", "juangm123@fake.com", "+545243315", "2010-03-01", "tesoreria", 1),
(NULL, 13412812, "Ricardo", "Gonzalez", "juangm123@fake.com", "+545263915", "2010-04-01", "sistemas", 1),
(NULL, 14515312, "Mateo", "Oliva", "juangm123@fake.com", "+545247915", "2010-04-01", "sistemas", 1),
(NULL, 22312202, "Matias", "Ruiz", "juangm123@fake.com", "+545233915", "2010-04-01", "ventas", 1),
(NULL, 34612211, "Pedro", "Payeres", "juangm123@fake.com", "+545213915", "2010-07-01", "ventas", 1),
(NULL, 21512112, "Lautaro", "Sanchez", "juangm123@fake.com", "+545243912", "2010-07-01", "ventas", 1),
(NULL, 16312811, "Victoria", "Gonzalez", "juangm123@fake.com", "+545243913", "2010-07-01", "ventas", 1),
(NULL, 15512812, "Mercedes", "Fernandez", "juangm123@fake.com", "+545243911", "2010-08-01", "ventas", 1),
(NULL, 17312812, "Julieta", "Gomez", "juangm123@fake.com", "+545243917", "2010-08-01", "ventas", 1),
(NULL, 19412812, "Juana", "Fernandez", "juangm123@fake.com", "+544243015", "2010-09-01", "ventas", 1);


INSERT INTO usuarios VALUES 
(NULL, "Juan Carlos", "Perez Figueroa", "juanpf@fake.com", "+544247945", "2022-03-25", "http://fake.com/avatarjuanpf01", "admin", 1),
(NULL, "Maria Laura", "Gutierrez", "marial@fake.com", "+544143245", "2020-05-30", "http://fake.com/avatarmarial01", "user", 1),
(NULL, "Santiago", "Guzman", "santiagog@fake.com", "+156247945", "2017-01-14", "http://fake.com/avatarsantiagog01", "user", 1),
(NULL, "Esteban", "Gomez", "estebang@fake.com", "+544247599", "2018-11-12", "http://fake.com/avatarestebang01", "user", 1),
(NULL, "Ricardo", "Ruben", "ricardor@fake.com", "+577567945", "2021-05-25", "http://fake.com/avatarricordr01", "user", 1),
(NULL, "Juan Pedro", "Rivarola", "juanpr@fake.com", "+544242145", "2022-03-22", "http://fake.com/avatarjuanpr01", "admin", 1),
(NULL, "Maria Cecilia", "Marconi", "mariac@fake.com", "+544143645", "2020-05-23", "http://fake.com/avatarmariam01", "user", 1),
(NULL, "Santiago", "Gutierrez", "santiagogut@fake.com", "+156247945", "2018-01-16", "http://fake.com/avatarsantiagogut01", "user", 1),
(NULL, "Federico", "Gomez", "federicog@fake.com", "+544547599", "2018-11-15", "http://fake.com/avatarfedericog01", "user", 1),
(NULL, "Romina", "Rivarola", "rominar@fake.com", "+577554945", "2020-05-14", "http://fake.com/avatarrominar01", "user", 1),
(NULL, "Juan Manuel", "Figueroa", "juanmf@fake.com", "+544212945", "2022-03-23", "http://fake.com/avatarjuanmf01", "admin", 1),
(NULL, "Maria Laura", "Santillan", "marials@fake.com", "+544143245", "2021-11-12", "http://fake.com/avatarmarials01", "user", 1),
(NULL, "Santiago", "Estebanez", "santiagog@fake.com", "+156297945", "2017-01-11", "http://fake.com/avatarsantiagoe01", "user", 1),
(NULL, "Esteban", "Bale", "estebang@fake.com", "+544244599", "2018-11-11", "http://fake.com/avatarestebanb01", "user", 1),
(NULL, "Ricardo", "Rubik", "ricardor@fake.com", "+577550945", "2021-05-21", "http://fake.com/avatarricordrbk01", "user", 1);


INSERT INTO direcciones VALUES 
(NULL, 1, "Argentina", "Buenos Aires", "Azul", "Av San Martin", "424", "52° 31' 28'' N; 13° 24' 38'' E"),
(NULL, 2, "Argentina", "Chubut", "Trelew", "Rivadavia", "314", "32° 31' 28'' N; 13° 22' 32'' E"),
(NULL, 3, "Argentina", "Mendoza", "San Rafael", "Belgrano", "41", "24° 31' 28'' N; 13° 24' 38'' N"),
(NULL, 4, "Argentina", "Tucuman", "San Miguel", "Marconi", "123", "52° 11' 45'' N; 15° 26' 48'' N"),
(NULL, 5, "Argentina", "Rio Negro", "Sierra Grande", "Alem", "715", "43° 21' 6'' N; 16° 14' 58'' E"),
(NULL, 6, "Colombia", "Estado Falso", "Ciudad Falsa", "Calle Falsa", "123", "12° 11' 28'' N; 13° 24' 38'' E"),
(NULL, 7, "Ecuador", "Estado Falso", "Ciudad Falsa", "Calle Falsa", "314", "31° 31' 26'' N; 13° 22' 32'' E"),
(NULL, 8, "Peru", "Estado Falso", "Ciudad False", "Calle falsa", "412", "24° 31' 28'' N; 19° 24' 38'' N"),
(NULL, 9, "Argentina", "Tucuman", "San Miguel", "Belgrano", "223", "12° 11' 45'' N; 15° 26' 48'' N"),
(NULL, 10, "Chile", "Estado Falso", "Ciudad Falsa", "Calle Falsa", "115", "43° 21' 6'' N; 16° 14' 58'' E"),
(NULL, 11, "Argentina", "Buenos Aires", "Bahia Blanca", "Av Rivadavia", "124", "52° 31' 28'' N; 13° 24' 38'' E"),
(NULL, 12, "Brasil", "Estado Falso", "Ciudad Falsa", "Calle Falsa", "311", "12° 31' 28'' N; 13° 12' 32'' E"),
(NULL, 13, "Uruguay", "Estado Falso", "Ciudad Falsa", "Calle Falsa", "11", "24° 31' 28'' N; 13° 24' 38'' N"),
(NULL, 14, "Argentina", "Tucuman", "San Miguel", "Av Peron", "12", "12° 11' 45'' N; 15° 26' 18'' N"),
(NULL, 15, "Argentina", "Rio Negro", "Cipolletti", "Brown", "190", "23° 31' 6'' N; 16° 14' 58'' E");


INSERT INTO discos VALUES 
(NULL, "Fear of the Dark", "Iron Maiden", "Descripcion Disco", "Rock", "EMI", "1992-01-01", 140, "2022-10-11", 1),
(NULL, "Use Your Illussion I", "Guns N' Roses", "Descripcion Disco", "Rock", "Geffen Records", "1991-01-01", 120, "2021-10-11", 1),
(NULL, "Use Your Illussion II", "Guns N' Roses", "Descripcion Disco", "Rock", "Geffen Records", "1991-01-01", 120, "2021-10-11", 1),
(NULL, "Physical Graffiti", "Led Zeppelin", "Descripcion Disco", "Rock", "Swan Song", "1975-01-01", 90, "2020-12-07", 1),
(NULL, "Star People", "Miles Davis", "Descripcion Disco", "Jazz", "Columbia", "1983-01-01", 80, "2020-01-09", 1),
(NULL, "Stones", "Neil Diamond", "Descripcion Disco", "Rock", "MCA", "1980-01-01", 140, "2022-10-02", 1),
(NULL, "Pretty Monster", "The Blue Stones", "Descripcion Disco", "Rock", "MNRK", "2022-01-01", 85, "2022-11-11", 1),
(NULL, "Aftermath", "The Rolling Stones", "Descripcion Disco", "Rock", "ABKCO", "1966-01-01", 70, "2019-11-11", 1),
(NULL, "Revolver", "The Beatles", "Descripcion Disco", "Rock", "Apple Records", "1966-01-01", 95, "2019-12-07", 1),
(NULL, "Master of Puppets", "Metallica", "Descripcion Disco", "Metal", "Blackened", "1986-01-01", 90, "2020-01-09", 1),
(NULL, "Backless", "Eric Clapton", "Descripcion Disco", "Rock", "RSO", "1978-01-01", 110, "2022-10-11", 1),
(NULL, "Return of the Dream Canteen", "Red Hot Chili Peppers", "Descripcion Disco", "Rock", "Warner Records", "2022-01-01", 120, "2022-11-11", 1),
(NULL, "Strictly Elvis", "Elvis Presley", "Descripcion Disco", "Rock", "RCA", "1965-01-01", 120, "2018-07-11", 1),
(NULL, "Burning Desire", "Jimi Hendrix", "Descripcion Disco", "Rock", "Dagger Records", "2006-01-01", 90, "2021-05-04", 1),
(NULL, "Rastaman Vibration", "Bob Marley & The Wailers", "Descripcion Disco", "Reggae", "Analogue Productions", "1976-01-01", 80, "2020-08-09", 1);


INSERT INTO stock VALUES 
(NULL, 1, 123),
(NULL, 2, 93),
(NULL, 3, 150),
(NULL, 4, 80),
(NULL, 5, 15),
(NULL, 6, 133),
(NULL, 7, 53),
(NULL, 8, 200),
(NULL, 9, 100),
(NULL, 10, 150),
(NULL, 11, 133),
(NULL, 12, 53),
(NULL, 13, 150),
(NULL, 14, 80),
(NULL, 15, 22);

INSERT INTO compras VALUES
(NULL, 1, 9, 100, 30),
(NULL, 2, 9, 80, 22),
(NULL, 3, 10, 50, 15),
(NULL, 4, 11, 100, 30),
(NULL, 5, 10, 100, 17),
(NULL, 6, 12, 100, 20),
(NULL, 7, 13, 70, 23),
(NULL, 8, 14, 100, 30),
(NULL, 9, 9, 100, 10),
(NULL, 10, 11, 60, 14),
(NULL, 11, 12, 100, 12),
(NULL, 12, 15, 100, 25),
(NULL, 13, 9, 40, 30),
(NULL, 14, 11, 100, 30),
(NULL, 15, 14, 90, 30);


INSERT INTO carritos VALUES
(NULL, 1, '[{"id": 1, "cant": 2}, {"id": 2, "cant": 1}, {"id": 5, "cant": 2}]'),
(NULL, 2, '[]'),
(NULL, 3, '[{"id": 3, "cant": 1}]'),
(NULL, 4, '[{"id": 4, "cant": 2}, {"id": 3, "cant": 3}, {"id": 5, "cant": 1}]'),
(NULL, 5, '[]'),
(NULL, 6, '[{"id": 11, "cant": 3}, {"id": 12, "cant": 2}, {"id": 4, "cant": 2}]'),
(NULL, 7, '[]'),
(NULL, 8, '[{"id": 13, "cant": 1}]'),
(NULL, 9, '[{"id": 14, "cant": 2}, {"id": 3, "cant": 3}, {"id": 5, "cant": 1}]'),
(NULL, 10, '[]'),
(NULL, 11, '[{"id": 1, "cant": 2}, {"id": 2, "cant": 1}, {"id": 8, "cant": 2}]'),
(NULL, 12, '[]'),
(NULL, 13, '[{"id": 10, "cant": 1}]'),
(NULL, 14, '[{"id": 14, "cant": 2}, {"id": 3, "cant": 1}, {"id": 7, "cant": 1}]'),
(NULL, 15, '[]');

INSERT INTO pedidos VALUES
(NULL, 1, '[{"id": 1, "cant": 1}, {"id": 2, "cant": 1}, {"id": 5, "cant": 1}]', '2022-11-02 11:01:20'),
(NULL, 1, '[{"id": 1, "cant": 2}, {"id": 4, "cant": 2}, {"id": 3, "cant": 4}]', '2022-12-02 05:04:22'),
(NULL, 3, '[{"id": 1, "cant": 2}]', '2022-11-02'),
(NULL, 3, '[{"id": 2, "cant": 1}, {"id": 1, "cant": 2}, {"id": 5, "cant": 1}]', '2022-11-14 07:04:21'),
(NULL, 2, '[{"id": 5, "cant": 1}]', '2022-11-02'),
(NULL, 11, '[{"id": 1, "cant": 1}, {"id": 2, "cant": 1}, {"id": 5, "cant": 1}]', '2022-09-03 04:01:20'),
(NULL, 1, '[{"id": 1, "cant": 2}, {"id": 4, "cant": 2}, {"id": 3, "cant": 4}]', '2022-12-02 10:01:20'),
(NULL, 13, '[{"id": 1, "cant": 2}]', '2022-11-02'),
(NULL, 12, '[{"id": 2, "cant": 1}, {"id": 8, "cant": 2}, {"id": 15, "cant": 1}]', '2022-12-12 11:11:20'),
(NULL, 2, '[{"id": 15, "cant": 1}]', '2022-11-02'),
(NULL, 9, '[{"id": 11, "cant": 2}, {"id": 2, "cant": 1}, {"id": 5, "cant": 1}]', '2022-08-22 11:01:21'),
(NULL, 5, '[{"id": 11, "cant": 1}, {"id": 4, "cant": 2}, {"id": 3, "cant": 4}]', '2022-11-22 11:01:23'),
(NULL, 4, '[{"id": 11, "cant": 2}]', '2022-11-02'),
(NULL, 2, '[{"id": 12, "cant": 1}, {"id": 7, "cant": 2}, {"id": 5, "cant": 1}]', '2022-11-21 10:14:20'),
(NULL, 15, '[{"id": 14, "cant": 1}]', '2022-11-17');

INSERT INTO mensajes VALUES
(NULL, 1, "Hola tengo una consulta", "2022-12-01 10:01:20"),
(NULL, 2, "Buen día quisiera preguntar por discos", "2020-07-20 20:11:10"),
(NULL, 1, "Hola reitero consulta", "2022-12-02 15:21:07"),
(NULL, 4, "Buenas quisiera saber el precio de un producto", "2020-11-14 13:17:05"),
(NULL, 5, "Buenas tardes, necesito asistencia", "2022-11-11 22:19:23"),
(NULL, 1, "Hola que tal", "2022-12-01 20:1:20"),
(NULL, 2, "Mensaje de prueba", "2021-07-20 10:11:10"),
(NULL, 1, "A a e", "2022-12-02 13:21:07"),
(NULL, 4, "Mensaje de prueba", "2021-11-15 13:17:05"),
(NULL, 5, "Buenas tardes, necesito asistencia", "2022-12-11 21:19:23"),
(NULL, 1, "Hola tengo una consulta", "2022-12-01 10:11:20"),
(NULL, 2, "Tienen disco x?", "2020-07-20 20:11:10"),
(NULL, 1, "Hola buen día", "2022-12-02 15:21:07"),
(NULL, 4, "Consulta...", "2020-11-14 13:17:05"),
(NULL, 5, "Quisiera saber acerca del disco y", "2022-11-11 22:19:23");


INSERT INTO sesiones VALUES
(NULL, 1, "2022-12-01 22:19:23", "2022-12-02 22:19:23", "asd134ad"),
(NULL, 2, "2022-12-02 15:15:04", "2022-12-03 15:15:04", "azxc34fe"),
(NULL, 3, "2022-12-02 06:19:14", "2022-12-03 06:19:14", "jklj23js"),
(NULL, 4, "2022-12-01 04:23:12", "2022-12-02 04:23:12", "nkn984kn"),
(NULL, 5, "2022-12-01 23:11:21", "2022-12-02 23:11:21", "njsl93lq"),
(NULL, 6, "2022-12-01 22:19:23", "2022-12-02 22:19:23", "asd134ad"),
(NULL, 7, "2022-12-02 15:15:04", "2022-12-03 15:15:04", "azxc34fe"),
(NULL, 8, NULL, NULL, NULL),
(NULL, 9, "2022-12-01 04:23:12", "2022-12-02 04:23:12", "nkn984kn"),
(NULL, 10, NULL, NULL, NULL),
(NULL, 11, NULL, NULL, NULL),
(NULL, 12, "2022-11-02 15:15:04", "2022-11-03 15:15:04", "azxc34fe"),
(NULL, 13, "2022-11-02 06:19:14", "2022-11-03 06:19:14", "jklj23js"),
(NULL, 14, NULL, NULL, NULL),
(NULL, 15, "2022-11-01 23:11:21", "2022-11-02 23:11:21", "njsl93lq");

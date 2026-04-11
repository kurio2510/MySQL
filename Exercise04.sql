USE demo_database;

SELECT * FROM architect WHERE name = 'le thanh tung';

SELECT name, birthday FROM worker WHERE skill IN ('han', 'dien');

SELECT name FROM worker WHERE (skill = 'han' OR skill = 'dien') AND birthday > 1948;

SELECT * FROM worker WHERE (year - birthday) < 20;

SELECT * FROM worker WHERE birthday IN (1940, 1945, 1948);
SELECT * FROM worker WHERE birthday = 1940 OR birthday = 1945 OR birthday = 1948;

SELECT * FROM building WHERE cost BETWEEN 200 AND 500;
SELECT * FROM building WHERE cost >= 200 AND cost <= 500;

SELECT * FROM architect WHERE name LIKE 'nguyen%';

SELECT * FROM architect WHERE name LIKE '% anh %';

SELECT * FROM architect WHERE name LIKE '% th_';

SELECT * FROM contractor WHERE phone IS NULL;

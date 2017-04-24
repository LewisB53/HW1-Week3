DROP TABLE lightsabers;
DROP TABLE jedi;


CREATE TABLE jedi (
name VARCHAR(255),
age INT2,
darkside BOOLEAN,
id SERIAL4 PRIMARY KEY
);


CREATE TABLE lightsabers(
hilt_metal VARCHAR(255) NOT NULL,
colour VARCHAR(255) NOT NULL,
owner_id INT4 REFERENCES jedi(id),
id SERIAL4 PRIMARY KEY
);

INSERT INTO jedi (name,age,darkside) VALUES('Luke','22',false);
INSERT INTO jedi (name,age,darkside) VALUES('Obiwan','60',false);
INSERT INTO jedi (name,age,darkside) VALUES('Obiwan','35',false);
INSERT INTO jedi (name,age,darkside) VALUES('Anakin','12',false);

UPDATE jedi SET darkside = false;

UPDATE jedi SET darkside = false WHERE name = 'Luke' And age = 22;
UPDATE jedi SET darkside = true WHERE name = 'Anakin' And age = 12;
UPDATE jedi SET age = 22 WHERE name = 'Anakin' And age = 12;

UPDATE jedi SET age = 36 WHERE name = 'Obiwan' and age = 35;
DELETE FROM jedi WHERE name = 'Luke';
-- SELECT count (darkside) FROM jedi;



INSERT INTO lightsabers(
hilt_metal,
colour,
owner_id
) VALUES(
'palladium',
'green',
4
);


INSERT INTO lightsabers(
owner_id,
hilt_metal,
colour
) VALUES(
3,
'silver',
'blue'
);

INSERT INTO lightsabers(
hilt_metal,
colour,
owner_id
) VALUES(
'gold',
'yellow',
3
);
-- INSERT INTO lightsabers(
-- colour
-- ) VALUES(
-- 'red'
-- );        -this would fail due to two nulls


SELECT * FROM jedi;
SELECT * FROM lightsabers;

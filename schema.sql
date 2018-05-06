-- show only firs 10 records
USE something_db;
SELECT * FROM topsongs
LIMIT 10;

CREATE DATABASE peepsandpets_db;

USE peepsandpets_db;
CREATE TABLE peeps(
	id INTEGER(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    location VARCHAR(30) NOT NULL,
    petName VARCHAR(30) NOT NULL
);

CREATE TABLE pets(
	id INTEGER(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    sound VARCHAR(30) NOT NULL,
    type VARCHAR(30) NOT NULL,
    isHouseBroken BOOLEAN NOT NULL
);


INSERT INTO peeps(name, location, petName)
VALUES("Richie", "Huntington Beach", "Qdog"),("Amanda", "Irvine", "Qcat"),("Sam", "Costa Mesa", "Qbird"),("Jcob", "Los Angeles", "Qbunny"),("Quinton Churchill", "Nowhere", "Quinchilla");

USE peepsandpets_db;
INSERT INTO pets(name, sound, type, isHouseBroken)
VALUES("Qdog", "Meow", "Cat", false),("Qcat", "Woff", "Dog", true),("Qbird", "Hoot", "Owl", true),("Qbunny", "We don't know", "Fox", false),("QWhale", "pewpew", "lemur", false);

DROP TABLE pets;

SELECT peeps.name, peeps.location, pets.name, pets.type, pets.sound
FROM peeps
INNER JOIN pets
ON peeps.petName = pets.name;


SELECT peeps.name, peeps.location, pets.name, pets.type, pets.sound
FROM peeps
LEFT JOIN pets
ON peeps.petName = pets.name;

SELECT peeps.name, peeps.location, pets.name, pets.type, pets.sound
FROM peeps
RIGHT JOIN pets
ON peeps.petName = pets.name;
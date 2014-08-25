CREATE DATABASE scirev;

USE scirev;

DROP TABLE IF EXISTS person;
CREATE TABLE person (
person_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
bio TEXT,
image VARCHAR(50),
dancing BOOLEAN,
acting BOOLEAN,
singing BOOLEAN, 
band BOOLEAN
);

SELECT * FROM person;


INSERT INTO person (first_name, last_name, bio, image, dancing, acting, singing, band) VALUES ('Sebastien', 'Scott', 'Roar!!', 'DSC_0114.jpg', 0, 1, 0, 0);



CREATE USER 'scirev'@'localhost' IDENTIFIED BY 'scirev';

GRANT ALL ON scirev.* TO 'scirev'@'localhost';

CREATE TABLE production (
	person_id INT,
	position VARCHAR(50)
);

CREATE TABLE executive (
	person_id INT,
	position VARCHAR(50)
);
--author: Samir FAHMI, date: 03/02/2022
--This is based on MySQL
DROP DATABASE IF EXISTS notationStudentsDB;
CREATE DATABASE notationStudentsDB;
USE notationStudentsDB;
CREATE TABLE Student (
    numstud int PRIMARY KEY auto_increment,
    name varchar(20) NOT NULL,
    firstName varchar(20),
    dateofbirth Date,
    street varchar(150),
    postalcod varchar(5),
    city varchar(20)
);

CREATE TABLE Matter (
    codemat varchar(20) PRIMARY KEY,
    wording varchar(255),
    coef float
);

CREATE TABLE Test (
    numtest int PRIMARY KEY auto_increment,
    testdate Date,
    place varchar(150),
    codemat varchar(20), 
	FOREIGN KEY (codemat) REFERENCES  Matter(codemat)

);

CREATE TABLE Notation (
    numstud int,
    FOREIGN KEY (numstud) REFERENCES Student(numstud),
    numtest int,
    FOREIGN KEY (numtest) REFERENCES Test(numtest),
    score float NOT NULL,
    PRIMARY KEY (numstud, numtest)
);


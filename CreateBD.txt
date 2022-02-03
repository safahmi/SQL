/*
* author: Samir FAHMI, date: 03/02/2022
* This is based on MySQL
*/

drop database if exists notationStudentsDB;
create database notationStudentsDB;
use notationStudentsDB;

create table Student (
    numstud int primary key auto_increment,
    name varchar(20) not null,
    firstname varchar(20),
    dateofbirth Date,
    street varchar(150),
    postalcod varchar(5),
    city varchar(20)
);

create table Matter (
    codemat varchar(20) primary key,
    wording varchar(255),
    coef float
);

create table Test (
    numtest int primary key auto_increment,
    testdate date,
    place varchar(150),
    codemat varchar(20), 
	foreign key (codemat) references  Matter(codemat)

);

create table Notation (
    numstud int,
    foreign key (numstud) references Student(numstud),
    numtest int,
    foreign key (numtest) references Test(numtest),
    score float not null,
    primary key (numstud, numtest)
);


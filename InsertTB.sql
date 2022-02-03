USE notationStudentsDB;
/*
* It takes 7 students, including 3 in the same city and 3 whose names are: 
* Dupont, Durand, and Martin. It also takes 2 cities whose name contains « LL »
*/
INSERT INTO `student` (`name`, `city`) VALUES ('Dupont', 'Marseille');
INSERT INTO `student` (`name`, `city`) VALUES ('Durant', 'Paris');
INSERT INTO `student` (`name`, `city`) VALUES ('Martin', 'Séville');
INSERT INTO `student` (`name`, `city`) VALUES ('Fahmi', 'Goussainville');
INSERT INTO `student` (`name`, `city`) VALUES ('Reda', 'Paris');
INSERT INTO `student` (`name`, `city`) VALUES ('Hammer', 'Paris');
INSERT INTO `student` (`name`, `city`) VALUES ('Aube', 'Bordeaux');
/*
* There must be 3 subjects with a coefficient greater than or equal to 1 
* and at least one of which it is greater than 1
*/
INSERT INTO `matter` (`codemat`, `coef`) VALUES ('sciences', '1');
INSERT INTO `matter` (`codemat`, `coef`) VALUES ('maths', '2');
INSERT INTO `matter` (`codemat`, `coef`) VALUES ('physics', '3');
/*
* 5 tests are required, 3 of which have the date between 1/1/2014 and 30/6/2014 (inclusive).
* You also need 2 subjects with more than one test.
*/
INSERT INTO `test` (`testdate`, `codemat`) VALUES ('2014-01-05', 'sciences');
INSERT INTO `test` (`testdate`, `codemat`) VALUES ('2014-01-10', 'physics');
INSERT INTO `test` (`testdate`, `codemat`) VALUES ('2014-01-20', 'sciences');
INSERT INTO `test` (`testdate`, `codemat`) VALUES ('2015-02-01', 'physics');
INSERT INTO `test` (`testdate`, `codemat`) VALUES ('2015-03-02', 'maths');



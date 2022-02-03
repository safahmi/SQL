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


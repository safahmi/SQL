USE notationStudentsDB;
/*
* We are going to fill student, matter, test, notation tables 
*/

/*
* It takes 7 students, including 3 in the same city and 3 whose names are: 
* Dupont, Durand, and Martin. It also takes 2 cities whose name contains « LL »
*/
INSERT INTO `student` (`name`, `firstname`, `city`) VALUES ('Dupont', 'Bob', 'Marseille');
INSERT INTO `student` (`name`, `firstname`, `city`) VALUES ('Durant', 'Alice', 'Paris');
INSERT INTO `student` (`name`, `firstname`, `city`) VALUES ('Martin', 'Carol', 'Séville');
INSERT INTO `student` (`name`, `firstname`, `city`) VALUES ('Fahmi', 'Samir', 'Goussainville');
INSERT INTO `student` (`name`, `firstname`, `city`) VALUES ('Reda', 'Jean', 'Paris');
INSERT INTO `student` (`name`, `firstname`, `city`) VALUES ('Hammer', 'Patrick', 'Paris');
INSERT INTO `student` (`name`, `firstname`, `city`) VALUES ('Aube', 'Juan', 'Lyon');

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

/*
* 30 marks are required, 
* 18 of which are greater than or equal to 10, 
* 2 equal to 20, 
* 2 tests with 2 different subjects
* and less than 6 students marked per test
*/
INSERT INTO notation (numstud, numtest, score) VALUES(1, 1, 14.0);
INSERT INTO notation (numstud, numtest, score) VALUES(1, 2, 10.0);
INSERT INTO notation (numstud, numtest, score) VALUES(1, 3, 16.0);
INSERT INTO notation (numstud, numtest, score) VALUES(1, 4, 11.0);
INSERT INTO notation (numstud, numtest, score) VALUES(1, 5, 13.0);
INSERT INTO notation (numstud, numtest, score) VALUES(2, 1, 10.0);
INSERT INTO notation (numstud, numtest, score) VALUES(2, 2, 11.0);
INSERT INTO notation (numstud, numtest, score) VALUES(2, 3, 12.0);
INSERT INTO notation (numstud, numtest, score) VALUES(2, 4, 13.0);
INSERT INTO notation (numstud, numtest, score) VALUES(2, 5, 14.0);
INSERT INTO notation (numstud, numtest, score) VALUES(3, 1, 9.0);
INSERT INTO notation (numstud, numtest, score) VALUES(3, 2, 7.0);
INSERT INTO notation (numstud, numtest, score) VALUES(3, 3, 12.0);
INSERT INTO notation (numstud, numtest, score) VALUES(3, 4, 14.0);
INSERT INTO notation (numstud, numtest, score) VALUES(3, 5, 17.0);
INSERT INTO notation (numstud, numtest, score) VALUES(4, 1, 12.0);
INSERT INTO notation (numstud, numtest, score) VALUES(4, 2, 6.0);
INSERT INTO notation (numstud, numtest, score) VALUES(4, 3, 16.0);
INSERT INTO notation (numstud, numtest, score) VALUES(4, 4, 6.5);
INSERT INTO notation (numstud, numtest, score) VALUES(4, 5, 14.0);
INSERT INTO notation (numstud, numtest, score) VALUES(5, 4, 20.0);
INSERT INTO notation (numstud, numtest, score) VALUES(5, 5, 8.0);
INSERT INTO notation (numstud, numtest, score) VALUES(6, 1, 4.0);
INSERT INTO notation (numstud, numtest, score) VALUES(6, 2, 7.0);
INSERT INTO notation (numstud, numtest, score) VALUES(6, 3, 3.0);
INSERT INTO notation (numstud, numtest, score) VALUES(6, 4, 5.0);
INSERT INTO notation (numstud, numtest, score) VALUES(6, 5, 4.5);
INSERT INTO notation (numstud, numtest, score) VALUES(7, 1, 9.0);
INSERT INTO notation (numstud, numtest, score) VALUES(7, 2, 5.0);
INSERT INTO notation (numstud, numtest, score) VALUES(7, 3, 20.0);




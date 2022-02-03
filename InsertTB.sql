use notationStudentsDB;
/*
* We are going to fill student, matter, test, notation tables 
*/

/*
* It takes 7 students, including 3 in the same city and 3 whose names are: 
* Dupont, Durand, and Martin. It also takes 2 cities whose name contains « LL »
*/
insert into `student` (`name`, `firstname`, `city`) values ('Dupont', 'Bob', 'Marseille');
insert into `student` (`name`, `firstname`, `city`) values ('Durant', 'Alice', 'Paris');
insert into `student` (`name`, `firstname`, `city`) values ('Martin', 'Carol', 'Séville');
insert into `student` (`name`, `firstname`, `city`) values ('Fahmi', 'Samir', 'Goussainville');
insert into `student` (`name`, `firstname`, `city`) values ('Reda', 'Jean', 'Paris');
insert into `student` (`name`, `firstname`, `city`) values ('Hammer', 'Patrick', 'Paris');
insert into `student` (`name`, `firstname`, `city`) values ('Aube', 'Juan', 'Lyon');

/*
* There must be 3 subjects with a coefficient greater than or equal to 1 
* and at least one of which it is greater than 1
*/
insert into matter (codemat, wording, coef) values('maths', 'algebra, trigo', 2.0);
insert into matter (codemat, wording, coef) values('physics', 'thermodynamic', 3.0);
insert into matter (codemat, wording, coef) values('sciences', 'biology', 1.0);

/*
* 5 tests are required, 3 of which have the date between 1/1/2014 and 30/6/2014 (inclusive).
* You also need 2 subjects with more than one test.
*/
insert into `test` (`testdate`, `codemat`) values ('2014-01-05', 'sciences');
insert into `test` (`testdate`, `codemat`) values ('2014-01-10', 'physics');
insert into `test` (`testdate`, `codemat`) values ('2014-01-20', 'sciences');
insert into `test` (`testdate`, `codemat`) values ('2015-02-01', 'physics');
insert into `test` (`testdate`, `codemat`) values ('2015-03-02', 'maths');

/*
* 30 marks are required, 
* 18 of which are greater than or equal to 10, 
* 2 equal to 20, 
* 2 tests with 2 different subjects
* and less than 6 students marked per test
*/
insert into notation (numstud, numtest, score) values(1, 1, 14.0);
insert into notation (numstud, numtest, score) values(1, 2, 10.0);
insert into notation (numstud, numtest, score) values(1, 3, 16.0);
insert into notation (numstud, numtest, score) values(1, 4, 11.0);
insert into notation (numstud, numtest, score) values(1, 5, 13.0);
insert into notation (numstud, numtest, score) values(2, 1, 10.0);
insert into notation (numstud, numtest, score) values(2, 2, 11.0);
insert into notation (numstud, numtest, score) values(2, 3, 12.0);
insert into notation (numstud, numtest, score) values(2, 4, 13.0);
insert into notation (numstud, numtest, score) values(2, 5, 14.0);
insert into notation (numstud, numtest, score) values(3, 1, 9.0);
insert into notation (numstud, numtest, score) values(3, 2, 7.0);
insert into notation (numstud, numtest, score) values(3, 3, 12.0);
insert into notation (numstud, numtest, score) values(3, 4, 14.0);
insert into notation (numstud, numtest, score) values(3, 5, 17.0);
insert into notation (numstud, numtest, score) values(4, 1, 12.0);
insert into notation (numstud, numtest, score) values(4, 2, 6.0);
insert into notation (numstud, numtest, score) values(4, 3, 16.0);
insert into notation (numstud, numtest, score) values(4, 4, 6.5);
insert into notation (numstud, numtest, score) values(4, 5, 14.0);
insert into notation (numstud, numtest, score) values(5, 4, 20.0);
insert into notation (numstud, numtest, score) values(5, 5, 8.0);
insert into notation (numstud, numtest, score) values(6, 1, 4.0);
insert into notation (numstud, numtest, score) values(6, 2, 7.0);
insert into notation (numstud, numtest, score) values(6, 3, 3.0);
insert into notation (numstud, numtest, score) values(6, 4, 5.0);
insert into notation (numstud, numtest, score) values(6, 5, 4.5);
insert into notation (numstud, numtest, score) values(7, 1, 9.0);
insert into notation (numstud, numtest, score) values(7, 2, 5.0);
insert into notation (numstud, numtest, score) values(7, 3, 20.0);




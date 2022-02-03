use notationStudentsDB;

/* List of all students */
select * from student;

/* List of all students, sorted in reverse alphabetical order */
select * from student
order by name desc; 

/* Last name and first name of students domiciled in Lyon */
select name, firstName from student 
where city = 'Lyon';

/* Last name, first name and city of students whose city contains the string « LL » */
select name, firstName, city from student 
where UPPER(city) like '%LL%';

/* First name of students with Dupont, Durand or Martin names */
select firstName from student
where name in ('Durant', 'Dupont', 'Martin');

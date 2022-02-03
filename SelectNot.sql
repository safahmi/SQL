USE notationStudentsDB;

/* Total number of tests */
select count(numtest) as nbtest 
from notation;

/* List of score, specifying for each the name and first name of the student who obtained it */
select n.score, s.name, s.firstName 
from notation n
inner join student s on n.numstud = s.numstud;

/* List of score, specifying for each the name and first name of the student who obtained it and the
wording of the matter concerned */
select n.score, s.name, s.firstName, m.wording
from student s
inner join notation n on s.numstud = n.numstud
inner join test t on n.numtest = t.numtest 
inner join matter m on t.codemat = m.codemat;

/* List of score greater than or equal to 10 */
select score 
from notation 
where score >= 10;

/* Last name and first name of the students who obtained at least a score equal to 20 */
select s.name, s.firstName 
from notation n
inner join student s on n.numstud = s.numstud
where score >= 20;

/* Average scores for each student (indicate name and first name) */
select s.name, s.firstName, sum(n.score * m.coef) / sum(m.coef) as averagescore 
from notation n
inner join student s on n.numstud = s.numstud
inner join test t on n.numtest = t.numtest 
inner join matter m on t.codemat = m.codemat
group by s.name, s.firstname;

/* List of tests whose date is between January 1 and June 30, 2014 */
select testdate 
from test 
where testdate between '2014-01-01' and '2014-06-30'; 

/* List of tests (number, date and place) including the matter of the subject */
select t.*, m.wording, m.coef 
from test t
inner join matter m on t.codemat = m.codemat;

/* Average scores for each student (indicate name and first name), ranked from best to worst */
select s.name, s.firstName, sum(n.score * m.coef) / sum(m.coef) as averagescore 
from notation n
inner join student s on n.numstud = s.numstud
inner join test t on n.numtest = t.numtest 
inner join matter m on t.codemat = m.codemat
group by s.name, s.firstname
order by averagescore desc;

/* Average scores for matter (indicate the wording) comprising more than one test */
select m.wording, avg(n.score) as avgmatt
from notation n
inner join test t on n.numtest = t.numtest 
inner join matter m  on t.codemat = m.codemat
where t.codemat in (select t2.codemat from test t2 group by t2.codemat having count(*) > 1)
group by m.wording;

/* Average of score obtained in the tests (indicate the number of the test) where less than 6 students
were rated */
select n.numtest, avg(n.score)
from notation n
group by n.numtest 
having count(n.numstud) < 6;


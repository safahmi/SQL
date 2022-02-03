USE notationStudentsDB;

/* Wording and coefficient (expressed as a percentage) of each subject */
Select wording , (coef* 100 / (Select sum(coef) From matter)) as coeffpercent
From matter 
Group By coef;

/* Sum of coefficients of all subject */
Select SUM(coef) totalcoef
From matter;

use notationStudentsDB;

/* Wording and coefficient (expressed as a percentage) of each subject */
select wording , (coef* 100 / (select sum(coef) from matter)) as coeff
From matter;

/* Sum of coefficients of all subject */
select SUM(coef) as totalcoef
From matter;

USE notationStudentsDB;

/* Wording and coefficient (expressed as a percentage) of each subject */
Select wording , (coef* 100 / (Select sum(coef) From matter)) as coeff
From matter;

/* Sum of coefficients of all subject */
Select SUM(coef) as totalcoef
From matter;

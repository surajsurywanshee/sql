-- NEW STARTING QUARIES FOR SQL 08-06-2024 
USE SYS;

USE EMPLOYEES;

SELECT * FROM DEPARTMENTS;
SELECT * FROM DEPT_EMP;
SELECT * FROM DEPT_MANAGER;
SELECT * FROM EMPLOYEES;
SELECT * FROM SALARIES;
SELECT * FROM TITLES;

SELECT * FROM DEPARTMENTS;

SELECT DEPT_NO FROM DEPARTMENTS
WHERE  DEPT_NAME = "FINANCE";

SELECT * FROM EMPLOYEES
WHERE GENDER="M";

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME LIKE "%S";

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME LIKE "_S%";

SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE "A%";

SELECT * FROM EMPLOYEES 
WHERE LAST_NAME LIKE "E%";

SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE "I%";

SELECT * FROM EMPLOYEES 
WHERE LAST_NAME LIKE "O%";

SELECT * FROM EMPLOYEES 
WHERE LAST_NAME LIKE "U%";

SELECT * FROM EMPLOYEES 
WHERE LAST_NAME LIKE"%A";

SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE "%E";

SELECT * FROM EMPLOYEES 
WHERE LAST_NAME LIKE "%I";

SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE "%O";

SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE "%U";

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE "S%";

SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE "%S%";

SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE "%_A_%";

SELECT * FROM EMPLOYEES
WHERE LAST_NAME LIKE "_PS___%";

SELECT DEPT_NO FROM DEPARTMENTS;

SELECT * FROM EMPLOYEES;

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME LIKE "ELVIS";

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME LIKE "KELLIE" AND GENDER ="F";

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME LIKE "KELLIE" AND GENDER ="F" OR  FIRST_NAME LIKE "ARUNA" AND GENDER = "F";

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME ="KELLIE" OR  FIRST_NAME ="ARUNA";

-- NEW QUERYS TODAY 10-06-2024

 SELECT * FROM EMPLOYEES 
 WHERE FIRST_NAME = "KELLIE" AND GENDER = "F" OR FIRST_NAME = "ARUNA" AND GENDER= "M";

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME IN("KELLIE", "ARUNA");

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = "ARUNA" OR FIRST_NAME ="KELLIE";

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME IN("KELLIE","ARUNA")
AND GENDER = "F";

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME NOT IN("KELLIE","ARUNA")
AND GENDER = "F";

-- USE THE IN OPERATOR TO SELECT ALL INDIVISUAL FROM THE EMPLOYEES TABLE WHOSE FIRST_NAME IS EITHER DENIS OR ELVIS

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME NOT IN("DENIS","ELVIS");

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME IN ("DENIS","ELVIS"); 

SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME LIKE ("_____");

-- WHERE FIRST_NAME LIKE E 

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE ("E%");

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME  NOT LIKE ("E%");

-- BETWEEN (RANGE)

SELECT * FROM EMPLOYEES 
WHERE EMP_NO  BETWEEN 10010 AND 33050;

-- ORDER BY  SPECIFIC NAME (A,B,C,S,.....)
SELECT * FROM EMPLOYEES 
WHERE FIRST_NAME LIKE "S%"
AND EMP_NO BETWEEN 10010 AND 33560
AND GENDER ="M"
ORDER BY FIRST_NAME 
;

-- ASSENDING ORDER 
SELECT * FROM EMPLOYEES 
WHERE EMP_NO BETWEEN 10010 AND 33560
AND GENDER ="M"
ORDER BY FIRST_NAME ASC 
;

-- DESENDING ORDER
SELECT * FROM EMPLOYEES 
WHERE EMP_NO BETWEEN 10010 AND 33560
AND GENDER ="M"
ORDER BY FIRST_NAME DESC
;

-- TADAY QUARIES  11-06-2024
SELECT * FROM SALARIES 
WHERE SALARY BETWEEN 66000 AND 70000;

SELECT * FROM SALARIES
WHERE EMP_NO BETWEEN 10004 AND 10012; 

SELECT * FROM SALARIES  
WHERE EMP_NO NOT BETWEEN 10004 AND 10012;

-- RETRIVE A LIST WITH ALL INDIVISUALS  
SELECT * FROM EMPLOYEES  
WHERE EMP_NO NOT BETWEEN 10004 AND 10012;

SELECT * FROM DEPARTMENTS;

SELECT DEPT_NAME FROM DEPARTMENTS 
WHERE DEPT_NO BETWEEN 'D003' AND 'D006';

-- SELECT THE NAME OF ALL DEPARTMENTS WITH NUMBER BETWEEN 'D003' AND 'D006'. 
SELECT * FROM DEPARTMENTS 
WHERE DEPT_NO BETWEEN 'D003' AND 'D006';

SELECT * FROM EMPLOYEES;

SELECT DEPT_NAME FROM DEPARTMENTS 
WHERE DEPT_NO  IS NOT NULL;

SELECT * FROM EMPLOYEES 
WHERE EMP_NO IS NOT NULL;

SELECT * FROM SALARIES
WHERE SALARY >= 66000;

SELECT * FROM SALARIES
WHERE SALARY < 66000;

SELECT * FROM SALARIES
WHERE FROM_DATE > '2000-01-01'
ORDER BY FROM_DATE
;

SELECT * FROM SALARIES;

SELECT EMP_NO , SUM(SALARY) FROM SALARIES
GROUP BY EMP_NO;

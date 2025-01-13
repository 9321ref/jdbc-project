SELECT * FROM EMPLOYEES;

--your manager is asking all jobs and their average salary.
select distinct JOB_ID from EMPLOYEES;

--get me average salary for 'AC_ACCOUNT'
SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

--get me average salary for 'AC_ACCOUNT'
SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'AC_ACCOUNT';

--get me average salary for 'AD_ASST'
SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'AD_ASST';


--
SELECT JOB_ID, AVG(SALARY), COUNT(*), SUM(SALARY), MIN(SALARY),MAX(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID;

--
--Display how many departments we have in each location
SELECT * FROM DEPARTMENTS;

SELECT LOCATION_ID,COUNT(*)
FROM DEPARTMENTS
GROUP BY LOCATION_ID;

--order result based on number of departments in desc
--      column1    column2

SELECT LOCATION_ID,COUNT(*)
FROM DEPARTMENTS
GROUP BY LOCATION_ID
ORDER BY COUNT(*) DESC;



--display how many countries we have in each region
select REGION_ID,count(*) from countries
group by REGION_ID ;


--order result based on number of countries in desc
SELECT REGION_ID,count(*) from countries
group by REGION_ID
order by count(*) desc;

select REGION_ID,count (*) from COUNTRIES
group by REGION_ID
order by 2 desc ;

--get me total salary for each department from employees table.
    select DEPARTMENT_ID,sum(SALARY) from employees
    group by DEPARTMENT_ID;

    select DEPARTMENT_ID,sum(SALARY) from employees
    where DEPARTMENT_ID is not null -- to remove null department id form the result
    group by DEPARTMENT_ID;


---display jobids where their avg salary more than 5K
select JOB_ID,AVG(SALARY)
from EMPLOYEES
group by JOB_ID
Having AVG(SALARY) > 5000;
/*
--WHERE, satır bazında filtreleme yapmak için kullanılır ve gruplama işlemi gerçekleşmeden önce uygulanır.
--HAVING, gruplandırma işlemi sonrasında hesaplanan sonuçlara (örneğin, AVG(SALARY)) koşul uygulamak için kullanılır
 WHERE ifadesinin grup fonksiyonları (örneğin, AVG, SUM, COUNT gibi) için kullanılamamasıdır.
 */


--display departments where their average salary is more than 6k
SELECT DEPARTMENT_ID, ROUND(AVG(SALARY))
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL --to remove null department id from the result
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) >6000
ORDER BY 2 ASC;

--IQ --> display duplicate(more than one) firstname from employees table.
SELECT FIRST_NAME, count(*) FROM employees
GROUP BY FIRST_NAME
HAVING COUNT(*) > 1;

--display department id where employees count is bigger than 5
select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 5
order by 2 desc; -- 2 meant --> count(*)


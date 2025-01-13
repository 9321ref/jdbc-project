SELECT * FROM EMPLOYEES;

/*
     1.Column alieases --> it is temporary name to show in display

    2.Table alieases which we will learn later
        Employees --> E
 */

--the query below second column name is "ROUND(AVG(SALARY))" which is not nice.
SELECT DEPARTMENT_ID, ROUND(AVG(SALARY)) as "Avarage_salary" -- column adini degistirir as ve sonrasi
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL --to remove null department id from the result
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) >6000
ORDER BY 2 ASC;


SELECT DEPARTMENT_ID, ROUND(AVG(SALARY)) as Avarage_salary -- co
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL --to remove null department id from the result
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) >6000
ORDER BY 2 ASC;


--manager is asking display annual salary for all employees as annual_salary
select FIRST_NAME, SALARY*12 as "Annual_Salary"
from EMPLOYEES;

--NOTE --> we are just displaying and nothing will change it DB


---------------------STRING MANIPULATION---------------------
/*
        CONCATENATE
            --Java --> + first_name+" "+last_name
            --SQL --> || first_name||' '||last_name
 */
--I want to get fullname column where we have firstname+' '+lastname
select FIRST_NAME||' '||LAST_NAME as full_name
from EMPLOYEES;

--add @cydeo.com to all the emails in the employee table.
--solution 1
select EMAIL||' '||'@cydeo.com' from EMPLOYEES;

--solution 2
select concat(EMAIL,'@cydeo.com') from EMPLOYEES;

--lowercase
select lower(EMAIL||'@cydeo.com') from EMPLOYEES;

--uppercase
select upper(EMAIL||'@cydeo.com')from EMPLOYEES;

--INITCAP
--it makes first letter uppercase

SELECT INITCAP(EMAIL||'@cydeo.com') from EMPLOYEES;

--LENGTH
select email,length(EMAIL) as email_length from EMPLOYEES;


--display all employees where firstname length equals 6
select FIRST_NAME from employees
WHERE LENGTH(FIRST_NAME) = 6;


--another solution
select FIRST_NAME from employees
where FIRST_NAME like '------';


--how many question ??
select count(*) from EMPLOYEES
where FIRST_NAME like '------';

--display initial from firstname and lastname --> S.K.  ---- N.K.

--SUBSTR(columName,beginningIndex,numberOfChar)
select * from employees;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initials from employees;

select substr(FIRST_NAME,1,1)||'.'||substr(LAST_NAME,1,1)||'.' as initials from employees; --index numara 0 veya 1 den baslayabilir

select FIRST_NAME,substr(FIRST_NAME,-2,2) from EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,-3) from EMPLOYEES;



/*
    - if beginning index is 0, it is treated as 1
    -if the beginning index negative, it will start from backwards
    -if we don't specify number of char it will work till the end
 */
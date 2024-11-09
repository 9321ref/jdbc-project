--SELECT * FROM EMPLOYEES;

/*
 it shows different values from query result based provided column
 */

--it returns 107
select FIRST_NAME from EMPLOYEES;

--it removed duplicates and returned 91 results
SELECT DISTINCT FIRST_NAME FROM EMPLOYEES;

-- it will check each row to filter different columns --> * --> all columns
SELECT DISTINCT * FROM EMPLOYEES;

--19
select * from jobs;
--19
select job_id from jobs;

--19
--since primary key cannot be duplicate it gives the same result
select distinct job_id from jobs;




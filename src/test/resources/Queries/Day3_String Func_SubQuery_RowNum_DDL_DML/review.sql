select * from employees;

--Task: how many locations we have for each country
select COUNTRY_ID, count(*)
from LOCATIONS
group by COUNTRY_ID;


--order them based country_id asc
SELECT COUNTRY_ID,COUNT(*)
FROM LOCATIONS
GROUP BY COUNTRY_ID
ORDER BY COUNTRY_ID DESC;


--what if I want to see only US,UK and CA
select COUNTRY_ID, count(*)
from LOCATIONS
where COUNTRY_ID in('US','UK','CA')
group by COUNTRY_ID
order by 1 desc; -- country_id asc yazilabilir 1 yerine


--display where location count is bigger than 2
select COUNTRY_ID, count(*)
from LOCATIONS
where COUNTRY_ID in('US','UK','CA')
group by COUNTRY_ID
having count(*)>2
order by 1 desc;


--TASK2: Display all employees salary in following format as column name Employees_salary
--Ex:
-- Steven makes 24000
-- Neena makes 17000

select * from employees;

select FIRST_NAME||' makes '||SALARY as employee_salary
from EMPLOYEES;


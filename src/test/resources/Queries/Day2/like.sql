SELECT * FROM EMPLOYEES;

/*
    -Percent   % --> for matching any sequence of characters. (0 or more
    - underscore _ --> for matching any single character

    -contains
    -startswith
    -endswith

*/

--display all employees where first_name starts with B
SELECT * FROM employees
WHERE FIRST_NAME LIKE 'B%';

--display all employees where first_name starts with and length of it 5 letters
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'B____';

--display 5 letter firstname from employees where middle char is z
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__z__';

--display firstname ends with 'e'
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%e'; -- it can be anything before e .but end with e

--display all employees where job id contains IT
SELECT * FROM EMPLOYEES
WHERE JOB_ID LIKE '%IT%';

--display all info where firstname starts with H ending with l
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'H%l';

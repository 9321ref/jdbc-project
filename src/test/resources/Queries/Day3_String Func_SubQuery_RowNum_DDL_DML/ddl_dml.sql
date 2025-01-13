SELECT * FROM EMPLOYEES;

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
--- CREATE TABLE ----
CREATE TABLE scrumteam_REFIANUR( -- sadece bir kez creat edildigi icin bi daha run yapilinca error veriyor
    emp_id INTEGER PRIMARY KEY, -- PRIMARY KEY YAZMA SEBEBIMIZ UNIQUE OLMASI ICIN ID
    first_name varchar(30) not null,
    last_name varchar(20) not null,
    job_title varchar(20),
    salary Integer
);

SELECT * FROM SCRUMTEAM;

/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/

INSERT INTO SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (1,'Severus','Snape','Tester',130000);

INSERT INTO SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (2,'Harold','Finch','Developer',140000);

INSERT INTO SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (3,'Phoebe','Buffay','Scrum Master',90000);

INSERT INTO SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (4,'Michael','Scofield','PO',150000);

--save changes so that other people,connections can get the updates. test.sql class ta bu scrumteam kullanabilmek icin commit yaptik
commit;


/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , …
WHERE condition;
*/

SELECT * FROM SCRUMTEAM;

UPDATE SCRUMTEAM
SET SALARY=SALARY+5000;

UPDATE SCRUMTEAM
SET SALARY= 110000
WHERE EMP_ID = 3;

commit work ; -- commit ayni greci yapar

/*
DELETE FROM table_name
WHERE condition;
*/

DELETE FROM SCRUMTEAM
WHERE EMP_ID = 4;

commit ;
--CRUD
--CREATE (INSERT)
--READ (SELECT)
--UPDATE (UPDATE)
--DELETE (DELETE)



--ALTER

--ADD NEW COLUMN
ALTER TABLE SCRUMTEAM ADD gender varchar(10);

SELECT * FROM SCRUMTEAM;

UPDATE SCRUMTEAM
SET gender ='Male'
WHERE EMP_ID = 1;


--RENAME THE COLUMN
ALTER TABLE SCRUMTEAM RENAME COLUMN SALARY TO ANNUAL_SALARY;

--DROP COLUMN
ALTER TABLE SCRUMTEAM DROP COLUMN GENDER; -- gender column remove from the column


--RENAME TABLE
ALTER TABLE SCRUMTEAM RENAME TO agileteam;

SELECT * FROM AGILETEAM;


--TRUNCATE
TRUNCATE TABLE AGILETEAM; -- tüm table icini siliyor.ama database de table olarak görünür

--DROP TABLE

DROP TABLE agileteam; -- datebase den bile siler

commit;

/*
    IQ --> what is the difference between TRUNCATE and DROP
        TRUNCATE --> it will delete table content,but keep the table
        DROP --> it will delete all content and table itself.


 */






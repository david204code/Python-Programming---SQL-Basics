-- 8 Maintain Database Objects Examples

-- 8.1 Tables

-- 8.1.1 CREATE Table
CREATE TABLE new_dept
	(
	dept_no INT NOT NULL,
	dept_name VARCHAR(20) NOT NULL,
	manager VARCHAR(20) DEFAULT 'Manager TBC',
	sales_target DECIMAL(12,4) DEFAULT 50.0000,
    update_date_time DATETIME DEFAULT GETDATE(),
    agreed CHAR(1) NULL
    );

-- 8.1.2 INSERT Records
INSERT INTO new_dept (dept_no,dept_name,manager,sales_target,update_date_time,agreed)
VALUES (6,'Factory Fittings',60.0000,'2016-08-10 15:12:48','Y');
INSERT INTO new_dept (dept_no,dept_name)
VALUES (7,'Garden Gnomes');
INSERT INTO new_dept (dept_no,dept_name)
VALUES (7,'Hospital Hotplants');
INSERT INTO new_dept (dept_no,dept_name)
VALUES (8,'Garden Gnomes');

SELECT * FROM new_dept;

-- 8.1.3 ALTER TABLE - Add Primary Key Constraint
DELETE FROM new_dept;

ALTER TABLE new_dept ADD PRIMARY KEY (dept_no);

ALTER TABLE new_dept DROP CONSTRAINT PK__new_dept__DCA63FA68997A0A5;

ALTER TABLE new_dept ADD CONSTRAINT PK_new_dept_no PRIMARY KEY (dept_no);

-- 8.1.4 CREATE TABLE with Primary Key
DROP TABLE new_dept;

CREATE TABLE new_dept
	(
	dept_no INT NOT NULL,
	dept_name CHAR(20) UNIQUE NOT NULL,
	manager CHAR(20) DEFAULT 'Manager TBC',
	sales_target DECIMAL(12,4) DEFAULT 50.0000,
    update_date_time DATETIME DEFAULT GETDATE(),
    agreed CHAR(1) NULL,
    PRIMARY KEY (dept_no)
    );
 
-- 8.1.5 CREATE TABLE with Primary Key Constraint
DROP TABLE new_dept;

CREATE TABLE new_dept
	(
	dept_no INT NOT NULL,
	dept_name CHAR(20) UNIQUE NOT NULL,
	manager CHAR(20) DEFAULT 'Manager TBC',
	sales_target DECIMAL(12, 4) DEFAULT 50.0000,
    update_date_time DATETIME DEFAULT GETDATE(),
    agreed CHAR(1) NULL,
    CONSTRAINT PK_new_dept_no PRIMARY KEY (dept_no)
    );
 
-- 8.1.6 ALTER TABLE - Add Foreign Key Constraint
ALTER TABLE new_dept ADD update_emp_no INT NOT NULL;
ALTER TABLE new_dept ADD CONSTRAINT FK_update_emp_no FOREIGN KEY (update_emp_no) REFERENCES salesperson (emp_no);

INSERT INTO new_dept (dept_no,dept_name,update_emp_no)
VALUES (8,'Hospital Hotplants',10);
INSERT INTO new_dept (dept_no,dept_name,update_emp_no)
VALUES (9,'Industrial Iceboxes',100);

ALTER TABLE new_dept DROP CONSTRAINT FK_update_emp_no;
ALTER TABLE new_dept DROP COLUMN update_emp_no;

-- 8.1.7 CREATE TABLE with Foreign Key
DROP TABLE new_dept;

CREATE TABLE new_dept
	(
	dept_no INT NOT NULL,
	dept_name CHAR(20) UNIQUE NOT NULL,
	manager CHAR(20) DEFAULT 'Manager TBC',
	sales_target DECIMAL(12,4) DEFAULT 50.0000,
    update_emp_no INT NOT NULL,
    update_date_time DATETIME DEFAULT GETDATE(),
    agreed CHAR(1) NULL,
    PRIMARY KEY (dept_no),
    FOREIGN KEY (update_emp_no) REFERENCES salesperson (emp_no)
    );
 
-- 8.1.8 CREATE Table with Foreign Key Constraint
DROP TABLE new_dept;

CREATE TABLE new_dept
	(
	dept_no INT NOT NULL,
	dept_name CHAR(20) UNIQUE NOT NULL,
	manager CHAR(20) DEFAULT 'Manager TBC',
	sales_target DECIMAL(12,4) DEFAULT 50.0000,
    update_emp_no INT NOT NULL,
    update_date_time DATETIME DEFAULT GETDATE(),
    agreed CHAR(1) NULL,
    CONSTRAINT PK_new_dept_no PRIMARY KEY (dept_no),
    CONSTRAINT FK_update_emp_no FOREIGN KEY (update_emp_no) REFERENCES salesperson (emp_no)
    );

-- 8.1.9 DROP Table
DROP TABLE new_dept;

-- 8.2 Indexes

-- 8.2.1 CREATE Single Column Index
CREATE INDEX IX_sales_target ON new_dept (sales_target);

INSERT INTO new_dept (dept_no,dept_name,sales_target,update_emp_no)
VALUES (8,'Hospital Hotplants',10,10);
INSERT INTO new_dept (dept_no,dept_name,sales_target,update_emp_no)
VALUES (9,'Industrial Iceboxes',10,10);

SELECT * FROM new_dept;

-- 8.2.2 CREATE Multiple Column Index
DROP INDEX IX_sales_target ON new_dept;

CREATE INDEX IX_sales_target ON new_dept (sales_target DESC,dept_no);

-- 8.2.3 CREATE Unique Column Index
DROP INDEX IX_sales_target ON new_dept;

DELETE FROM new_dept;

CREATE UNIQUE INDEX IX_sales_target ON new_dept (sales_target);

-- 8.2.4 DROP Index
DROP INDEX IX_sales_target ON new_dept;

-- No syntax to ALTER index - Need to DROP and (re)CREATE

-- 8.3 Views 

-- 8.3.1 CREATE View for Security / Maintenance
CREATE VIEW salesperson_public
AS
SELECT emp_no,first_name,last_name,tel
FROM salesperson;

SELECT * FROM salesperson_public;

-- 8.3.2 CREATE View to Simplify / Modularise
CREATE VIEW company_sales
AS
SELECT
	CM.company_name AS 'company name',
    CN.contact_name AS 'contact name',
    S.*
FROM company CM
JOIN contact CN
ON CM.company_no = CN.company_no
JOIN sale S
ON CN.company_no = S.company_no
AND CN.contact_code = S.contact_code;

SELECT * FROM company_sales;    

-- 8.3.3 CREATE View without CHECK OPTION
CREATE VIEW dept3_salesperson
AS
SELECT emp_no,first_name,last_name,dept_no
FROM salesperson
WHERE dept_no = 3;

SELECT * FROM dept3_salesperson;

-- 8.3.4 INSERT Records into View
INSERT INTO dept3_salesperson (emp_no,first_name,last_name,dept_no)
VALUES (70,'Leslie','Latchford',3);
INSERT INTO dept3_salesperson (emp_no,first_name,last_name,dept_no)
VALUES (80,'Marcus','Matthew',4);

SELECT * FROM salesperson;
SELECT * FROM dept3_salesperson;

-- 8.3.5 CREATE View with CHECK OPTION
DROP VIEW dept3_salesperson;

CREATE VIEW dept3_salesperson
AS
SELECT emp_no,first_name,last_name,dept_no
FROM salesperson
WHERE dept_no = 3
WITH CHECK OPTION;

SELECT * FROM dept3_salesperson;

-- 8.3.6 INSERT Records into View
INSERT INTO dept3_salesperson (emp_no,first_name,last_name,dept_no)
VALUES (90,'Norman','Nutfield',3);
INSERT INTO dept3_salesperson (emp_no,first_name,dept_no)
VALUES (100,'Peter',4);

SELECT * FROM salesperson;
SELECT * FROM dept3_salesperson;

-- 8.3.7 UPDATE Records on View
UPDATE dept3_salesperson
SET last_name = NULL
WHERE emp_no = 70;

UPDATE dept3_salesperson
SET last_name = 'Lapwing'
WHERE emp_no = 70;

UPDATE dept3_salesperson
SET salary = 16.0000
WHERE emp_no = 70;

-- 8.3.8 DELETE Records from View
DELETE FROM dept3_salesperson
WHERE emp_no = 70;

-- 8.3.9 ALTER View
ALTER VIEW salesperson_public
AS
SELECT emp_no,first_name,last_name,tel,salary
FROM salesperson;

-- 8.3.10 DROP View
DROP VIEW salesperson_public;

-- 8.4 Users and Security

-- 8.4.1 CREATE Users
CREATE LOGIN newuser1 WITH PASSWORD = 'Pa$$w0rd';
CREATE USER newuser1 FOR LOGIN newuser1;
CREATE LOGIN newuser2 WITH PASSWORD = 'Pa$$w0rd';
CREATE USER newuser2 FOR LOGIN newuser2;
CREATE LOGIN newuser3 WITH PASSWORD = 'Pa$$w0rd';
CREATE USER newuser3 FOR LOGIN newuser3;

SELECT * FROM sys.database_principals;

-- Check using MANAGEMENT Users and Privileges

-- 8.4.2 GRANT Privileges
GRANT ALL PRIVILEGES ON dbo.company_sales TO newuser1;
GRANT ALL PRIVILEGES ON dbo.company_sales TO newuser2,newuser3;

SELECT *
FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES
WHERE GRANTEE LIKE 'newuser%';

-- 8.4.3 REVOKE Privileges
REVOKE INSERT,UPDATE,DELETE ON dbo.company_sales FROM newuser1;
REVOKE ALL ON dbo.company_sales FROM newuser2;

SELECT *
FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES
WHERE GRANTEE LIKE 'newuser%';

-- 8.4.4 DROP Users
DROP USER newuser1;
DROP LOGIN newuser1;
DROP USER newuser2;
DROP LOGIN newuser2;
DROP USER newuser3;
DROP LOGIN newuser3;

SELECT * FROM sys.database_principals;

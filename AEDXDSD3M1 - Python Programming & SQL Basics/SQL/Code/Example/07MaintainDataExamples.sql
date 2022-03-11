-- 7 Maintain Data Examples

-- 7.1 INSERT Records

-- 7.1.1 CREATE Table new_dept
CREATE TABLE new_dept
	(
	dept_no INT NOT NULL,
	dept_name VARCHAR(20) UNIQUE NOT NULL,
	manager VARCHAR(20) DEFAULT 'Manager TBC',
	sales_target DECIMAL(12, 4) NULL,
    update_date_time DATETIME DEFAULT GETDATE(),
    agreed CHAR(1) NULL,
    CONSTRAINT PK_new_dept_no PRIMARY KEY (dept_no)
    );

-- 7.1.2 INSERT single record using columns
INSERT INTO new_dept (dept_no,dept_name,manager,sales_target,update_date_time,agreed)
VALUES (6,'Factory Fittings','Francis Forsyth',60.0000,'2016-08-10 15:12:48','Y');

SET IMPLICIT_TRANSACTIONS ON;
BEGIN TRANSACTION;
INSERT INTO new_dept
VALUES (6,'Factory Fittings','Francis Forsyth',60.0000,'2016-08-10 15:12:48','Y');
COMMIT TRANSACTION;

-- 7.1.3 INSERT single record not using columns
INSERT INTO new_dept
VALUES (7,'Garden Gnomes','Geoff Gordan',70.0000,'2016-08-10 15:27:23','Y');

-- 7.1.4 INSERT single record using non-null columns
INSERT INTO new_dept (dept_no,dept_name)
VALUES (8,'Hospital Hotplants');

-- 7.1.5 INSERT single record using a function
INSERT INTO new_dept (dept_no,dept_name,manager,sales_target,update_date_time,agreed)
VALUES (9,'Industrial Iceboxes','Ian Irving',90.0000,SYSDATETIME(),'Y');

-- 7.1.6 INSERT multiple records from another table
INSERT INTO dept (dept_no,dept_name,manager,sales_target)
SELECT dept_no,dept_name,manager,sales_target
FROM new_dept
WHERE agreed = 'Y';

-- 7.2 UPDATE Records

-- 7.2.1 UPDATE single record single column
UPDATE new_dept
SET sales_target = 65
WHERE dept_no = 6;

-- 7.2.2 UPDATE single record multiple columns
UPDATE new_dept
SET
	dept_name = 'Factory Fixtures',
	sales_target = 70 
WHERE dept_no = 6;

-- 7.2.3 UPDATE multiple records
UPDATE new_dept
SET sales_target = sales_target * 1.25
WHERE sales_target IS NOT NULL;

-- 7.2.4 UPDATE all records
UPDATE new_dept
SET sales_target = 100;

-- 7.2.5 UPDATE from another table
UPDATE dept
SET dept.sales_target = new_dept.sales_target
FROM dept
INNER JOIN new_dept
ON dept.dept_no = new_dept.dept_no
WHERE new_dept.agreed = 'Y';

-- 7.2.6 UPDATE from another table using aliases
UPDATE D
SET sales_target = ND.sales_target
FROM dept D
INNER JOIN new_dept ND
ON D.dept_no = ND.dept_no
WHERE ND.agreed = 'Y';

-- 7.3 DELETE Records

-- 7.3.1 DELETE single record
DELETE FROM new_dept
WHERE dept_no = 6;

-- 7.3.2 DELETE multiple records
DELETE FROM new_dept
WHERE agreed = 'Y';

-- 7.3.3 DELETE all records
DELETE FROM new_dept;

-- 7.3.4 DELETE from another table
-- Need to rerun SQL 7.1.2 / 3 / 4 / 5 to reinsert new_dept records
DELETE dept
FROM dept
INNER JOIN new_dept
ON dept.dept_no = new_dept.dept_no
WHERE new_dept.agreed = 'Y';

-- 7.3.5 DELETE from another table using aliases
DELETE D
FROM dept D
INNER JOIN new_dept ND
ON D.dept_no = ND.dept_no
WHERE ND.agreed = 'Y';
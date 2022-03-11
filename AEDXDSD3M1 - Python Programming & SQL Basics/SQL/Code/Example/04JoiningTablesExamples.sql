-- 4 JOIN Examples

-- 4.1 INNER JOINS

-- 4.1.1 JOIN of Department with Salesperson
SELECT
	D.dept_name,
    D.dept_no AS 'D Dept No',
    SP.dept_no AS 'SP Dept No',
    SP.emp_no,
    SP.first_name,
    SP.last_name
FROM dept D
INNER JOIN salesperson SP
ON D.dept_no = SP.dept_no
ORDER BY D.dept_name,SP.emp_no;

-- 4.1.2 JOIN of Salesperson with Department
SELECT
	SP.emp_no,
    SP.first_name,
    SP.last_name,
	SP.dept_no AS 'SP Dept No',
    D.dept_no AS 'D Dept No',
    D.dept_name
FROM salesperson SP
INNER JOIN dept D
ON SP.dept_no = D.dept_no
ORDER BY SP.emp_no;

-- 4.1.3 JOIN of more than two tables
SELECT
	D.dept_name,
    SP.last_name,
    S.order_no
FROM dept D
INNER JOIN salesperson SP
ON D.dept_no = SP.dept_no
INNER JOIN sale S
ON SP.emp_no = S.emp_no
ORDER BY D.dept_name,SP.last_name,S.order_no;    
    
-- 4.1.4 Composite JOIN
SELECT
	S.order_no,
    S.company_no,
    S.contact_code,
    C.contact_name
FROM sale S
INNER JOIN contact C
ON S.company_no = C.company_no
AND S.contact_code = C.contact_code
ORDER BY S.order_no;

-- 4.1.5 Self JOIN
SELECT
	SP1.county,
    SP1.last_name,
    SP2.last_name
FROM salesperson SP1
INNER JOIN salesperson SP2
ON SP1.county = SP2.county
WHERE SP1.emp_no > SP2.emp_no
ORDER BY SP1.county,SP1.last_name;

-- 4.2 OUTER JOINS

-- 4.2.1 OUTER JOIN of all Departments
SELECT
	D.dept_name,
    SP.first_name,
    SP.last_name
FROM dept D
LEFT OUTER JOIN salesperson SP
ON D.dept_no = SP.dept_no
ORDER BY D.dept_name,SP.first_name,SP.last_name;

-- 4.2.2 OUTER JOIN of Departments with no Salespersons
SELECT
	D.dept_name,
    SP.first_name,
    SP.last_name
FROM dept D
LEFT OUTER JOIN salesperson SP
ON D.dept_no = SP.dept_no
WHERE SP.dept_no IS NULL
ORDER BY D.dept_name;

-- 4.2.3 OUTER JOIN of all Salespersons
SELECT
	SP.first_name,
    SP.last_name,
    D.dept_name
FROM dept D
RIGHT OUTER JOIN salesperson SP
ON D.dept_no = SP.dept_no
ORDER BY SP.first_name,SP.last_name,D.dept_name;

-- 4.2.4 OUTER JOIN of Salespersons with no Department

-- Need to modify table to allow NULL and invalid dept_no to be added

INSERT salesperson (emp_no,first_name,last_name,dept_no,salary,sales_target,county,post_code,tel,notes)
VALUES (100,'Peter','Price',NULL,20.0000,29.0000,'Essex','IG3 8AT','01708-776688','No Department');
INSERT salesperson (emp_no,first_name,last_name,dept_no,salary,sales_target,county,post_code,tel,notes)
VALUES (110,'Quentin','Quick',10,30.0000,39.0000,'Essex','IG2 8ZX','01708-773123','Invalid Department');

ALTER TABLE salesperson ALTER COLUMN dept_no INT NULL;
ALTER TABLE salesperson DROP CONSTRAINT FK_dept_no;

SELECT
	SP.first_name,
    SP.last_name,
    D.dept_name
FROM dept D
RIGHT OUTER JOIN salesperson SP
ON D.dept_no = SP.dept_no
WHERE D.dept_no IS NULL
ORDER BY SP.first_name,SP.last_name,D.dept_name;

-- 4.2.5 LEFT v RIGHT OUTER JOIN
SELECT
	D.dept_name,
    SP.first_name,
    SP.last_name
FROM salesperson SP 
RIGHT OUTER JOIN dept D
ON SP.dept_no = D.dept_no
ORDER BY D.dept_name,SP.first_name,SP.last_name;

-- 4.2.6 FULL OUTER JOIN
SELECT
	D.dept_name,
    SP.first_name,
    SP.last_name
FROM dept D
FULL OUTER JOIN salesperson SP
ON D.dept_no = SP.dept_no
ORDER BY dept_name,first_name,last_name;
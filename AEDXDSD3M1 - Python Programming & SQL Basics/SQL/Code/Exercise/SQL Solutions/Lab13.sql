use qastore;

--ex 6.1
--ex 6.1.1

CREATE VIEW dept_public AS
SELECT
	dept_no,
	dept_name,
	manager
FROM dept

SELECT * FROM dept_public;

-- ex 6.1.2

CREATE VIEW dept_sale AS
SELECT
	D.dept_name AS 'dept_name',
	SP.last_name as 'salesperson name',
	S.*
FROM dept D
INNER JOIN salesperson SP
ON D.dept_no = SP.dept_no
INNER JOIN sale S
ON SP.emp_no = S.emp_no

SELECT * FROM dept_sale;

--EX 6.1.2

ALTER VIEW dept_public AS
SELECT
	dept_no,
	dept_name
FROM dept

SELECT * FROM dept_public;

DROP VIEW dept_public;

use qastore;

-- ex5.1
-- ex 5.1.1

SELECT
	C.company_name,
	C.company_no as 'Company Company No',
	CN.company_no as 'Contact Company No',
	CN.contact_code,
	CN.contact_name
FROM company C
INNER JOIN contact CN
ON C.company_no = CN.company_no
ORDER BY C.company_name

-- ex 5.1.2

SELECT
	C.company_name,
	C.company_no as 'Company Company No',
	CN.company_no as 'Contact Company No',
	CN.contact_code,
	CN.contact_name
FROM contact CN
INNER JOIN company C
ON C.company_no = CN.company_no
ORDER BY C.company_name

--ex 5.1.3

SELECT
	S.order_no,
	S.emp_no as 'S Emp No',
	SP.emp_no as 'SP Emp No',
	SP.first_name,
	SP.last_name,
	SP.dept_no AS 'SP Dept No',
	D.dept_no as 'D Dept No',
	D.dept_name
FROM sale S
INNER JOIN salesperson SP
ON S.emp_no = SP.emp_no
INNER JOIN dept D
ON SP.dept_no = D.dept_no

-- ex 5.1.4

SELECT
	CN.company_no,
	CN.contact_code,
	S.order_no,
	S.order_value,
	S.order_date
FROM contact CN
INNER JOIN sale S
ON CN.company_no = S.company_no AND CN.contact_code = S.contact_code
ORDER BY CN.company_no,CN.contact_code

-- ex 5.2
-- ex 5.2.1

SELECT
	SP.emp_no,
	SP.first_name,
	SP.last_name,
	S.order_no,
	S.company_no,
	S.contact_code,
	S.order_value
FROM salesperson SP
LEFT OUTER JOIN sale S
ON SP.emp_no = S.emp_no
ORDER BY SP.emp_no,S.order_no

-- EX 5.2.2

SELECT
	SP.emp_no,
	SP.first_name,
	SP.last_name
FROM salesperson SP
LEFT OUTER JOIN sale S
ON SP.emp_no = S.emp_no
WHERE S.emp_no is NULL
ORDER BY SP.emp_no,S.order_no
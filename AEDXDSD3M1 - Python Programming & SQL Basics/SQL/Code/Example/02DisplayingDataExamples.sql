-- 2 Displaying Data Examples

-- 2.1 Simple Query

-- 2.1.1 SELECT all columns
use qastore;

SELECT *
FROM company;

-- 2.1.2 SELECT with comments
SELECT * -- In-line comment
FROM company; 
/*
Block comment'
*/

-- 2.1.3 SELECT specifying columns
SELECT
	company_no,
    company_name,
    county
FROM company;

-- 2.1.4 SELECT calculated / virtual column and alias
SELECT
	last_name,
    sales_target,
	sales_target * 1.2 AS 'New Sales Target'
FROM salesperson;

-- 2.1.5 SELECT with arithmetic operators
SELECT
	emp_no,
    salary,
    sales_target,
	salary + sales_target * 0.03 AS 'Total Pay'
FROM salesperson;

-- 2.1.6 SELECT with arithmetic operators using brackets
SELECT 
	emp_no,
    salary,
    sales_target,
    salary + (sales_target * 0.03) AS 'Total Pay'
FROM salesperson;

-- 2.1.7 SELECT with arithmetic operator on text
SELECT
    first_name,
    last_name,
    first_name + last_name,
    CONCAT(first_name,' ',last_name) AS 'Full Name'
FROM salesperson;

-- 2.1.8 SELECT with function
SELECT
	order_no,
    description,
    SUBSTRING(description,1,15)
FROM sale;

-- 2.1.9 SELECT with function
SELECT
	emp_no,
    notes,
    COALESCE(notes,'No notes entered')
FROM salesperson;

-- 2.1.10 SELECT with DISTINCT
SELECT DISTINCT
	dept_no
FROM salesperson;

-- 2.2 Sort Results

-- 2.2.1 SELECT with ORDER BY ascending
SELECT *
FROM contact
ORDER BY company_no ASC,contact_code ASC;

-- 2.2.2 SELECT with ORDER BY descending
SELECT *
FROM contact
ORDER BY company_no DESC,contact_code DESC;

-- 2.2.3 SELECT with ORDER BY combination
SELECT *
FROM contact
ORDER BY company_no DESC,contact_code ASC;

-- 2.2.4 SELECT with ORDER BY using alias
SELECT
	CONCAT(company_no,contact_code) AS 'Code'
FROM contact
ORDER BY 'Code' ASC;

-- 2.3 Filter Results

-- 2.3.1 SELECT with WHERE using relational operator
SELECT *
FROM sale
WHERE order_value > 5
ORDER BY order_no;

-- 2.3.2 SELECT with WHERE using logical operator
SELECT *
FROM salesperson
WHERE sales_target >= 7 AND sales_target <= 12;

-- 2.3.3 SELECT with WHERE using BETWEEN
SELECT *
FROM salesperson
WHERE sales_target BETWEEN 7 AND 12;

-- 2.3.4 SELECT with WHERE using IN
SELECT *
FROM salesperson
WHERE first_name IN ('Ferne','Gertie','Hattie');

-- 2.3.5 SELECT with WHERE using LIKE
SELECT *
FROM salesperson
WHERE first_name LIKE 'F%';

-- 2.3.6 SELECT with WHERE using multiple AND / OR
SELECT *
FROM salesperson
WHERE county = 'Hampshire'
OR dept_no = 3
AND first_name = 'Karena';

-- 2.4 Complex Query

-- 2.4.1 SELECT using TOP
SELECT TOP 1 *
FROM salesperson
ORDER BY salary;

-- 2.4.2 SELECT using UNION
SELECT
	last_name,
    sales_target * 2 AS 'New Target'
FROM salesperson
WHERE sales_target <= 10
UNION
SELECT
	last_name,
    sales_target / 2 AS 'New Target'
FROM salesperson
WHERE sales_target > 10
ORDER BY last_name;

-- 2.4.3 SELECT using CASE value
SELECT
    last_name,
    dept_no,
    CASE dept_no
        WHEN 1 THEN 'Dept 1'
        WHEN 2 THEN 'Dept 2'
        ELSE 'Dept unknown'
    END AS 'Department'
FROM salesperson
ORDER BY last_name;

-- 2.4.4 SELECT using CASE condition
SELECT
    last_name,
    sales_target,
    CASE
        WHEN sales_target <= 9  THEN 'Low'
        WHEN sales_target <= 12 THEN 'Medium'
        ELSE 'High'
    END AS 'Rating'
FROM salesperson
ORDER BY last_name,sales_target;

-- 2.4.5 SELECT with WHERE using NULL
SELECT *
FROM salesperson
WHERE notes IS NULL

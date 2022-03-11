-- 5 Summarised Queries Examples

-- 5.1 Aggregate Functions

-- 5.1.1 COUNT / MIN / MAX / SUM / AVG
SELECT
	COUNT(*),
    COUNT(post_code),
    MIN(sales_target),
    MAX(sales_target),
    SUM(sales_target),
    AVG(sales_target)
FROM salesperson;

-- 5.1.2 Aggregate Functions on text field
SELECT
	COUNT(post_code),
    MIN(post_code),
    MAX(post_code)
FROM salesperson;

-- 5.2 Subtotals - GROUP BY

-- 5.2.1 Subtotal of single column
SELECT
	emp_no,
    COUNT(*) AS 'No of Sales',
    MIN(order_value),
    MAX(order_value),
    SUM(order_value),
    AVG(order_value)
FROM sale
GROUP BY emp_no;   

-- 5.2.2 Subtotal of multiple columns
SELECT
	company_no,
    emp_no,
    COUNT(*) AS 'No of Sales',
    MIN(order_value),
    MAX(order_value),
    SUM(order_value),
    AVG(order_value)
FROM sale
GROUP BY company_no,emp_no; 

-- 5.2.3 Subtotal of multiple tables and columns
SELECT
	SP.dept_no,
    S.emp_no,
    COUNT(*) AS 'No of Sales',
    MIN(S.order_value),
    MAX(S.order_value),
    SUM(S.order_value),
    AVG(S.order_value)
FROM salesperson SP
JOIN sale S
ON SP.emp_no = S.emp_no
GROUP BY SP.dept_no,S.emp_no;

-- 5.2.4 Subtotal Filter Input
SELECT
	SP.dept_no,
    S.emp_no,
    COUNT(*) AS 'No of Sales',
    SUM(S.order_value)
FROM salesperson SP
JOIN sale S
ON SP.emp_no = S.emp_no
WHERE company_no = 3000
GROUP BY SP.dept_no,S.emp_no;

-- 5.3 Filtering Results - HAVING

-- 5.3.1 Filter Results
SELECT
	emp_no,
    SUM(order_value)
FROM sale
GROUP BY emp_no
HAVING SUM(order_value) > 10;  

-- 5.3.2 Sorting Results
SELECT
	emp_no,
    SUM(order_value)
FROM sale
GROUP BY emp_no
HAVING SUM(order_value) > 10
ORDER BY SUM(order_value) DESC;
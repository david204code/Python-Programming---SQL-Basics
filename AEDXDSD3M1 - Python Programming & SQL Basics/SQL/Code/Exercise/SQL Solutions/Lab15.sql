USE qastore;

-- ex 8.1
-- ex 8.1.1

SELECT
	COUNT(*),
	MIN(order_value),
	MAX(order_value),
	SUM(order_value),
	AVG(order_value)
FROM sale;

-- ex 8.1.2

SELECT
	COUNT(company_order_no),
	MIN(company_order_no),
	MAX(company_order_no),
	MIN(order_date),
	MAX(order_date)
FROM sale

-- EX 8.2
-- ex 8.2.1

SELECT
	dept_no,
	COUNT(*) AS 'No of Salespersons',
	MIN(salary),
	MAX(salary),
	SUM(salary),
	AVG(salary)
FROM  salesperson
GROUP BY dept_no

-- ex 8.2.2

SELECT
	dept_no,
	county,
	MIN(salary),
	MAX(salary),
	SUM(salary),
	AVG(salary)
FROM salesperson
GROUP BY dept_no, county

-- ex 8.2.3

SELECT
	C.company_no,
	C.county,
	COUNT(*) AS 'No of Sales',
	MIN(order_value),
	MAX(order_value),
	SUM(order_value),
	AVG(order_value)
FROM company C
JOIN sale S
ON C.company_no = S.company_no
GROUP BY C.company_no,C.county

-- EX 8.2.4

SELECT
	C.company_no,
	C.county,
	COUNT(*) AS 'No of Sales',
	SUM(order_value)
FROM company C
JOIN sale S
ON C.company_no = S.company_no
WHERE C.county = 'London'
GROUP BY C.company_no,C.county

-- ex 8.2.5

SELECT
	dept_no,
	SUM(salary)
FROM salesperson
GROUP BY dept_no
HAVING SUM(salary) > 10

-- EX 8.2.6

SELECT
	dept_no,
	SUM(salary)
FROM salesperson
GROUP BY dept_no
HAVING SUM(salary) > 10
ORDER BY SUM(salary) DESC

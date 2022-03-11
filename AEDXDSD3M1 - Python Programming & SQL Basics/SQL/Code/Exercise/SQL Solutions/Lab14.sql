use qastore;

--ex 7.1
--ex7.1.1

SELECT *
FROM sale
WHERE company_no IN
	(
		SELECT 
			company_no
		FROM company
		WHERE county = 'London'
	);

-- ex 7.1.2

SELECT
	S.*
FROM sale S
JOIN company C
ON S.company_no = C.company_no
WHERE C.county = 'London'

-- ex 7.1.3

SELECT *
FROM sale
WHERE company_no NOT IN
	(
		SELECT 
			company_no
		FROM company
		WHERE county = 'London'
	);



SELECT
	S.*
FROM sale S
JOIN company C
ON S.company_no = C.company_no
WHERE C.county != 'London'

-- ex 7.2
-- ex 7.2.1

SELECT *
FROM salesperson
WHERE salary = 
	(
		SELECT MAX(salary)
		FROM salesperson
	);

-- ex 7.2.2

SELECT *
FROM salesperson
WHERE salary != 
	(
		SELECT MAX(salary)
		FROM salesperson
	);

--ex 7.3
-- ex 7.3.1

SELECT *
FROM salesperson
WHERE EXISTS
	(
		SELECT MIN(salary)
		FROM salesperson
		HAVING MIN(salary) <= 10
	);

--ex 7.3.2

SELECT *
FROM salesperson
WHERE NOT EXISTS
	(
		SELECT MAX(salary)
		FROM salesperson
		HAVING MAX(salary) >= 30
	);

-- ex 7.4
-- ex 7.4.1

SELECT
	SP.last_name,
	SUM(S.order_value) as 'Total Order Value'
FROM salesperson SP
JOIN sale S
ON SP.emp_no = S.emp_no
GROUP BY SP.emp_no,SP.last_name
HAVING SUM(S.order_value) = 
	(
		SELECT MAX(sum_order_value)
		FROM
		(
			SELECT
				SP.emp_no,
				SUM(S.order_value) AS 'sum_order_value'
			FROM salesperson SP
			JOIN sale S
			ON SP.emp_no = S.emp_no
			GROUP BY SP.emp_no
		)
		as max_sum
	);

-- ex 7.4.2

SELECT
	SP.last_name,
	SUM(S.order_value) as 'Total Order Value'
FROM salesperson SP
JOIN sale S
ON SP.emp_no = S.emp_no
GROUP BY SP.emp_no,SP.last_name
HAVING SUM(S.order_value) = 
	(
		SELECT MIN(sum_order_value)
		FROM
		(
			SELECT
				SP.emp_no,
				SUM(S.order_value) AS 'sum_order_value'
			FROM salesperson SP
			JOIN sale S
			ON SP.emp_no = S.emp_no
			GROUP BY SP.emp_no
		)
		as min_sum
	);

-- ex 7.4.3

SELECT
	SP.emp_no,
	SP.first_name,
	SP.last_name
FROM salesperson SP
where SP.emp_no NOT IN
	(
		SELECT DISTINCT
			SP.emp_no
		FROM salesperson SP
		JOIN sale S
		ON SP.emp_no = S.emp_no
	);

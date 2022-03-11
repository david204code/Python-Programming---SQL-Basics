-- 6 Sub-Queries Examples

-- 6.1 IN

-- 6.1.1 IN
SELECT *
FROM salesperson
WHERE dept_no IN
	(
    SELECT dept_no
    FROM dept
    WHERE dept_name LIKE '%Systems'
    );
    
-- 6.1.2 Alternative using JOIN
SELECT SP.*
FROM salesperson SP
INNER JOIN dept D
ON SP.dept_no = D.dept_no
WHERE dept_name LIKE '%Systems';

-- 6.1.3 NOT IN
SELECT *
FROM salesperson
WHERE dept_no NOT IN
	(
    SELECT dept_no
    FROM dept
    WHERE dept_name LIKE '%Systems'
    );

-- 6.2 Equals

-- 6.2.1 Equals
SELECT *
FROM sale
WHERE order_value =
	(
    SELECT MIN(order_value)
    FROM sale
    );

-- 6.2.2 Not Equals
SELECT *
FROM sale
WHERE order_value !=
	(
    SELECT MIN(order_value)
    FROM sale
    );
    
-- 6.3 EXISTS

-- 6.3.1 EXISTS
SELECT *
FROM sale
WHERE EXISTS
	(
    SELECT MAX(order_value)
    FROM sale
    HAVING MAX(order_value) > 10
    );

-- 6.3.2 NOT EXISTS
SELECT *
FROM sale
WHERE NOT EXISTS
	(
    SELECT MAX(order_value)
    FROM sale
    HAVING MAX(order_value) > 30
    );
    
-- 6.4 Multiple Level

-- 6.4.1 Salesperson with Maximum Number of Orders
SELECT SP.emp_no,SP.last_name,COUNT(S.order_no) AS 'No of Orders'
FROM salesperson SP
JOIN sale S
ON SP.emp_no = S.emp_no
GROUP BY SP.emp_no, SP.last_name
HAVING COUNT(S.order_no) =
	(
	SELECT MAX(count_order_no)
	FROM
		(
		SELECT SP.emp_no,COUNT(S.order_no) AS 'count_order_no'
		FROM salesperson SP
		JOIN sale S
		ON SP.emp_no = S.emp_no
		GROUP BY SP.emp_no
		)
    AS maximum_count 
	);

-- Salesperson with No Orders

SELECT emp_no,last_name
FROM salesperson
WHERE emp_no NOT IN
	(
    SELECT SP.emp_no
    FROM salesperson SP
    JOIN sale S
	ON SP.emp_no = S.emp_no
	GROUP BY SP.emp_no
	);
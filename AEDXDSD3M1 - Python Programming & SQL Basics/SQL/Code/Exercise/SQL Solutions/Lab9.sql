-- ex 2.1
-- ex2.1.1

SELECT *
FROM dept;

SELECT *
FROM salesperson;  -- from sales person

SELECT *
FROM sale;

SELECT *
FROM contact;

-- ex 2.1.2
/*
line 1
line 2
line 3
*/

-- ex 2.1.3

SELECT dept_no
FROM dept;

SELECT
	emp_no,
	last_name,
	tel
FROM salesperson

SELECT
	company_no,
	order_no,
	order_value
FROM sale

SELECT
	job_title,
	contact_name
FROM contact

-- ex 2.1.4

SELECT 
	dept_no,
	dept_name,
	sales_target AS 'Old Sales Target',
	sales_target * 1.5 as 'New Sales Target'
FROM dept;

SELECT
	order_no,
	order_value as 'Old Order Value',
	order_value * 0.5 as 'New Order Value'
FROM sale

-- ex 2.1.5 / 2.1.6

SELECT
	first_name,
	last_name,
	salary * 1.5 as 'New Salary',
	sales_target * 1.5 as 'New Target',
	(salary * 1.5) * 0.1 + (sales_target * 1.5) *0.2 as 'Potential Bonus'
FROM salesperson


-- ex 2.1.7

SELECT
	company_no,
	contact_code + '/' + contact_name + '/' + job_title as 'Contact Details'
FROM contact

-- ex 2.1 8

SELECT DISTINCT
	company_no
FROM contact

SELECT DISTINCT
	company_no,
	contact_code
FROM sale

-- ex 2.2
-- ex 2.2.1

SELECT *
FROM dept
ORDER BY dept_no

SELECT *
FROM dept
ORDER BY manager

SELECT
	emp_no,
	first_name,
	last_name
FROM salesperson
ORDER BY first_name,last_name

SELECT
	order_date,
	order_value,
	order_no,
	emp_no
FROM sale
ORDER BY order_value,order_date desc

--ex 2.2.2

SELECT *
FROM company
ORDER BY company_no desc

SELECT *
FROM company
ORDER BY company_name desc

SELECT
	company_order_no,
	order_no,
	company_no,
	contact_code
FROM sale
ORDER BY company_order_no,order_no desc

SELECT
	order_value,
	order_date,
	company_no,
	order_no
FROM sale
ORDER BY order_value desc,order_date desc

-- ex 2.2.3

SELECT
	order_date,
	order_value,
	order_no,
	emp_no
FROM sale
ORDER BY order_date DESC, order_value

SELECT
	order_value,
	order_date,
	company_no,
	order_no
FROM sale
ORDER BY order_value desc,order_date desc

-- ex 2.2.4

SELECT
	first_name + ' ' +
	last_name as 'Full Name',
	county,
	post_code
FROM salesperson
ORDER BY 'Full Name' DESC


SELECT
	salary + sales_target * 0.2 as 'Potential Pay',
	emp_no
FROM salesperson
ORDER BY 'Potential Pay' DESC

--ex 2.3
-- ex 2.3.1

SELECT 
	dept_no,
	dept_name,
	sales_target
FROM dept
WHERE sales_target > 15
ORDER BY sales_target

SELECT 
	dept_no,
	dept_name,
	sales_target
FROM dept
WHERE sales_target <= 10
ORDER BY sales_target Desc

SELECT
	order_no,
	order_value,
	order_date
FROM sale
WHERE order_date <= '2000-07-23'

SELECT 
	company_no,
	company_name,
	county
FROM company
WHERE county <> 'Devon'


-- ex 2.3.2/2.3.4

SELECT 
	dept_no,
	dept_name,
	sales_target
FROM dept
WHERE sales_target BETWEEN 15 AND 25
ORDER BY sales_target

SELECT 
	dept_no,
	dept_name,
	sales_target
FROM dept
WHERE sales_target <= 10 OR sales_target >= 40
ORDER BY sales_target desc

SELECT 
	dept_no,
	dept_name,
	sales_target
FROM dept
WHERE sales_target NOT BETWEEN 10 AND 40
ORDER BY sales_target

SELECT
	order_no,
	order_value,
	order_date
FROM sale
WHERE order_date BETWEEN  '2000-07-01' AND '2000-08-31'

SELECT 
	company_no,
	company_name,
	county
FROM company
WHERE company_name LIKE 'H%' OR company_name LIKE 'I%' OR company_name LIKE 'J%'

-- EX 2.3.4

SELECT
	first_name,
	last_name,
	county
FROM salesperson
WHERE county in ('Hampshire', 'Kent', 'Surrey')

SELECT
	first_name,
	last_name,
	dept_no
FROM salesperson
WHERE dept_no in (1,2,4)

--ex 2.3.5

SELECT
	dept_name
FROM dept
WHERE dept_name LIKE 'C%'

SELECT
	dept_name
FROM dept
WHERE dept_name LIKE '%S'

SELECT
	dept_name
FROM dept
WHERE dept_name LIKE '%O%'

SELECT
	dept_name
FROM dept
WHERE dept_name LIKE '_N%'


--ex 2.3.7

SELECT *
FROM sale
WHERE (company_no = 3000 AND order_value < 20) OR order_date < '2000-05-01'


--ex 2.4

SELECT TOP 2 *
FROM dept
ORDER BY sales_target

SELECT TOP 2 *
FROM dept
ORDER BY sales_target desc



-- ex 2.4.2

SELECT *,
	CASE dept_no
		WHEN 1 THEN 'Europe'
		WHEN 2 THEN 'Europe'
		WHEN 3 THEN 'UK'
		WHEN 4 THEN 'USA'
		ELSE 'Market Unknown'
	END as 'Market'
FROM dept

-- ex 2.4.3

SELECT
	emp_no,
	first_name,
	last_name,
	post_code
FROM salesperson
WHERE post_code IS NULL

SELECT
	emp_no,
	first_name,
	last_name,
	post_code
FROM salesperson
WHERE post_code IS NOT NULL

SELECT
	emp_no,
	first_name,
	last_name,
	post_code
FROM salesperson
WHERE post_code <> 'RT8 8LP'



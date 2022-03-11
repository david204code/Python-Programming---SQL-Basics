
-- ex 4.1
--ex 4.1.1

SELECT
	dept_name,
	LEFT(dept_name,3),
	SUBSTRING(dept_name,5,2),
	UPPER(dept_name),
	LOWER(dept_name)
FROM dept

-- ex 4.1.2

SELECT
	dept_name,
	CHARINDEX(' ',dept_name),
	CHARINDEX('systems',dept_name)
FROM dept

-- ex 4.2
-- ex 4.2.1

SELECT
	order_date,
	CONVERT(DATE,order_date),
	CAST(order_date AS DATE),
	LEFT(DATENAME(WEEKDAY,order_date),3),
	DATEPART(dd,order_date),
	LEFT(DATENAME(MONTH,order_date),3),
	DATEPART(YYYY,order_date),
	LEFT(DATENAME(WEEKDAY,order_date),3) + ' ' + CAST(DATEPART(dd,order_date) as VARCHAR(2)) + ' ' + 
	LEFT(DATENAME(MONTH,order_date),3) + ' ' + CONVERT(VARCHAR(4),DATEPART(YYYY,order_date))
FROM sale

-- EX 4.2.2

SELECT
	order_date,
	CAST(order_date as time),
	CONCAT(DATEPART(HH,order_date),':',DATEPART(MM,order_date),':',DATEPART(SS,order_date))
FROM sale

select
	order_date,
	CAST(GETDATE() AS int),
	CAST(CAST(SYSDATETIME() AS datetime) AS int),
	CAST(GETUTCDATE() AS DATE),
	CAST(GETUTCDATE() AS TIME)
from sale

-- EX 4.2.4

SELECT
	GETDATE(),
	order_date,
	DATEADD(WEEK,1,order_date),
	DATEADD(HOUR,-1,order_date),
	DATEDIFF(SS,SYSDATETIME(),'2021-04-14 12:00:00')
FROM sale

-- EX 4.3

SELECT
	order_value,
	ROUND(order_value,1)
FROM sale

-- ex 4.4

SELECT
	emp_no,
	notes,
	ISNULL(notes,'No Notes Specified')
FROM salesperson

-- ex 4.5

SELECT
	order_date,
	GETDATE(),
	DATEPART(MI,GETDATE()),
	ROUND(DATEPART(MI,GETDATE()),-1)
FROM sale


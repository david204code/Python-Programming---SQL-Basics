-- 3 Functions Examples

-- 3.1 Text Functions

-- 3.1.1 LEFT / RIGHT / UPPER / LOWER Functions
SELECT
    first_name,
	LEFT(first_name,1) AS 'Initial',
    RIGHT(first_name,2) AS 'Last Two Characters',
    SUBSTRING(first_name,2,3) AS '2nd, 3rd and 4th Characters',
    UPPER(first_name) AS 'Upper Case',
    LOWER(first_name) AS 'Lower Case'
FROM salesperson;

-- 3.1.2 CHARINDEX Functions
SELECT
	first_name,
    CHARINDEX('n',first_name) AS 'Position of First "n"',
    CHARINDEX('er',first_name) AS 'Starting Position of "er"'
FROM salesperson;

-- 3.2 Date / Time Functions

-- 3.2.1 Date Functions
SELECT
    order_date,
	YEAR(order_date) AS 'Year of Order',
    DATEPART(qq,order_date) AS 'Quarter of Order',
    MONTH(order_date) AS 'Month of Order',
    DATEPART(ww,order_date) AS 'Week of Order',
    DAY(order_date) AS 'Day of Order',
    DATENAME(WEEKDAY,order_date) AS 'Day Name of Order',
    DATEPART(dw,order_date) AS 'Day of Week of Order'
FROM
    sale;    

-- 3.2.2 Time Functions
SELECT
    order_date,
	DATEPART(hh,order_date) AS 'Hour of Order',
    DATEPART(mi,order_date) AS 'Minute of Order',
    DATEPART(ss,order_date) AS 'Second of Order'
FROM
    sale;    

-- 3.2.3 Current Date / Time Functions
SELECT
	order_date,
    GETDATE() AS 'GetDate',
    SYSDATETIME() AS 'SysDateTime',
    GETUTCDATE() AS 'GetUTCDate'
FROM
	sale;
    
-- 3.2.4 Date / Time Calculation Functions
SELECT
	GETDATE(),
    order_date,
    DATEADD(DAY,1,order_date) AS 'Order Date + 1',
    DATEADD(DAY,-1,order_date) AS 'Order Date - 1',
    DATEDIFF(dd,order_date,GETDATE()) AS 'Days Since Order'
FROM 
	sale;

-- 3.3 Conversion Functions

-- 3.3.1 CAST / CONVERT / ROUND Functions
SELECT
	order_date,
    CAST(order_date AS DATE) AS 'CAST Order Date',
    CONVERT(DATE, order_date) AS 'CONVERT Order Date',
    order_value,
    CAST(order_value AS INT) AS 'CAST Order Value',
    CONVERT(INT, order_value) AS 'CONVERT Order Value',
    ROUND(order_value,1) AS 'ROUND Order Value to 1 DP'
FROM
	sale;

-- 3.4 NULL Functions

-- 3.4.1 ISNULL / COALESCE Functions
SELECT
	emp_no,
    post_code,
    ISNULL(post_code,'Not specified') AS 'ISNULL Post Code',
    COALESCE(post_code,'Not Specified') AS 'COALESCE Post Code'
FROM
	salesperson;

-- 3.5 Nested Functions

-- 3.5.1 Nested Functions
SELECT
	order_date,
    SYSDATETIME() AS 'SysDateTime',
    DATEPART(hh,(SYSDATETIME())) AS 'Hour',
    ROUND(DATEPART(mcs,(SYSDATETIME())),-4) AS 'Hundredths of Second'
FROM
	sale;
    
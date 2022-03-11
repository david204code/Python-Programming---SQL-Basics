--CREATE TABLE new_company
--	(
--	company_no INT NOT NULL,
--	company_name VARCHAR(20) UNIQUE NOT NULL,
--	tel VARCHAR(15) NULL,
--    county VARCHAR(15) DEFAULT 'TBC',
--    post_code CHAR(8) DEFAULT 'TBC',
--    added_date_time DATETIME DEFAULT GETDATE(),
--    approved CHAR(1) DEFAULT 'N',
--    CONSTRAINT PK_new_company_no PRIMARY KEY (company_no)
--    );

-- ex 3.1.2

use qastore;

INSERT INTO new_company
	(company_no,company_name,tel,county,post_code,added_date_time,approved)
	VALUES (5000,'Luxury Legumes Ltd','(01423) 599234','North Yorkshire','HG1 7XX','2016-11-16 14:01:34','Y');

INSERT INTO new_company
	SYSDATETIME(),added_date_time,approved)
	VALUES (6000,'Mobile Maps Ltd', '01228-644234','Cumbria','CA1 2HH','2016-11-16 14:08:22','Y');

INSERT INTO new_company
	(company_no,company_name)
	VALUES (7000,'Nickel Nails PLC')

INSERT INTO new_company
	(company_no,company_name,added_date_time)
	values(8000,'Office Options Ltd',SYSDATETIME())

INSERT INTO company
	(company_no,company_name,tel,county,post_code)
select
	company_no,company_name,tel,county,post_code
from new_company
where approved = 'y'

-- ex 3.2

UPDATE new_company
	SET company_name = 'Luxury Leggings PLC'
WHERE company_no = 5000

UPDATE new_company
	SET company_name = 'Mobile Mapping Inc',
		tel = '01228-644235',
		post_code = 'CA1 2HX',
		added_date_time = '2016-11-16 15:08:22'
WHERE company_no = 6000


UPDATE new_company
	set added_date_time = SYSDATETIME(),
		approved = 'Y'
WHERE approved = 'N'

UPDATE new_company
	set added_date_time = SYSDATETIME()

-- ex 3.3

DELETE FROM new_company
WHERE company_no = 5000


UPDATE new_company
	set 
		approved = 'N'
WHERE company_no > 6000

DELETE FROM new_company
WHERE approved = 'N'

DELETE FROM new_company
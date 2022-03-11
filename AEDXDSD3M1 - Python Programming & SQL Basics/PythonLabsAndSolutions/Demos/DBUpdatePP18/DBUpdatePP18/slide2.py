
import pyodbc
connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

sqlStr ="""INSERT INTO company
      (company_no, company_name, tel, county, post_code)
VALUES (5000,'QA','0207 888555','Devon','SE8 5ER')"""
conn = pyodbc.connect(connectionString)
cur = conn.cursor() 
cur.execute(sqlStr)

conn.commit()

conn.close()

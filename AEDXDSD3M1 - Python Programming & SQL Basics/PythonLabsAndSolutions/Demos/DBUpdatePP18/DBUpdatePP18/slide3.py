
import pyodbc

connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

sqlStr="""UPDATE company
SET company_name='QA Ltd' 
WHERE company_no='5000'
"""
conn = pyodbc.connect(connectionString)
cur = conn.cursor() 
cur.execute(sqlStr)

conn.commit()
conn.close()

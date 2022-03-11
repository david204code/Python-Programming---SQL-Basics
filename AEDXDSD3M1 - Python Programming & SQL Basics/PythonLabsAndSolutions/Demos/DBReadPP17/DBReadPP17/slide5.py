
import pyodbc
connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

sqlStr = """SELECT * FROM company WHERE county='Devon'ORDER BY company_no"""

conn = pyodbc.connect(connectionString)
cur = conn.cursor() 
result = cur.execute(sqlStr).fetchall()
conn.close()

for row in result:        
    print(row)

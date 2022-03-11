
import pyodbc
connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=northwind;Trusted_Connection=yes'

sqlStr = "SELECT * FROM customers WHERE city='London'"

conn = pyodbc.connect(connectionString)
cur = conn.cursor() 
result = cur.execute(sqlStr).fetchall()
conn.close()

for row in result:        
    print(row)


import pyodbc
connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

conn = pyodbc.connect(connectionString)
cur = conn.cursor() 
result = cur.execute('SELECT * FROM company').fetchall()
conn.close()

for row in result:        
    print(row)

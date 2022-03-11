import pyodbc
connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

sqlStr="""UPDATE Student
SET City='BootHill' 
WHERE StudentID=8000
"""
conn = pyodbc.connect(connectionString)
cur = conn.cursor() 
cur.execute(sqlStr)

conn.commit()
conn.close()

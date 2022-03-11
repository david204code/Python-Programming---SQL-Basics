
import pyodbc
connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

sqlStr="""CREATE TABLE Student (
	StudentID int NOT NULL,
	FirstName nvarchar(40) NOT NULL,
	Surname   nvarchar(30) NULL,
	Course nvarchar(30) NULL,
	City nvarchar(15) NULL)"""
conn = pyodbc.connect(connectionString)
cur = conn.cursor() 
cur.execute(sqlStr)

conn.commit()
conn.close()
print("Student table created")
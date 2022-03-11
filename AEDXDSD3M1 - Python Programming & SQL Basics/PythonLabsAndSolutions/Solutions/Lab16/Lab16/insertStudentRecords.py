import pyodbc
connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

sqlStr ="""INSERT INTO Student
      (StudentID ,FirstName,Surname,Course,City)
VALUES (5000,'Dick','Turpin','Stand and Deliver','York')"""
conn = pyodbc.connect(connectionString)
cur = conn.cursor() 
cur.execute(sqlStr)

conn.commit()

conn.close()
print("Record added")

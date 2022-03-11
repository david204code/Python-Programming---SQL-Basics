
import pyodbc

connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

def readData(sql):
    conn = pyodbc.connect(connectionString)
    cur = conn.cursor() 
    result = cur.execute(sql).fetchall()
    conn.close()
    return result

#------------------Main code ---------------------
res =  readData("SELECT * FROM company WHERE county='Devon' ")  
for row in res:        
    print(row)

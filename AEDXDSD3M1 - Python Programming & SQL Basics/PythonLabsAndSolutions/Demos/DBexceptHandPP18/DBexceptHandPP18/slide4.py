
import pyodbc

def showCompany():
    connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};				SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'
    #connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};				SERVER=.\SQLExpress;DATABASE=nosuchdatabase;Trusted_Connection=yes'
    try:
        conn = pyodbc.connect(connectionString)
        cur = conn.cursor() 
        result = cur.execute('SELECT * FROM company').fetchall()
        #result = cur.execute('SELECT * FROM companys').fetchall()
        conn.close()
        return result
    except Exception as ex:
        print("Error: ", ex)
        return None
#---------------------- main -----------------
rows = showCompany()
if rows != None:
    for row in rows:        
        print(row)

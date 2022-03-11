
import pyodbc

def getQAStoreConnection():
    connectionString = r'DRIVER={ODBC Driver 13 for SQL Server}; SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'
    #connectionString = r'DRIVER={ODBC Driver 13 for SQL Server}; SERVER=.\SQLExpress;DATABASE=nosuchdatabase;Trusted_Connection=yes'
    conn = pyodbc.connect(connectionString)
    cur = conn.cursor() 
    return conn

def getQAStoreRows(sql):
    try:
        conn = getQAStoreConnection()
        cur = conn.cursor() 
        result = cur.execute(sql).fetchall()
        conn.close()
        return result
    except:
        #raise Exception("Error reading data")
        return None
#---------------------- main -----------------
try:
    rows = getQAStoreRows('SELECT * FROM company')
    #rows = getQAStoreRows('SELECT * FROM companys')
    if rows != None:
        for row in rows:        
            print(row)
except:
    print('Error reading data.')

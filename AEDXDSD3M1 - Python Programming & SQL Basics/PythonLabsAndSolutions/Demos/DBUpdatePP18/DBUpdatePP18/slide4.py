import pyodbc

connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

def updateData(sql):
    conn = pyodbc.connect(connectionString)
    cur = conn.cursor() 
    cur.execute(sql)
    conn.commit()
    conn.close()
    
#------------------Main code -------------------
sqlStr="""UPDATE company
SET company_name='QA Limited' 
WHERE company_no='5000'
"""
updateData(sqlStr)


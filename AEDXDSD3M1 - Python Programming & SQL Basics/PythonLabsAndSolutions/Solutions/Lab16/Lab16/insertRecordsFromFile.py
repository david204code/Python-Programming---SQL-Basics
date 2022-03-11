import pyodbc
connectionString = r'DRIVER={ODBC Driver 13 for SQL Server};SERVER=.\SQLExpress;DATABASE=qastore;Trusted_Connection=yes'

with open("lab16Students.txt") as file:
    columns = []
    for line in file:
        col = line.replace('\n','').split(',')
        for x in range(0,5):
            if x == 0:
                columns.append(int(col[x]))
            else:
                columns.append(col[x])

        sqlStr ="""INSERT INTO Student
                (StudentID ,FirstName,Surname,Course,City)
                VALUES (?,?,?,?,?)"""
        conn = pyodbc.connect(connectionString)
        cur = conn.cursor() 
        cur.execute(sqlStr,(columns[0],columns[1],columns[2],columns[3],columns[4]))
        conn.commit()
        conn.close()
        columns = []
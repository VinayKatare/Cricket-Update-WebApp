import mysql.connector

def connectDB(host='localhost',database='CricGuru',user='root',password='1010'):
	return mysql.connector.connect(host=host,database=database,user=user,password=password)

def disconnectDB(conn):
	conn.close()

def queryDB(conn,sql):
    cursor = conn.cursor()
    cursor.execute(sql)
    rows = cursor.fetchall()
    cursor.close()
    return rows



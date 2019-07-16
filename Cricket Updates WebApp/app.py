from flask import Flask, render_template, request ,redirect

from db import *

app = Flask(__name__,static_url_path='/static')

app.secret_key = 'cricguru key'

@app.route("/")
def home():
	return render_template('index.html')

@app.route("/menu")
def menu():
	return render_template('menu.html')

@app.route('/table1')
def table1():
    conn = connectDB()
    query = ("select * from teams order by rating desc")
    result = queryDB(conn,query)
    disconnectDB(conn)
    return render_template('data1.html',result=result)

@app.route('/table2')
def table2():
    conn = connectDB()
    query = ("SELECT * FROM T20_BATTING")
    result = queryDB(conn,query)
    disconnectDB(conn)
    return render_template('data2.html',result=result)

@app.route('/table3')
def table3():
    conn = connectDB()
    query = ("SELECT * FROM PLAYERS")
    result = queryDB(conn,query)
    disconnectDB(conn)
    return render_template('data3.html',result=result)

@app.route('/table4')
def table4():
    conn = connectDB()
    query = ("SELECT * FROM T20_BOWLING")
    result = queryDB(conn,query)
    disconnectDB(conn)
    return render_template('data4.html',result=result)

@app.route('/table5')
def table5():
    conn = connectDB()
    query = ("SELECT * FROM T20_FIELDING")
    result = queryDB(conn,query)
    disconnectDB(conn)
    return render_template('data5.html',result=result)

@app.route('/table6')
def table6():
    conn = connectDB()
    query = ("SELECT * FROM T20_TEAMS_BATTING")
    result = queryDB(conn,query)
    disconnectDB(conn)
    return render_template('data6.html',result=result)

@app.route('/table7')
def table7():
    conn = connectDB()
    query = ("SELECT * FROM T20_TEAMS_BOWLING")
    result = queryDB(conn, query)
    disconnectDB(conn)
    return render_template('data7.html',result=result)

@app.route('/table8',methods = ['POST', 'GET'])
def table8():
    if request.method == 'POST':
        userDetails = request.form
        u_name = userDetails['uname']
        u_pass = userDetails['psw']
        if (u_name == "vinay" and u_pass == "1234") or (u_name == "rajat" and u_pass == "456") or (u_name == "anshuman" and u_pass == "789") :
            return redirect('/table9')
        else:
            return redirect('/error')
    return render_template('data8.html')

@app.route('/table9',methods = ['POST', 'GET'])
def table9():
        if request.method == 'POST':
            userDetails = request.form
            name = userDetails['firstname']
            country = userDetails['countr']
            conn = connectDB()
            cursor = conn.cursor()
            cursor.callproc("player_name", (name, country))
            conn.commit()
            cursor.close()
            return redirect('/table10')
        return render_template('data9.html')



@app.route('/table10',methods = ['POST', 'GET'])
def table10():
        conn = connectDB()
        query = ("SELECT player from t20_batting where average = 0.0")
        result = queryDB(conn, query)
        disconnectDB(conn)
        r = ""
        for item in result:
            r = item[0]
            break
        if request.method == 'POST':
            userDetails = request.form
            nooi = userDetails['nooi']
            rs = userDetails['rs']
            hsp = userDetails['hsp']
            hund = userDetails['hund']
            fifty = userDetails['fifty']
            inn = userDetails['inn']
            ob = userDetails['ob']
            wct = userDetails['wct']
            bbowl = userDetails['bbowl']
            rcc = userDetails['rcc']
            catches = userDetails['catches']
            stump = userDetails['stump']
            conn = connectDB()
            cursor = conn.cursor()
            cursor.callproc("update_all", (r, nooi, rs, hsp, hund, fifty, inn, ob, wct, bbowl, rcc, catches, stump))
            conn.commit()
            cursor.close()
            return redirect('/menu')
        return render_template('data10.html', result=result)


@app.route('/table11')
def table11():
    conn = connectDB()
    query = ("select * from no_of_players")
    result = queryDB(conn,query)
    disconnectDB(conn)
    return render_template('data11.html',result=result)

@app.route('/table12',methods = ['POST', 'GET'])
def table12():
    if request.method == 'POST':
        userDetails = request.form
        name = userDetails['country']
        text = 'select * from players where country=\"%s\"'%(name)
        conn = connectDB()
        cursor = conn.cursor()
        cursor.execute(text)
        result = cursor.fetchall()
        cursor.close()
        return render_template('data13.html', result=result)
    return render_template('data12.html')
'''
@app.route('/table13')
def table13(result):
    return render_template('data13.html',result=result)
'''

@app.route('/error')
def error():
    return render_template('data_error.html',result="Incorrect Passord")

if __name__ == "__main__" :
	app.run(host='0.0.0.0',port=8000,debug=True)
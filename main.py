from flask import Flask,request,session,render_template
import mysql.connector
#MySQL connection.
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database = 'dreamhome',
    auth_plugin='mysql_native_password'
    )
app = Flask(__name__)
app.secret_key = "TESTVALUE"
@app.route('/')

@app.route('/home', methods=['GET', 'POST'])
def index():
#Requires collection of all property image files.
    mycursor = mydb.cursor()
    mycursor.execute(f'SELECT picture FROM propertyforrent')
    myres = mycursor.fetchall()
    images = []
    for i in myres:
        images.append(i)
    return render_template('home.html',images=images)

@app.route('/Login')
def login():
    
    return render_template('login.html')

@app.route('/Login', methods=['POST'])
def login_post():
    vals = {}
    #Requires finding email and password, then creation of Session.
    vals["email"] = request.form["email"]
    vals["postcode"] = request.form["postcode"]
    if 'id' in session:
        error = f'Already logged in! {session["id"]}'
        return render_template('login.html',error=error)
    availUser = checkLogin(vals["email"], vals["postcode"])
    if availUser == -1:
        error = "No User Available.. Please try again!"
        return render_template('login.html',error=error)
    else:
        session['id'] = availUser
        return render_template('home.html')
#Removed 04/22/23
# @app.route('/Register')
# def register():
    
#     return render_template('register.html')

@app.route('/BookView')
def bookview():
    session.pop('id')
    return render_template('bookview.html')

@app.route('/Rentals')
def rentals():
    return render_template('Rentals.html',session=session)

@app.route('/AddtoMail', methods=['GET'])
def addtomail():
    #Handles only the initial loading.
    return render_template('addtomail.html')

@app.route('/AddtoMail', methods=['POST'])
def addtomail_post():
    conf = ''
    error = ''
    vals = {}
    #Requires to check if an account already exists. if not, add a line item.
    if request.method == 'POST':
        entered = True
        vals["fName"] = request.form['fname']
        vals["lName"] = request.form['lname']
        vals["telNo"] = request.form['telNo']
        vals["addr"] = request.form['street']
        vals["city"] = request.form['city']
        vals["postcode"] = request.form['PostCode']
        vals["email"] = request.form['email']
        vals["region"] = request.form['region']
        vals["rentPref"] = request.form['prefType']
        vals["maxRent"] = request.form['maxRent']
        alreadyJoined = checkLogin(vals["email"], vals["postcode"])
        if alreadyJoined != -1:
            conf = "Already Joined!"
        else:
            conf = "Creating account.."
            for k,v in vals.items():
                if v == '':
                    vals[k] = None
            cursor = mydb.cursor()
            cursor.execute("INSERT INTO Client (fName,lName,telNo,street,city,postCode,email,Region,preType,maxRent) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",(vals["fName"],vals["lName"],vals["telNo"],vals["addr"],vals["city"],vals["postcode"],vals["email"],vals["region"],vals["rentPref"],vals["maxRent"]))
            mydb.commit()
            conf = "CREATED"
    return render_template('addtomail.html',message=conf)

# @app.route('/Property')
# def property():
#     return render_template('property.html')
#Removed 04/22/23 -- Unused.


def checkLogin(email, postcode):
    mycursor = mydb.cursor()
    mycursor.execute(f'SELECT ID, email, postCode FROM Client WHERE email = "{email}" AND postCode = "{postcode}"')
    myres = mycursor.fetchall()
    if not myres:
        return -1
    else:
        return myres[0][0]

if __name__ == '__main__':
    app.run(port=4000,debug=True)
    
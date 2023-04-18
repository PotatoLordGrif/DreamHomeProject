from flask import Flask,render_template
import mysql.connector
app = Flask(__name__)
@app.route('/')
@app.route('/index', methods=['GET', 'POST'])
def index():
 return render_template('home.html')

@app.route('/Login')
def login():
    return render_template('login.html')

@app.route('/Register')
def register():
    return render_template('register.html')

@app.route('/BookView')
def bookview():
    return render_template('bookview.html')

@app.route('/Rentals')
def rentals():
    return render_template('Rentals.html')

@app.route('/AddtoMail')
def addtomail():
    return render_template('addtomail.html')

@app.route('/Property')
def property():
    return render_template('property.html')

if __name__ == '__main__':
    app.run(port=4000,debug=True)
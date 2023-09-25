from application import app
from flask import render_template, request, g, flash,redirect, url_for
import pymysql
def connect_db():
    return pymysql.connect(
        user = 'root', password = 'password', database = 'sakila',
        autocommit = True, charset = 'utf8mb4',
        cursorclass = pymysql.cursors.DictCursor)

@app.route('/')
@app.route('/Home')
def home():
    """Home Page """

    return render_template(
                'home.html'
    )

@app.route('/skyupcycle')
def services():
    return render_template('skyupcycle.html')


@app.route('/LogIn')
def account():
    return render_template('LogIn.html')




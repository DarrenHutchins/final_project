from application import app
from application.forms import BasicForm
from flask import render_template, request, g, flash,redirect, url_for
import pymysql

def connect_db():
    return pymysql.connect(
        user = 'root', password = 'password', database = 'sakila',
        autocommit = True, charset = 'utf8mb4',
        cursorclass = pymysql.cursors.DictCursor)

@app.route('/')
def home():
    """Home Page """

    return render_template(
                'home.html'
    )

@app.route('/WhatWeDo?')
def whatWeDo():
    return render_template('Visit_journey.html')

@app.route('/Services')
def services():
    return render_template('What_we_do.html')


@app.route('/Youraccount')
def account():
    return render_template('Login.html')

@app.route('/Sky0')
def sky0():
    return render_template('Sky0.html')




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
    """Landing page. Showing Actors    """

    return render_template(
                'home.html'
    )

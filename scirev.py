from flask import Flask
from flask import request
from flask import jsonify
from flask import url_for
from flask import render_template
import hashlib
import base64
import os
import PIL
from PIL import Image
from werkzeug.contrib.fixers import ProxyFix

import MySQLdb
import MySQLdb.cursors
from base64 import decodestring
from apns import APNs, Payload


import json
import _mysql
import urllib

import math

import sys
import smtplib
import time
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText

import flask

app = Flask(__name__)
app.debug = True


app.wsgi_app = ProxyFix(app.wsgi_app)


def conn():
    db = MySQLdb.connect(host = "127.0.0.1", user = "scirev", passwd = "scirev", db = "scirev", cursorclass=MySQLdb.cursors.DictCursor)
    return db, db.cursor()


@app.route("/")
def hello():
    
    return render_template('index.html')


@app.route('/person/<id>')
def person(id):
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE person_id = %s" % id)
    rows = db_cur.fetchall()
    person = rows[0]

    return render_template('person.html', person=person)


@app.route("/band")
def band():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE band")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Band")

@app.route("/actors")
def actors():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE acting")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Actors")

@app.route("/singers")
def singers():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE singing")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Singers")

@app.route("/dancers")
def dancers():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE dancing")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Dancers")


@app.route("/production")
def production():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person p JOIN production x ON p.person_id = x.person_id")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Production", roles=True)

@app.route("/executive")
def executive():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person p JOIN executive x ON p.person_id = x.person_id")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Executive", roles=True)




if __name__ == "__main__":

    app.run(host='0.0.0.0')

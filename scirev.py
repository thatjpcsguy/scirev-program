from flask import Flask
from flask import request
from flask import jsonify
from flask import url_for
from flask import render_template
import hashlib
import base64
import os
from werkzeug.contrib.fixers import ProxyFix

import MySQLdb
import MySQLdb.cursors
from base64 import decodestring

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


@app.route("/notes")
def notes():
    return render_template('notes.html', page_title='Show Notes')

@app.route("/thankyou")
def thankyou():
    return render_template('thankyou.html', page_title='Thankyou')

@app.route("/gallery")
def gallery():
    return render_template('gallery.html', page_title='Gallery')

@app.route("/videos")
def videos():
    return render_template('video.html', page_title='Videos')



@app.route('/person/<id>')
def person(id):
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE seo_url = '%s' ORDER BY first_name, last_name" % id)
    rows = db_cur.fetchall()
    person = rows[0]

    title = person['first_name'] + ' ' + person['last_name']
    return render_template('person.html', person=person, page_title=title)


@app.route("/band")
def band():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE band ORDER BY first_name, last_name")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Band", page_title="Band")

@app.route("/actors")
def actors():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE acting ORDER BY first_name, last_name")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Actors", page_title="Actors")

@app.route("/singers")
def singers():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE singing ORDER BY first_name, last_name")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Singers", page_title="Singers")

@app.route("/dancers")
def dancers():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person WHERE dancing ORDER BY first_name, last_name")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Dancers", page_title="Dancers")


@app.route("/production")
def production():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person p JOIN production x ON p.person_id = x.person_id  ORDER BY first_name, last_name")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Production", page_title="Production", roles=True)

@app.route("/executive")
def executive():
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person p JOIN executive x ON p.person_id = x.person_id  ORDER BY first_name, last_name")
    rows = db_cur.fetchall()

    return render_template('list.html', people=rows, heading="Executive", page_title="Executive", roles=True)




if __name__ == "__main__":

    app.run(host='0.0.0.0', port=8000)

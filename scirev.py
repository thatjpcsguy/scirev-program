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
    db, db_cur = conn()
    r = db_cur.execute("SELECT * FROM person")
    rows = db_cur.fetchall()

    print rows


    return render_template('index.html', people=rows)





if __name__ == "__main__":

    app.run(host='0.0.0.0')

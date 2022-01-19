#!/bin/sh
export FLASK_APP=./hello.py
source venv/bin/activate
flask run -h 0.0.0.0

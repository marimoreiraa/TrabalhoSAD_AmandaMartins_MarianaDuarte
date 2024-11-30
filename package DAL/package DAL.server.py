from flask import Flask, flash, render_template, request, redirect, url_for, session
import pymysql

app = Flask(__name__, static_url_path='/static')

# Dados para conectar ao banco de dados
conn = pymysql.connect(
  host="localhost",
  user="root",
  password="Minas@0202",
  database="mochileiroPobre",
  charset="utf8mb4"
)
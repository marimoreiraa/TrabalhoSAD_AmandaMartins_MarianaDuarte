import pymysql

# Dados para conectar ao banco de dados
conn = pymysql.connect(
  host="localhost",
  user="root",
  password="Minas@0202",
  database="mochileiropobre",
  charset="utf8mb4"
)
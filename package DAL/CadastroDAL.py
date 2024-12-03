def cadastroDAL():
    mycursor = conn.cursor()
    sql = "INSERT INTO usuario (nome_us, email, senha) VALUES (%s, %s, %s)"
    val = (nome_us, email, senha)
    mycursor.execute(sql, val)
    conn.commit()
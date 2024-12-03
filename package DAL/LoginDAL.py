def loginDAL():        
    mycursor = conn.cursor()
    sql = "SELECT * FROM usuario WHERE email = %s"
    val = (email,)
    mycursor.execute(sql, val)
    jogador = mycursor.fetchone()
def orcamentoDAL():
    mycursor = conn.cursor()
    sql = "INSERT INTO orcamento (qtde_pessoa, valormax, tipo_dest_orc) VALUES (%s, %s, %s)"
    val = (qtde_pessoa, valormax, tipo_dest_orc)
    mycursor.execute(sql, val)
    conn.commit()
def dataDAL():
    mycursor = conn.cursor()
    sql = "INSERT INTO dataviagem (datamin, datamax) VALUES (%s, %s)"
    val = (datamin, datamax)
    mycursor.execute(sql, val)
    conn.commit()
import mysql.connector
import time

db = mysql.connector.connect(
    host='localhost', user='root', password='', database='fsd')

cursor = db.cursor()


for i in range(1, 101):
    query = f'INSERT INTO blogs(no, title, short_description, long_description) VALUES({i}, "title_{i}", "short_description_{i}", "long_description_{i}");'
    cursor.execute(query)
    print(f"Inserted row no {i}")
    time.sleep(1)

db.commit()

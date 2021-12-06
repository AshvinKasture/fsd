import mysql.connector
import requests
import json
import random

db = mysql.connector.connect(
    host='localhost', user='root', password='', database='fsd')

cursor = db.cursor()

url1 = 'https://baconipsum.com/api/?type=meat-and-filler&paras=1'
url2 = 'https://baconipsum.com/api/?type=meat-and-filler&paras=5'


for i in range(1, 101):
    title = json.loads(requests.get(url1).text)[0]
    short = json.loads(requests.get(url1).text)[0]
    long = ' '.join(json.loads(requests.get(url2).text))
    date = f"2021-{random.randint(1,12)}-{random.randint(1,29)} 00:00:01"
    print(date)
    query = f'INSERT INTO blogs(id, title, short_description, long_description, timestamp) VALUES({i}, "{title}", "{short}", "{long}", "{date}");'
    cursor.execute(query)
    # print(query)
    print(f"Inserted row no {i}")

db.commit()

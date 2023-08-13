"""
@Description: 
@Author(s): Stephen CUI
@LastEditor(s): Stephen CUI
@CreatedTime: 2023-08-13 14:52:36
"""

import psycopg2

# This statement establishes the
# connection from your Python program (which is a client) to the database server
# specified in the parameters:
conn = psycopg2.connect(
    host='localhost',
    user='postgres',
    password='abc123',
    dbname='sql4da',
    port=5432,
)


# creates a Python cursor that can send SQL statements to the
# database server and retrieve results:
cur = conn.cursor()

# execute a sample SQL statement from the cursor by using its execute() method:
cur.execute('SELECT * FROM customers LIMIT 5')

# retrieve the result and display it
records: list[tuple] = cur.fetchall()
print(records)

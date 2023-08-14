"""
@Description: Using an External Dataset to Discover Sales Trends
@Author(s): Stephen CUI
@LastEditor(s): Stephen CUI
@CreatedTime: 2023-08-14 11:24:29
"""
import sys
sys.path.append('.')
sys.path.append('../')
sys.path.append('../../')
import os
os.chdir('./code')
from check_python_environment import check_packages
d = {
    'sqlalchemy': ['<', '2.0.0'],
    'pandas': ['>', '1.3.5'],
    'matplotlib': ['>', '3..0.0'],
}
import pandas as pd
import matplotlib.pyplot as plt
from sqlalchemy import create_engine
check_packages(d)

# Q1
cnxn_string = (
    'postgresql+psycopg2://{username}:{pswd}@{host}:{port}/{database}')
print(cnxn_string)
engine = create_engine(
    cnxn_string.format(
        username='postgres',
        pswd='123456',
        host='localhost',
        port=5432,
        database='sql4da')
)

data = pd.read_csv(
    'data/public_transportation_statistics_by_zip_code.csv',
    dtype={'zip_code': str}
)

import csv
from io import StringIO


def psql_insert_copy(table, conn, keys, data_iter):
    dbapi_conn = conn.connection
    with dbapi_conn.cursor() as cur:
        s_buf = StringIO()
        writer = csv.writer(s_buf)
        writer.writerows(data_iter)
        s_buf.seek(0)
        columns = ', '.join('"{}"'.format(k) for k in keys)
        if table.schema:
            table_name = '{}.{}'.format(table.schema, table.name)
        else:
            table_name = table.name
        sql = 'COPY {} ({}) FROM STDIN WITH CSV'.format(
            table_name,
            columns
        )
        cur.copy_expert(sql=sql, file=s_buf)


data.to_sql(
    'public_transportation_by_zip',
    engine,
    if_exists='replace',
    method=psql_insert_copy
)

# Q2
data.max()
data.min()

engine.execute("""
select
     max(public_transportation_pct) as max_pcr,
     min(public_transportation_pct) as min_pct
 from public_transportation_by_zip;
""").fetchall()

engine.execute("""
SELECT (public_transportation_pct > 10) AS is_high_public_transportation,
       COUNT(s.customer_id)*1.0/COUNT(DISTINCT c.customer_id) AS sales_per_customer
FROM customers AS c
INNER JOIN public_transportation_by_zip as t ON t.zip_code = c.postal_code
LEFT JOIN sales AS s ON s.customer_id = c.customer_id
WHERE t.public_transportation_pct > 0
GROUP BY 1
LIMIT 10;
""").fetchall()


# Q4
data = pd.read_sql_query("""
SELECT *
FROM public_transportation_by_zip
WHERE public_transportation_pct > 0
    AND public_transportation_pct < 50;
""", engine)
data.plot.hist(y='public_transportation_pct')
plt.show()

data = pd.read_sql_query("""
SELECT 10*ROUND(public_transportation_pct/10) AS public_transport,
       COUNT(s.customer_id) * 1.0 / COUNT(DISTINCT c.customer_id) AS sales_per_customer
FROM customers AS c
INNER JOIN public_transportation_by_zip AS t ON t.zip_code = c.postal_code
LEFT JOIN sales AS s ON s.customer_id = c.customer_id
WHERE t.public_transportation_pct > 0
GROUP BY 1
""", engine)
data.to_csv('sales_vs_public_transport_pct.csv')

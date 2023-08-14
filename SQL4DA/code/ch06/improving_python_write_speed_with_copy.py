"""
@Description: Improving Python Write Speed with COPY
@Author(s): Stephen CUI
@LastEditor(s): Stephen CUI
@CreatedTime: 2023-08-14 09:18:56
"""
import sys
sys.path.append('./')
sys.path.append('../')
from check_python_environment import check_packages
import csv
from io import StringIO
import pandas as pd
from sqlalchemy import create_engine

d = {
    'sqlalchemy': ['<', '2.0.0'],
    'pandas': ['>', '1.3.5'],
    'matplotlib': ['>', '3.0.0'],
    'psycopg2': ['>', '2.5.0'],
}
check_packages(d)


def psql_insert_COPY(table, conn, keys, data_iter):
    dbapi_conn = conn.connection
    # establish a connection (dbapi_conn)
    # and a cursor (cur) that you can use for execution.
    with dbapi_conn.cursor() as cur:
        # write all the data in your rows (represented by data_iter) to a string
        # buffer (s_buf), which is formatted like a CSV file, but exists in memory and not
        # in a file on your hard drive.
        s_buf = StringIO()
        writer = csv.writer(s_buf)
        writer.writerows(data_iter)
        s_buf.seek(0)
        # define the column names (columns) and the table name (table_name).
        # 把每个 key 用双引号引起来，并且每个 key 之间使用 ', '隔开
        columns = ', '.join('"{}"'.format(k) for k in keys)
        if table.schema:
            table_name = '{}.{}'.format(table.schema, table.name)
        else:
            table_name = table.name
        # execute the COPY statement by streaming the CSV file contents
        # through standard input (STDIN).
        sql = 'COPY {} ({}) FROM STDIN WITH CSV'.format(table_name, columns)
        cur.copy_expert(sql=sql, file=s_buf)


cnxn_string = (
    'postgresql+psycopg2://{username}:{pswd}@{host}:{port}/{database}'
)
engine = create_engine(cnxn_string.format(username='postgres',
                                          pswd='123456',
                                          host='localhost',
                                          port=5432,
                                          database='sql4da'))
query = """
select city, count(*) as number_of_customers, count(nullif(gender, 'M')) as female, count(nullif(gender, 'F')) as male
from customers
where city is not null
group by 1
order by 2 desc
limit 10
"""
top_cities_data = pd.read_sql_query(query, engine)


top_cities_data.to_sql(
    'top_cities_data',
    engine,
    index=False,
    if_exists='replace',
    method=psql_insert_COPY
)

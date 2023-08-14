"""
@Description: Reading and Writing CSV Files with Python
@Author(s): Stephen CUI
@LastEditor(s): Stephen CUI
@CreatedTime: 2023-08-14 10:34:24
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

top_cities_data.to_csv(
    'C:\\Notes\\SQL\\SQL4DA\\code\\ch06\\top_cities_analysis.csv',
    index=False
)
my_data = pd.read_csv(
    'C:\\Notes\\SQL\\SQL4DA\\code\\ch06\\top_cities_analysis.csv')
print(my_data)

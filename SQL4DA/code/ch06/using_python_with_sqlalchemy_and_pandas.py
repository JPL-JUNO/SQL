"""
@Description: Using Python with SQLAlchemy and pandas
@Author(s): Stephen CUI
@LastEditor(s): Stephen CUI
@CreatedTime: 2023-08-13 18:50:10
"""
import sys
sys.path.append('./')
sys.path.append('../../')
from check_python_environment import check_packages
d = {
    'pandas': ['>', '1.3.2'],
    'sqlalchemy': ['<', '2.0.0'],  # 改包的 2.0 版本有些改动，这里的代码有些属性在 2.0 及以后版本改变了很多
    'matplotlib': ['>', '3.0.0'],
}
check_packages(d)
from sqlalchemy import create_engine
import pandas as pd

# define connection string:
cnxn_string = (
    "postgresql+psycopg2://{username}:{pswd}@{host}:{port}/{database}"
)
print(cnxn_string)

engine = create_engine(
    cnxn_string.format(
        username="postgres",
        pswd="abc123",
        host="localhost",
        port=5432,
        database="sql4da"
    )
)

result = engine.execute("select * from customers limit 2").fetchall()
print(result)
# The output of this command is a Python list
# containing rows from your database as tuples.


# Reading and Writing to a Database with pandas
customers_data = pd.read_sql_table('customers', engine)
# The pandas read_sql_table function requires
# two parameters: the name of a table and the connectable database (in this case, the SQLAlchemy Engine object).
# Alternatively, you can use the read_sql_query function, which takes a query string instead of a table name.

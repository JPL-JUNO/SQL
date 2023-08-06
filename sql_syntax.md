# SQL for Data Analytics, 3rd

## SQL for Data Preparation

### Assembling Data

```sql
SELECT {columns}
FROM {table1}
INNER JOIN {table2}
  ON {table1}.{common_key_1}={table2}.{common_key_2};
```

### Cleaning Data

```sql
CASE
  WHEN condition_1 THEN value1
  WHEN condition_2 THEN value2
  ...
  WHEN condition_N THEN valueN
  ELSE else_value
END;
```

### Transforming Data

```sql
SELECT DISTINCT ON (distinct_column)
column_1,
column_2,
...
column_n
FROM table
ORDER BY order_column;
```

Here, `distinct_column` is the column(s) you want to be distinct in your query, `column_1` through `column_n` are the columns you want in the query, and `order_column` allows you to determine the first row that will be returned for a DISTINCT ON query if multiple columns have the same value for `distinct_column`. 注意`distinct_column`后面没有逗号。

For `order_column`, the first column mentioned should be `distinct_column`. If an `ORDER BY` clause is not specified, the first row will be decided randomly.

## Aggregate Functions for Data Analysis

### Aggregate Functions

To measure the number of distinct values in a column, you can use the `COUNT DISTINCT` function.

```sql
SELECT
  COUNT (DISTINCT {column1})
FROM
  {table1}
```

### Aggregate Functions with the GROUP BY Clause

The `GROUP BY` statements usually have the following structure:

```sql
SELECT
  {KEY},
  {AGGFUNC (column1)}
FROM
  {table1}
GROUP BY 
  {KEY}
```

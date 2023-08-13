-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public
-- 需要在命令行中运行这些代码，才能有数据
COPY
     (SELECT customer_id,
             first_name,
             last_name
      FROM customers
      LIMIT 5) TO STDOUT WITH CSV HEADER;

-- COPY is simply the command used to transfer data to a file format.
-- SELECT customer_id, first_name, last_name FROM customers
-- LIMIT 5) is the query that you want to copy the result from.
-- TO STDOUT indicates that the results should be printed to the standard output
-- rather than being saved to a file on the hard drive. Standard output is the
-- common term for displaying output in a command-line terminal environment,
-- which is often shortened to STDOUT.
-- WITH is an optional keyword used to separate the parameters that you will
-- use in the database-to-file transfer. Within WITH, you can specify multiple
-- parameters, such as the following:
-- • CSV indicates that you will use the CSV file format. You could have also
-- specified BINARY or left this out altogether and received the output in
-- text format.
-- • HEADER indicates that you want the header printed as well.
 \COPY
     (SELECT *
      FROM customers
      LIMIT 5) TO 'D:\DS_Works\SQL\SQL4DA\code\ch06\copy_file.csv' WITH CSV HEADER;

-- 这条命令似乎不能直接在 psql 中运行，应该需要田间

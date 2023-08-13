\COPY customers_csv FROM 'D:\DS_Works\SQL\SQL4DA\code\ch06\configuring_copy_and_back_slash_copy.csv' CSV HEADER DELIMITER '|';
@REM \COPY is invoking the PostgreSQL COPY command to load the data into the database.
@REM customers_csv is the name of the table that you want to append to.
@REM FROM 'D:\DS_Works\SQL\SQL4DA\code\ch06\configuring_copy_and_back_slash_copy.csv' specifies that you are uploading
@REM records from 'D:\DS_Works\SQL\SQL4DA\code\ch06\configuring_copy_and_back_slash_copy.csv'. The FROM keyword
@REM specifies that you are uploading records, as opposed to the TO keyword, which
@REM you use to download records.
@REM The WITH CSV HEADER parameters operate the same as before.
@REM DELIMITER '|' specifies what the delimiter is in the file.
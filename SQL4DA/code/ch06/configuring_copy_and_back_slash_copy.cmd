\COPY customers TO 'D:\DS_Works\SQL\SQL4DA\code\ch06\configuring_copy_and_back_slash_copy.csv' WITH CSV HEADER DELIMITER '|' NULL '' QUOTE '"';
@REM For example, running from psql, the following would create a pipe-separated file,
@REM with a header, with empty (0 lengths) strings to represent a missing (NULL) value,
@REM and the double quote (") character to represent the quote character:
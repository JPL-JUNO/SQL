-- Active: 1683522513166@@127.0.0.1@3306@sakila

INSERT INTO
    string_tbl (
        `CHAR_FLD`,
        `VCHAR_FLD`,
        `TEXT_FLD`
    )
VALUES (
        'THIS IS CHAR DATA',
        'THIS IS VARCHAR DATA',
        'THIS IS TEXT DATA'
    );

UPDATE string_tbl
SET
    `VCHAR_FLD` = 'THIS IS A PIECE OF EXTREMELY LONG VARCHAR DATA';

SELECT @@SESSION.SQL_MODE;

SET SQL_MODE='ANSI';

SELECT @@SESSION.SQL_MODE;

UPDATE string_tbl
SET
    `VCHAR_FLD` = 'THIS IS A PIECE OF EXTREMELY LONG VARCHAR DATA';

SHOW WARNINGS;

SELECT `VCHAR_FLD` FROM string_tbl;

UPDATE string_tbl
SET
    `TEXT_FLD` = 'THIS STRING DIDN''T WORK, BUT IT DOES NOW';

SELECT `TEXT_FLD` FROM string_tbl;

SELECT QUOTE(`TEXT_FLD`) FROM string_tbl;

SELECT 'abcdefg', CHAR(97, 98, 99, 100, 101, 102, 103);

SELECT CHAR(128, 129, 130, 131, 132, 133, 134, 135, 136, 137);

SELECT CHAR(138,139,140,141,142,143,144,145,146,147);
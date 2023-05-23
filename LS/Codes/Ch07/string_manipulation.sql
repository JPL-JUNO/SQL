/*
 @Description: String Manipulation
 @Author(s): Stephen CUI
 @LastEditor(s): Stephen CUI
 @CreatedTime: 2023-05-23 09:53:15
 */

DELETE FROM string_tbl;

INSERT INTO
    string_tbl (
        `CHAR_FLD`,
        `VCHAR_FLD`,
        `TEXT_FLD`
    )
VALUES (
        'THIS STRING IS 28 CHARACTERS',
        'This STRING IS 28 CHARACTERS',
        'This STRING IS 28 CHARACTERS'
    );

SELECT
    LENGTH(`CHAR_FLD`) AS CHAR_LENGTH,
    LENGTH(`VCHAR_FLD`) AS VCHAR_LENGTH,
    LENGTH(`TEXT_FLD`) AS TEXT_LENGTH
FROM string_tbl;

SELECT POSITION('CHARACTERS' IN VCHAR_FLD) FROM string_tbl;

SELECT LOCATE('IS', VCHAR_FLD,5) FROM string_tbl;

DELETE FROM string_tbl;

INSERT INTO
    string_tbl(VCHAR_FLD)
VALUES ('abcd'), ('xyz'), ('QRSTUV'), ('qrstuv'), ('1234');

SELECT `VCHAR_FLD` FROM string_tbl ORDER BY 1;

SELECT
    STRCMP('12345', '12345') 12345 _12345,
    STRCMP('abcd', 'xyz') abcd_xyz,
    STRCMP('abcd', 'QRSTUV') abcd_QRSTUV,
    STRCMP('qrstuv', 'QRSTUV') qrstuv_QRSTUV,
    STRCMP('12345', 'xyz') 12345 _xyz,
    STRCMP('xyz', 'qrstuv') xyz_qrstuv;

SELECT NAME, NAME LIKE '%Y' AS ENDS_IN_Y FROM category;

SELECT NAME, NAME REGEXP 'Y$' AS ENDS_IN_Y FROM category;

DELETE FROM string_tbl;

INSERT INTO
    string_tbl (TEXT_FLD)
VALUES (
        'THIS STRING WAS 29 CHARACTERS'
    );

UPDATE string_tbl
SET
    `TEXT_FLD` = CONCAT(
        `TEXT_FLD`,
        ', BUT NOW IT IS LONGER'
    );

SELECT `TEXT_FLD` FROM string_tbl;

SELECT
    CONCAT(
        first_name,
        ' ',
        last_name,
        ' has been a customer since ',
        DATE(create_date)
    ) AS CUST_NARRATIVE
FROM customer;

SELECT INSERT('GOODBYE WORLD', 9, 0, 'CRUEL') AS STRING;

SELECT INSERT('GOODBYE WORLD', 1, 7, 'HELLO') AS STRING;

/*
 ORACLE
 SELECT REPLACE('GOODBYE WORLD', 'GOODBYE', 'HELLO');
 */

/*
 SQL SERVER
 SELECT STUFF('HELLO WORLD', 1, 5, 'GOODBYE CRUEL')
 */

SELECT SUBSTRING('GOODBYE CRUEL WORLD', 9, 5);
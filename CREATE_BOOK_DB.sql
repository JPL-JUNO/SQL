USE BOOKS;

DROP TABLE BOOK;

CREATE TABLE
    BOOK (
        ISBN CHAR(13) NOT NULL,
        MAIN_TITLE VARCHAR(255) NOT NULL,
        SUB_TITLE TEXT,
        EDITIONS SMALLINT,
        WORDS INT,
        YEAR SMALLINT,
        MONTH TINYINT,
        BEGINNING_DATE DATE,
        ENDING_DATE DATE
    );

INSERT INTO
    BOOK (
        ISBN,
        MAIN_TITLE,
        SUB_TITLE,
        EDITIONS,
        YEAR,
        MONTH
    )
VALUES (
        '9781492057611',
        'Learning SQL',
        'Generate, Manipulate, and Retrieve Data',
        3,
        2020,
        4
    );

SELECT * FROM BOOK;
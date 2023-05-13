-- Active: 1683725252949@@127.0.0.1@3306@library

INSERT INTO
    reading_record (
        RECORD_ID,
        ISBN,
        BEGINNING_DATE
    )
VALUES (
        1,
        '9787115609762',
        '2023-05-07'
    );

SELECT * FROM reading_record;

INSERT INTO
    reading_record(ISBN, BEGINNING_DATE)
VALUES
('9787115609762', '2023-05-08');
-- Active: 1683725252949@@127.0.0.1@3306@asqlp

CREATE TABLE
    IF NOT EXISTS MEETINGS(
        MEETING CHAR(32) NOT NULL,
        PERSON CHAR(32) NOT NULL,
        PRIMARY KEY (MEETING, PERSON)
    );

INSERT INTO Meetings VALUES('第1次', '伊藤');

INSERT INTO Meetings VALUES('第1次', '水岛');

INSERT INTO Meetings VALUES('第1次', '坂东');

INSERT INTO Meetings VALUES('第2次', '伊藤');

INSERT INTO Meetings VALUES('第2次', '宫田');

INSERT INTO Meetings VALUES('第3次', '坂东');

INSERT INTO Meetings VALUES('第3次', '水岛');

INSERT INTO Meetings VALUES('第3次', '宫田');

SELECT * FROM meetings;
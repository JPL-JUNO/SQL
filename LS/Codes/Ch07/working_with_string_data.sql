/*
 @Description: Working with String Data
 @Author(s): Stephen CUI
 @LastEditor(s): Stephen CUI
 @CreatedTime: 2023-05-22 17:56:17
 */

DROP TABLE IF EXISTS STRING_TBL;

CREATE TABLE
    IF NOT EXISTS STRING_TBL (
        CHAR_FLD CHAR(30),
        VCHAR_FLD VARCHAR(30),
        TEXT_FLD TEXT
    )
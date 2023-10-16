-- 提供 BeerStylesExample 数据库的定义和表定义

CREATE DATABASE BeerStylesExample;

USE BeerStylesExample;

CREATE TABLE
    Categories(
        CategoryID int NOT NULL,
        CategoryDS VARCHAR(50) NULL
    );

CREATE TABLE
    Countries(
        CountryID int NOT NULL,
        CountryNM VARCHAR(50) NULL
    );

CREATE TABLE
    Styles(
        StyleID int NOT NULL,
        CategoryFK int NULL,
        CountryFK int NULL,
        StyleNM VARCHAR(50) NULL,
        ColourLowNb float NULL,
        ColourHighNb float NULL,
        ABVLowNb FLOAT NULL,
        ABVHighNb FLOAT NULL,
        IBULowNb FLOAT NULL,
        IBUHighNb FLOAT NULL
    );

ALTER TABLE categories
ADD
    CONSTRAINT categories_pk PRIMARY KEY (CategoryID);

ALTER TABLE countries
ADD
    CONSTRAINT countries_pk PRIMARY KEY (CountryID);

ALTER TABLE styles
ADD
    CONSTRAINT styles_fk00 FOREIGN KEY (CategoryFK) REFERENCES categories (CategoryID),
ADD
    CONSTRAINT styles_fk01 FOREIGN KEY (CountryFK) REFERENCES countries (CountryID),
ADD
    CONSTRAINT Styles_pk PRIMARY KEY (StyleID);
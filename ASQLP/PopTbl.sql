create schema ASQLT;
USE ASQLT;

CREATE TABLE IF NOT EXISTS PopTbl (
    pref_name VARCHAR(32) PRIMARY KEY,
    population INTEGER NOT NULL
);
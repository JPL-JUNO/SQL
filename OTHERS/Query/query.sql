-- Active: 1691027669001@@127.0.0.1@3306@bank

CREATE TABLE
    IF NOT EXISTS base_info AS (
        SELECT
            card.*,
            custr.*
        FROM
            card_newest as card
            LEFT JOIN custr_newest as custr ON card.custr_nbr = custr.custr_nbr
            LEFT JOIN acct_newest as acct ON card.account = acct.acct
    );
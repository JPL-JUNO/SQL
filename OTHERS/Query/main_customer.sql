-- Active: 1691027669001@@127.0.0.1@3306@bank

-- 账单分期的样本

CREATE TABLE
    IF NOT EXISTS zdfq_tmp00 as(
        SELECT
            DISTINCT custr_nbr,
            account,
            card_id
        FROM card_newest
        WHERE
            dt = '2023-04-20'
    );

CREATE TABLE
    IF NOT EXISTS zdfq_tmp01 as(
        SELECT *
        FROM stmt_newest as a
            LEFT JOIN zdfq_tmp00 as b on a.account = b.account
            LEFT JOIN stmt_newest as c on a.account = c.account AND a.cycle_date_least = c.cycle_date AND c.dt = '2023-04-30'
        WHERE
            a.dt = '2023-04-30'
            AND a.cycle_date <= '2023-04-30'
            AND a.cycle_date_next > '2023-04-30'
            AND a.purchase >= 500 -- 消费金额要大于 500
            AND c.odue_flag = '正常'
            AND a.product IN ('乐乐卡', '哈哈卡')
    );

CREATE TABLE
    IF NOT EXISTS zdfq_tmp01 as(
        SELECT
            b.custr_nbr,
            a.account,
            min(a.purch_day) as purch_day,
            sum(a.orig_purch) as orig_purch,
            avg(a.int_rate) as int_rate,
            avg(nbr_mths) as nbr_mths,
            min(xstatus) as xstatus,
        FROM mpur_newest as a
            INNER JOIN zdfq_tmp01 as b on a.account = b.account AND a.purch_day > '2023-04-30' and a.purch_day < b.cycle_date_next
        WHERE
            a.dt = '2023-04-30'
            AND a.my_type = '账单分期'
        GROUP BY 1, 2, 3
    );

CREATE TABLE
    IF NOT EXISTS zdfq_tmp02 as(
        SELECT
            a.custr_nbr,
            a.account,
            a.card_id,
            a.product,
            CASE b.orig_purch > 0 THEN 1
                else 0
            END as label a.bal_free,
            a.close_bal,
            a.purchases,
            a.orig_purch
        FROM zdfq_tmp01 as a
            LEFT JOIN zdfq_tmp01 as b ON a.account = b.account
    );

-- 高频客户只要仅6个月有分期就被判定为高频

CREATE TABLE
    IF NOT EXISTS zdfq_tmp03 AS(
        SELECT b.custr_nbr,
        FROM mpur_newest as a
            INNER JOIN zdfq_tmp03 as b ON a.custr_nbr = b.custr_nbr
        WHERE
            a.purch_day <= '2023-04-30'
            AND a.purch_day >= DATE('2023-04-30' - INTERVAL 6 MONTH)
    );

-- SELECT '2023-01-01' > DATE('2023-04-30' - INTERVAL 6 MONTH);

-- 新客户，历史没有分期

CREATE TABLE
    IF NOT EXISTS zdfq_tmp04 AS(
        SELECT
        FROM zdfq_tmp03 as a
            LEFT JOIN mpur_newest as b ON a.custr_nbr = b.custr_nbr and b.purch_day < '2023-04-30' and b.custr_nbr IS NULL
    );

-- 分期主表

CREATE TABLE fenqi_main AS (
        SELECT
            a.custr_nbr a.account,
            a.card_id,
            a.product,
            a.close_bal,
            a.purchases,
            a.label,
            CASE
                WHEN b.custr_nbr is NOT NULL THEN '高频'
                WHEN c.custr_nbr IS NOT NULL THEN '新客'
                else '低频'
            END AS model_type
        FROM zdfq_tmp03 as a
            LEFT JOIN zdfq_tmp04 as b on a.custr_nbr = b.custr_nbr
            LEFT JOIN zdfq_tmp01 as c ON a.custr_nbr = c.custr_nbr
    );
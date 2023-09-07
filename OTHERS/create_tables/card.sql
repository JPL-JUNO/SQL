-- Active: 1691027669001@@127.0.0.1@3306@bank

CREATE TABLE
    card(
        custr_nbr VARCHAR(32) COMMENT '客户号',
        account VARCHAR(32) COMMENT '账户号',
        card_id VARCHAR(32) COMMENT '卡号',
        cancel_code ENUM("正常", "不正常") COMMENT '卡片状态',
        product VARCHAR(32) COMMENT '产品类型',
        cancel_day DATE COMMENT '取消日期',
        active_day DATE COMMENT '激活日期',
        active_fst DATE COMMENT '首次激活日期',
        issue_day DATE COMMENT '发卡日期',
        cardholder ENUM('1', '0') COMMENT '主卡标识',
        dt DATE COMMENT '日期分区'
    );

INSERT INTO card
VALUES (
        '0000001',
        '1000001',
        '3000001',
        '正常',
        '哈哈卡',
        '3000-12-31',
        '2023-01-01',
        '2023-01-01',
        '2023-01-02',
        '1',
        '2023-01-02'
    );

INSERT INTO card
VALUES (
        '0000002',
        '1000002',
        '3000002',
        '正常',
        '哈哈卡',
        '3000-12-31',
        '2022-01-01',
        '2022-01-01',
        '2022-01-02',
        '1',
        '2022-01-02'
    );

INSERT INTO card
VALUES (
        '0000002',
        '1000002',
        '3000002',
        '正常',
        '哈哈卡',
        '3000-12-31',
        '2023-01-01',
        '2022-01-01',
        '2022-01-02',
        '1',
        '2023-01-01'
    );

INSERT INTO card
VALUES (
        '0000003',
        '1000003',
        '3000003',
        '正常',
        '乐乐卡',
        '3000-12-31',
        '2022-01-01',
        '2022-01-01',
        '2022-01-02',
        '1',
        '2022-01-02'
    );

INSERT INTO card
VALUES (
        '0000003',
        '1000003',
        '3000003',
        '不正常',
        '乐乐卡',
        '2023-05-01',
        '2022-01-01',
        '2022-01-01',
        '2022-01-02',
        '1',
        '2023-05-01'
    );
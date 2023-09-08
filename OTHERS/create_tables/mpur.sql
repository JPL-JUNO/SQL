-- Active: 1691027669001@@127.0.0.1@3306@bank

CREATE TABLE
    IF NOT EXISTS mpur(
        account VARCHAR(32) COMMENT '账户',
        card_nbr VARCHAR(32) COMMENT '卡号',
        mp_n INT COMMENT '分期次数',
        orig_purch FLOAT COMMENT '分期金额（本金）',
        orig_fee FLOAT COMMENT '分期费用',
        my_type ENUM("账单分期", "灵活分期", "大额分期") COMMENT '分期类型',
        purch_day DATE COMMENT '分期日期',
        prod_id VARCHAR(32) COMMENT '分期付款商品号',
        int_rate FLOAT COMMENT '分期付款利率',
        nbr_mths INT COMMENT '总分期月数',
        inp_src VARCHAR(32) COMMENT '交易来源',
        dt DATE COMMENT '日期'
    );
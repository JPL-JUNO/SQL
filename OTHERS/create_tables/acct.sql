-- Active: 1691027669001@@127.0.0.1@3306@bank

CREATE TABLE
    acct(
        acct VARCHAR(32) COMMENT '卡对应的账户号',
        close_code ENUM("正常", "取消") COMMENT '账户状态',
        product VARCHAR(32) COMMENT '卡种',
        branch VARCHAR(32) COMMENT '分行编号',
        day_opened DATE COMMENT '开户日期',
        cred_limit FLOAT COMMENT '额度',
        cutoff_day DATE COMMENT '还款截止日期',
        lastpayday DATE COMMENT '上期还款日期',
        purchases FLOAT COMMENT '本期消费金额',
        stm_balfre FLOAT COMMENT '最近一期账单预借现金金额',
        stm_balint FLOAT COMMENT '最近一期账单金额',
        stm_balnce FLOAT COMMENT '分期付款剩余总额',
        mp_dal FLOAT COMMENT '逾期天数',
        day_odue int COMMENT '最高逾期天数',
        mths_odue int COMMENT '影子额度',
        int_code int COMMENT '利率代码',
        temp_limit FLOAT COMMENT '临时额度',
        dt DATE COMMENT '日期分区'
    );

INSERT INTO acct
VALUES (
        'a0000001',
        '正常',
        '乐乐卡',
        '杭州',
        '2022-12-30',
        50000,
        '2023-07-15',
        '2023-07-15',
        5991.12,
        0,
        5991.12,
        0,
        0,
        0,
        0,
        1,
        0,
        '2023-07-15'
    ), (
        'a0000002',
        '正常',
        '乐乐卡',
        '上海',
        '2022-12-30',
        50000,
        '2023-07-15',
        '2023-07-15',
        6991.12,
        0,
        6991.12,
        0,
        0,
        0,
        0,
        1,
        0,
        '2023-07-15'
    );
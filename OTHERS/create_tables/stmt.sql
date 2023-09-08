-- Active: 1691027669001@@127.0.0.1@3306@bank

CREATE TABLE
    IF NOT EXISTS stmt(
        account VARCHAR(32) COMMENT '账户号',
        custr_nbr VARCHAR(32) COMMENT '客户号',
        card_nbr VARCHAR(32) COMMENT '卡号',
        product VARCHAR(32) COMMENT '产品名称',
        cycle_nbr VARCHAR(32) COMMENT '出账日',
        month_nbr VARCHAR(32) COMMENT '账单月',
        pay_flag ENUM("全额还款", "未还款") COMMENT '还款标识',
        bal_free FLOAT COMMENT '当期本金',
        close_bal FLOAT COMMENT '期末余额',
        opbal_flag ENUM("+", "-") COMMENT '期初余额',
        clsbal_flag ENUM("+", "-") COMMENT '期末余额标识',
        odue_flag ENUM("0", '1', '2') COMMENT '逾期标识',
        purchases FLOAT COMMENT '消费金额',
        other_fees FLOAT COMMENT '其他费用（金额较小，可能是利息手续费之类）',
        cash_advce FLOAT COMMENT '未出账单预借现金总计（本期信用卡套现金额）',
        int_chgd FLOAT COMMENT '利息总计',
        pen_chrg FLOAT COMMENT '滞纳金',
        payment FLOAT COMMENT '还款',
        cred_adj FLOAT COMMENT '未出账单调帐总计（若客户针对未出账单进行分期，则在本期账单内将对应的分期本金减掉）',
        instl_amt FLOAT COMMENT '最低还款额',
        bal_mp FLOAT COMMENT '分期余额',
        min_due_dt FLOAT COMMENT '',
        dt DATE COMMENT '账单时间'
    );
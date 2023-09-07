-- Active: 1691027669001@@127.0.0.1@3306@bank

CREATE TABLE
    custr(
        custr_nbr VARCHAR(32) COMMENT '客户号',
        cifname CHAR COMMENT '姓名',
        class_code VARCHAR(255) COMMENT '客户分类',
        comp_name VARCHAR(255) COMMENT '单位名称',
        cred_limit INT COMMENT '客户信用额度',
        day_birth date COMMENT '出生日期',
        educa VARCHAR(32) COMMENT '教育程度',
        gender ENUM('male', 'female', 'unknown') COMMENT '性别',
        mar_status VARCHAR(255) COMMENT '婚姻状况',
        occ_catgry VARCHAR(255) COMMENT '公司性质',
        occ_code VARCHAR(255) COMMENT '行业类别代码',
        work_calls ENUM("No", "Yes") COMMENT '能否工作事件联系',
        yr_in_comp INT COMMENT '个人工龄',
        int_taxcod VARCHAR(255) COMMENT '职务/岗位',
        income_ann FLOAT COMMENT '个人睡前年收入',
        occu_desc VARCHAR(255) COMMENT '职业描述',
        occu_type VARCHAR(255) COMMENT '职业',
        dt DATE COMMENT '日期分区'
    );
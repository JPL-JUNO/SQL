-- Active: 1698423498831@@127.0.0.1@3306@ls
SELECT @@datadir;

SELECT * FROM performance_schema.users;

-- NULL 值用于内部线程或者身份验证失败的用户会话

SELECT
    user,
    host,
    total_connections AS cxns
FROM performance_schema.accounts
ORDER BY cxns DESC;
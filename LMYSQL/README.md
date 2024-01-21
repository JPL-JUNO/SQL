# [MySQL 学习手册](https://book.douban.com/subject/36351486/)

## Windows 下创建数据库

1. 在命令行中 `cd path` 进入指定的路径
2. 键入 `mysql -h localhost -P  3306 -u root -p` 然后输入密码
3. 创建数据库 `create database sakila;`
4. 切换当前使用的数据库`use sakila;`
5. 导入文件 `source C:/sql_file_path.sql;`

## 相关说明

1. [employees 数据库有关说明](https://github.com/datacharmer/test_db)

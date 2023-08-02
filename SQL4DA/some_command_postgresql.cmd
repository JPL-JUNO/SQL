@REM 使用命令行创建一个数据库，指定用户名和你的数据库名
@REM 然后会需要你键入密码
createdb -U username databasename

@REM 进入用户
psql -U postgres

@REM 斜杠和小写的L，查看数据库列表
\l
@REM 进入数据库
\cd databasename
@REM 可以查看数据库中的表列表
\dt

@REM 从文件中为某个数据库创建一些表
psql -U postgres -d databasename -f C:\<path>\filename
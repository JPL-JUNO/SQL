-- USE ASQLP;
drop table if exists userInfo;
-- 创建银行客户表
create table if not exists userinfo(
	customerid int primary key auto_increment comment '客户编号',
    customername varchar(8) not null comment '用户姓名',
    pid char(18) not null comment '用户身份证',
    telephone char(11) not null comment '手机号码',
    address varchar(50) comment '地址'
) engine=InnoDB charset=utf8mb4 comment='客户表';
-- warning(s): 3719 'utf8' is currently an alias for the character set UTF8MB3, 
-- but will be an alias for UTF8MB4 in a future release. 
-- Please consider using UTF8MB4 in order to be unambiguous.

drop table if exists cardinfo;
create table if not exists cardinfo(
	cardid varchar(19) not null primary key comment '银行卡卡号',
    curid varchar(10) not null default 'RMB' comment '币种',
    savingid int not null comment '存款类型',
    opendate timestamp not null comment '开卡日期',
    openmoney decimal not null comment '开卡金额',
    balance decimal not null comment '账户余额',
    `password` varchar(6) not null default '888888' comment '密码',
    isreportloss bit not null default 0 comment '是否挂失',
    customerid int not null comment '客户编号'
) engine=InnoDB charset=utf8mb4 comment='银行卡信息表';

drop table if exists deposit;
create table if not exists deposit(
	savingid int primary key comment '存款类型',
    savingname varchar(20) not null comment '存款类型名称',
    curid varchar(10) not null default 'RMB' comment '币种'
    )engine=InnoDB charset=utf8mb4 comment='存款类型表';
    
drop table if exists tradeinfo;
create table if not exists tradeinfo(
	transdate timestamp not null comment'交易日期',
    cardid char(19) not null comment '卡号',
    transtype char(10) not null comment '交易类型',
    transmoney decimal not null comment '交易金额',
    remark text comment '交易备注'
	)engine=innodb charset=utf8mb4 comment='交易信息表';

alter table cardinfo modify openmoney decimal(9,2);
alter table cardinfo modify balance decimal(9,2);

alter table cardinfo add constraint fk_customerid foreign key(customerid) references userinfo(customerid);
alter table cardinfo add constraint fk_savingid foreign key(savingid) references deposit(savingid);
-- alter table cardinfo drop foreign key fk_customerid; 

INSERT INTO userInfo(customerID,customerName,PID,telephone,address)
	VALUES(1,'丁六','567891321242345618','13645667783','北京西城区'),
		(2,'王五','56789132124234567X','13642345112','河北石家庄市'),
		(3,'张三','567891321242345789','13567893246','北京海定区'),
		(4,'丁一','123451321242345618','13056434411','河南新乡'),
		(5,'李四','678911321242345618','13318877954','山东济南市');
        

INSERT INTO deposit(savingID,savingName)
	VALUES(1,"定期一年"),
		(2,"定期二年"),
		(3,'活期');

#银行卡信息数据
INSERT INTO cardInfo(cardID,savingID,openDate,openmoney,balance,`password`,IsReportLoss,customerID)
	VALUES('1010357612121004',1,NOW(),1,1001,'888888',0,1),
	('1010357612121130',1,NOW(),1,1,'888888',0,2),
	('1010357612125678',3,NOW(),1000,6100,'123456',0,3),
	('1010357612128284',3,NOW(),1000,1001,'888888',0,4),
	('1010357612123333',1,NOW(),1,1501,'123123',1,5);

UPDATE cardInfo SET cardID='1010357612121134' WHERE cardID='1010357612123333';

#交易信息表数据
INSERT INTO tradeInfo(transDate,cardID,transType,transMoney,remark)
	VALUES(NOW(),'1010357612125678','支取',900,NOW()),
		(NOW(),'1010357612121130','存入',300,NOW()),
		(NOW(),'1010357612121004','存入',1000,NOW()),
		(NOW(),'1010357612121130','存入',1900,NOW()),
		(NOW(),'1010357612121134','存入',5000,NOW()),
		(NOW(),'1010357612121134','存入',500,NOW()),
		(NOW(),'1010357612121134','支取',2000,NOW()),
		(NOW(),'1010357612125678','存入',2000,NOW()),
		(NOW(),'1010357612121134','支取',2000,NOW()),
		(NOW(),'1010357612125678','存入',2000,NOW()),
		(NOW(),'1010357612125678','存入',2000,NOW());

select * from userinfo;
select * from cardinfo;
select * from tradeinfo;
select * from deposit;

-- (1)修改客户密码：张三，李四
update cardinfo set `password`=123456 where cardid='1010357612125678';
update cardinfo set `password`=123123 where cardid='1010357612121134';

-- (2)办理一行卡挂失：李四
update cardinfo set isreportloss=1 where cardid='1010357612121134';

select c.cardid '卡号', c.curid '货币', d.savingname '存储类型', c.openmoney '开户金额', c.balance '账户余额',
c.`password` '密码', c.isreportloss '是否挂失', u.customername '客户姓名'
from cardinfo c
inner join userinfo u
on c.customerid=u.customerid
inner join deposit d
on c.savingid=d.savingid;

-- 统计银行总存入金额和总支出金额
select transtype '资金流向', sum(transmoney) '总金额' from tradeinfo
group by transtype;

-- 查询本周开户信息
select c.cardid '卡号', u.customername '姓名', c.curid '货币类型', d.savingname '存储类型', 
	c.opendate '开户时间', c.openmoney '开户金额', c.balance '余额', c.isreportloss '是否挂失'
from userinfo u
inner join cardinfo c
on u.customerid = c.customerid
inner join deposit d
on c.savingid = d.savingid
where week(c.opendate) = week(now());

select cardid from tradeinfo where transmoney=(
	select max(transmoney) from tradeinfo where month(transdate)=month(now())
);
select *, rank() over(partition by cardid order by transmoney) ranks from tradeinfo;
select cardid from tbl where amt=(select max(amt) from (select cardid, sum(transmoney) amt from tradeinfo group by cardid) as tbl);

select t.cardid from tradeinfo t 
	join (select cardid, sum(transmoney) as amt from tradeinfo group by cardid) b 
    on t.cardid=b.cardid;
use ASQLT;
CREATE TABLE IF NOT EXISTS SomeTable (
    p_key CHAR(1) PRIMARY KEY,
    col_1 INTEGER NOT NULL,
    col_2 CHAR(2) NOT NULL
);

select * from sometable;

INSERT INTO SomeTable VALUES('a', 1, '一');
INSERT INTO SomeTable VALUES('b', 2, '二');
INSERT INTO SomeTable VALUES('c', 3, '三');

update sometable
	set p_key = 'd'
	where p_key = 'a';
    
update sometable
	set p_key = 'a'
    where p_key = 'b';

update sometable
	set p_key = 'b'
    where p_key = 'd';
    
select * from sometable;
    
update sometable
	set p_key = case 
    when p_key = 'a' then 'b'
    when p_key = 'b' then 'a'
    else p_key end
where p_key in ('a', 'b');

select * from sometable;

UPDATE SomeTable
   SET p_key = CASE WHEN p_key = 'a'
                    THEN 'b'
                    WHEN p_key = 'b'
                    THEN 'a'
                    ELSE p_key END
 WHERE p_key IN ('a', 'b');
				
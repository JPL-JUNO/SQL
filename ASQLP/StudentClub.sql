CREATE TABLE StudentClub (
    std_id INTEGER,
    club_id INTEGER,
    club_name VARCHAR(32),
    main_club_flg CHAR(1),
    PRIMARY KEY (std_id , club_id)
);

INSERT INTO StudentClub VALUES(100, 1, '棒球', 'Y');
INSERT INTO StudentClub VALUES(100, 2, '管弦乐', 'N');
INSERT INTO StudentClub VALUES(200, 2, '管弦乐', 'N');
INSERT INTO StudentClub VALUES(200, 3, '羽毛球','Y');
INSERT INTO StudentClub VALUES(200, 4, '足球', 'N');
INSERT INTO StudentClub VALUES(300, 4, '足球', 'N');
INSERT INTO StudentClub VALUES(400, 5, '游泳', 'N');
INSERT INTO StudentClub VALUES(500, 6, '围棋', 'N');

select * from studentclub;

select std_id, max(club_id) as main_club
	from studentclub
    group by std_id
    having count(*) = 1
union all
select std_id, club_id as main_club
	from studentclub
    where main_club_flg = 'Y';
    
select std_id, 
	case when count(*) = 1
		then max(club_id) 
		else max(case when main_club_flg = 'Y' then club_id else null end)
    end 'main_club'
	from studentclub
    group by std_id;
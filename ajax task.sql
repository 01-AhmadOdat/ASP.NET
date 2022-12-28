create table Comments(
id int identity (1,1),
txt varchar(255)
);
select*from Comments
insert into Comments (txt) values ('aaa');
DELETE FROM Comments;
drop table Comments
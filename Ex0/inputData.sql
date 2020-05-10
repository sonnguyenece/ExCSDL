/*4*/

insert into Class(ClassName,StartDate,Status)
values ('A1','2008-12-20',1);
insert into Class(ClassName,StartDate,Status)
values ('A2','2008-12-20',1);
insert into Class(ClassName,Status)
values ('A3',0);

update class
Set classID=3
where (classID=10);

delete from class where(classID=3);

insert into Students
values(1,'Hung','HaNoi','111',1,1),
(2,'Hoa','Hai Phong','',1,1),
(3,'Manh','HaNoi','222',0,2);
​
insert into subjects(subname,credit,status) values ('CF',5,1);
insert into subjects(subname,credit,status) values ('C',6,1);
insert into subjects(subname,credit,status) values ('HDJ',5,1);
insert into subjects(subname,credit,status) values ('RBMS',10,1);

insert into mark (markID,subID,studentID) values (1,1,1);
insert into mark (markID,subID,studentID,mark,examTimes) values (2,1,2,10,2);
insert into mark (markID,subID,studentID,mark,examTimes) values (3,2,1,12,1);


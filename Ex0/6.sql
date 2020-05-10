/*6 hien thi thong tin*/
/*6a*/
use bonusexercise;
select studentName from students
where studentName like 'h%';

/*6b*/
select className from class
where StartDate like '____-12-__'
;
/*6c*/
select max(credit) from subjects;

/*6d*/
select * 
from subjects
where Credit = (select max(Credit) from Subjects);

/*6e*/
select * 
from subjects
where Credit between 3 and 5;

/*6f*/
select class.classID,class.className,students.studentName,students.Adress
from class
inner join students
on class.classID=students.classID;

select class.classID,class.className,students.studentName,students.Adress
from class
left join students
on class.classID=students.classID;

select class.classID,class.className,students.studentName,students.Adress
from class
right join students
on class.classID=students.classID;

/*6g*/
select * from subjects
where subjects.status=0;

/*6h*/
select subjects.subid,subname,credit,status from subjects
inner join mark
on subjects.subID=(
select subID 
from mark
having (mark.mark = max(mark))
);

/*6i*/
alter table mark
add foreign key(StudentID) references students(StudentID);

select students.studentID,studentName,adress,phone,status,students.classID,avg(mark.mark) as 'diem trung binh' from students
inner join mark
on students.studentID=mark.studentID
group by students.studentID;

/*6j*/
select students.studentID,studentName,adress,phone,status,students.classID,avg(mark.mark) as 'diem trung binh' from students
inner join mark
on students.studentID=mark.studentID
group by students.studentID
order by mark.mark desc;

/*6k*/
select students.studentID,studentName,adress,phone,status,students.classID,avg(mark.mark) as 'diem trung binh' from students
inner join mark
on students.studentID=mark.studentID
group by students.studentID
having avg(mark.mark)>10;

/*6l*/
select studentName,subName,mark from mark
inner join students
on mark.studentID=students.studentID
inner join subjects
on mark.subID=subjects.subID
order by mark desc

;



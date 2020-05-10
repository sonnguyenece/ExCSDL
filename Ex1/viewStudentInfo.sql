/*Tạo một view tên là StudentInfo để xem đầy đủ các thông tin về học viên gồm
(RN,sID,Name, Age, Gender, sName, Mark, Date).*/

create view StudentInfo as
SELECT  students.RN ,Name,Age, 
case WHEN Gender =0 THEN "Female"
    WHEN Gender = 1 THEN "Male"
    ELSE "Unknow"
END AS Gender
,Mark,Date,sName,subject.sID
FROM ((studentsubject
inner join students on studentsubject.RN=students.RN)
inner join subject on studentsubject.sID=subject.sID);

select * from StudentInfo;

-- drop view StudentInfo

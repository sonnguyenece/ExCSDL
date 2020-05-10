/*12. Viết một Store Procedure nhận vào một 2 tham số, tham số thứ nhất là tên học viên, tham
số thứ 2 là điểm. Procedure này sẽ xóa toàn bộ các thông tin liên quan đến học viên có
tên được cung cấp nếu tất cả các điểm của học viên đó đều nhỏ hơn tham số thứ 2.
Trường hợp tham số thứ nhất là dấu * thì procedure sẽ xóa tất cả các học viên.*/

DELIMITER //

CREATE PROCEDURE GetAllProducts(in StuName varchar(50),SubMark int)
BEGIN
	SELECT  students.RN ,Name,Age, 
case WHEN Gender =0 THEN "Female"
    WHEN Gender = 1 THEN "Male"
    ELSE "Unknow"
END AS Gender
,Mark,Date,sName,subject.sID
FROM ((studentsubject
inner join students on studentsubject.RN=students.RN)
inner join subject on studentsubject.sID=subject.sID)
    where (Name=StuName AND studentsubject.Mark<SubMark);
END //
DELIMITER ;

call GetAllProducts('Mỹ Linh',10);

DROP PROCEDURE GetAllProducts;

DELIMITER //
CREATE PROCEDURE delStudent(
in StuName varchar(50),SubMark int
)
BEGIN
delete from students 
where students.RN in (
	select RN from (select students.RN from students 
	inner join studentsubject 
	on students.RN=studentsubject.RN
	where(students.Name="Shit" AND studentsubject.Mark<10)) as B
);

END //
DELIMITER ;
drop PROCEDURE delStudent;
call delStudent('Shit',10);
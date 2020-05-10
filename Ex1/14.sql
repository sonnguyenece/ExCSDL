/*14. Tạo một bảng tên là Top3 với các cột (Rank,RN, Name, Mark, sName, Date) với dữ liệu
gồm chỉ 3 dòng có điểm cao nhất, cột Rank sẽ chứa số thứ tự từ 1 đến 3(dòng đầu tiên là
1, dòng thứ 2 là 2 và dòng thứ 3 là 3), còn cột Date sẽ nhận giá trị là ngày cập nhật thông
tin.*/


SELECT count() AS `Rank`,
students.RN, Name, Mark, sName, curdate() as`update DATE`
from studentsubject
inner join students on studentsubject.RN=students.RN
inner join subject on studentsubject.sID=subject.sID
group by students.Name
order by Mark desc
limit 3
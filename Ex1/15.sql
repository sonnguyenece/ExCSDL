/*16. Hiển thị danh sách toàn bộ các học sinh giỏi (Học sinh giỏi là những người có điểm trung
bình lớn hơn 8.0 và không có điểm nào dưới 5).*/

select students.Name from students
where students.RN in (
select studentsubject.RN from studentsubject
where ((studentsubject.Mark)>8)
)
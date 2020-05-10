/*6. Hiển thị danh sách tất cả các môn học, với điểm cao nhất mà học viên đạt được với môn
học đó, môn nào chưa có điểm thì để trống (Null) phần điểm.*/
select sName,max(Mark) from subject
inner JOIN studentsubject
on subject.sId=studentsubject.sID
group by sName
order by max(Mark) desc;
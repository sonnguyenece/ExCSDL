/*7. Hiển thị tên môn học mà có nhiều hơn một điểm*/
select sName from subject
where subject.sID in(
					select sID from studentsubject
                    group by sID
                    having count(sID)>1
                    );


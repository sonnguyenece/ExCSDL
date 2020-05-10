/*7 Xoa du lieu*/
use bonusexercise;
/*7 a*/
delete from class
where class.status=0;

/*7 b*/
delete from subjects
where subjects.status=0;
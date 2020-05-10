/*8 Xoa du lieu*/
use bonusexercise;

/*8a*/
alter table mark
drop column examTimes;

/*8b sua ten cot*/
alter table class
change column `status` `classStatus` bit null ;

/*8c sua ten bang*/

alter table mark
rename to subjectTest;

/*8d */

/*8e */
drop database bonusexercise;

/*5 su dung update set _ concat */
/*5a*/
update Students
set ClassID=2
where StudentName='Hung';

/*5b*/
update Students
set Phone='no phone' 
where phone is null or phone='';

/*5c*/
update Class
set ClassName=concat('New ',ClassName)
where (status=0);

/*5d*/
update Class
set className=replace(ClassName,'New','Old')
where (status=0 and className like 'New%') ;

/*5e*/
update class
set status=0
where ClassID not in (select ClassID from Students);

/*5f*/
update subjects
set status=0
where subID not in (select subID from mark);

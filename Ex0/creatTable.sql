create database bonusExercise;
use bonusExercise;
create table Class(
ClassID int not null primary key auto_increment,
ClassName Nvarchar(50),
StartDate date not null,
Status bit 
) ;

create table Students(
StudentID int not null primary key,
StudentName Nvarchar(30) not null,
Adress Nvarchar(50),
Phone Varchar (20),
Status Bit,
ClassID int not null
);

create table Subjects(
SubID int not null primary key  auto_increment,
SubName Nvarchar(30) not null,
Credit Tinyint not null default 1 check(credit >=1),
Status bit default 1
);

create table Mark(
MarkID int not null primary key auto_increment,
SubID int  not null,
StudentID int not null,
constraint unique(SubID,StudentID),
Mark float default 0 check (Mark between 0 and 100),
ExamTimes Tinyint default 1
);

/*3a*/
alter table Students
add foreign key(ClassID) references Class(ClassID);

/*3b*/
-- alter table Class
-- drop StartDate;

-- alter table Class
-- add StartDate date not null default (curdate());

alter table Class
change `StartDate` `StartDate` date not null default (curdate());

/*3c*/
alter table Students
change column `Status` `Status` bit default 1;

/*3d*/
alter table Mark
add foreign key (SubID) references Subjects(SubID),
add foreign key (StudentID) references Students(StudentID)

/*4*/


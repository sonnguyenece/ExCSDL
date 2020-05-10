create database StudentManagement;

/*1a*/
create table Students(
RN varchar(10) primary key,
Name varchar(50) not null,
Age int,
Gender bit 
);

create table Subject(
sID varchar(10) primary key,
sName varchar(50) not null
);

create table StudentSubject(
RN varchar(10),
sID varchar(10),
Mark float,
Date date not null,
CONSTRAINT PK_Person PRIMARY KEY (RN,sID)
);

/*1b*/
ALTER TABLE StudentSubject
ADD CONSTRAINT Mark CHECK (Mark>0 and Mark<=10);

/*1c*/
alter table StudentSubject
add fk_RN varchar(10);

alter table StudentSubject
add foreign key (fk_RN) references Students(RN);

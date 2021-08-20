/*
drop table TeacherTechnologies
drop table Curse
drop table Technology
drop table StudentCalendar
drop table TeacherCalendar
drop table CurseItemStudent
drop table student
drop table CurseItem
drop table CurseItemState
drop table Teacher
drop table Person
drop table Applicant
drop table ApplicantErrorLog
drop table StudyExperience
drop table WorkExperience
drop table [User]*/


create table [User]
(
	Id int primary key identity(1,1),
	FirstName varchar(200) not null,
	LastName varchar(200) not null,
	Email varchar(150) not null,
	Password varchar(250) not null, 
	Active bit not null
)

insert into [User] values ('BackOffice','Sistema','backOffice@devplace.com.ar','xxxx',1)


Create table Person
(
	Id int primary key identity(1,1),
	FirstName varchar(200) not null,
	LastName varchar(200) not null,
	Email varchar(150) not null,
	Dni varchar(50) not null,
	Telephone varchar(150),
	LinkPhoto varchar(500),
	Observations varchar(5000),
	UserId int not null
)


insert into Person values ('Tomas','Chorraerin','tomaschorroarin@gmail.com','-----','-----','-----','-----',1)
insert into Person values ('Santiago','Pelle','pellesantiago@gmail.com','-----','-----','-----','-----',1)
insert into Person values ('Lucas','De Souza','torontoestudios@gmail.com','-----','-----','-----','-----',1)
insert into Person values ('Pablo','Besteiro','pablobesteiro@gmail.com','-----','-----','-----','-----',1)

Create table Teacher
(
	Id int primary key identity(1,1),
	PersonId int not null,	
	Linkedin varchar(500),
	Active bit not null,
	UserId int not null
)

ALTER TABLE [Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Person] FOREIGN KEY([PersonId])
REFERENCES [Person] ([Id])
ALTER TABLE [Teacher] CHECK CONSTRAINT [FK_Teacher_Person]

ALTER TABLE [Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_User] FOREIGN KEY([UserId])
REFERENCES [User] ([Id])
ALTER TABLE [Teacher] CHECK CONSTRAINT [FK_Teacher_User]


insert into Teacher values (1,'-----',1,1)
insert into Teacher values (2,'-----',1,1)
insert into Teacher values (3,'-----',1,1)
insert into Teacher values (4,'-----',1,1)

Create table Student
(
	Id int primary key identity(1,1),
	PersonId int not null,	
	Active bit not null,
	UserId int not null
)

ALTER TABLE [Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Person] FOREIGN KEY([PersonId])
REFERENCES [Person] ([Id])
ALTER TABLE [Student] CHECK CONSTRAINT [FK_Student_Person]

ALTER TABLE [Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([UserId])
REFERENCES [User] ([Id])
ALTER TABLE [Student] CHECK CONSTRAINT [FK_Student_User]


Create table Technology
(
	Id int primary key identity(1,1),
	Name varchar(200) not null,
	Active bit not null,
	UserId int not null
)

insert into Technology values ('C#',1,1)
insert into Technology values ('JAVA',1,1)
insert into Technology values ('Node JS',1,1)
insert into Technology values ('JavScript',1,1)
insert into Technology values ('Angular',1,1)
insert into Technology values ('React JS',1,1)


ALTER TABLE [Technology]  WITH CHECK ADD  CONSTRAINT [FK_Technology_User] FOREIGN KEY([UserId])
REFERENCES [User] ([Id])
ALTER TABLE [Technology] CHECK CONSTRAINT [FK_Technology_User]


Create table TeacherTechnologies
(
	Id int primary key identity(1,1),
	TeacherId int not null,
	TechnologyId int not null,
	UserId int not null
)

ALTER TABLE [TeacherTechnologies]  WITH CHECK ADD  CONSTRAINT [FK_TeacherTechnologies_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [Teacher] ([Id])
ALTER TABLE [TeacherTechnologies] CHECK CONSTRAINT [FK_TeacherTechnologies_Teacher]

ALTER TABLE [TeacherTechnologies]  WITH CHECK ADD  CONSTRAINT [FK_TeacherTechnologies_Technologies] FOREIGN KEY([TechnologyId])
REFERENCES [Technology] ([id])
ALTER TABLE [TeacherTechnologies] CHECK CONSTRAINT [FK_TeacherTechnologies_Technologies]

ALTER TABLE [TeacherTechnologies]  WITH CHECK ADD  CONSTRAINT [FK_TeacherTechnologies_User] FOREIGN KEY([UserId])
REFERENCES [User] ([Id])
ALTER TABLE [TeacherTechnologies] CHECK CONSTRAINT [FK_TeacherTechnologies_User]

insert into TeacherTechnologies values (1,3,1)
insert into TeacherTechnologies values (2,1,1)
insert into TeacherTechnologies values (3,6,1)
insert into TeacherTechnologies values (4,1,1)

Create Table CurseItemState
(
	Id int primary key identity(1,1),
	Name varchar(200) not null,
	active bit not null
)

insert into CurseItemState values ('Abierto',1)
insert into CurseItemState values ('Sin Vacantes',1)
insert into CurseItemState values ('Finalizado',1)


create table Curse
(
	Id int primary key identity(1,1),
	Name varchar(250) not null,
	TechnologyId int not null,
	ContentsTeached varchar(2500) not null,
	Descripcion varchar(2500) not null,
	Requeriments varchar(2500) not null,
	LinkPhoto varchar(500) not null,
	UserId int not null,
	Active bit	not null
)


ALTER TABLE [Curse]  WITH CHECK ADD  CONSTRAINT [FK_Curse_Technologies] FOREIGN KEY([TechnologyId])
REFERENCES [Technology] ([id])
ALTER TABLE [Curse] CHECK CONSTRAINT [FK_Curse_Technologies]

ALTER TABLE [Curse]  WITH CHECK ADD  CONSTRAINT [FK_Curse_User] FOREIGN KEY([UserId])
REFERENCES [User] ([Id])
ALTER TABLE [Curse] CHECK CONSTRAINT [FK_Curse_User]

insert into Curse values ('Curso de C#',1,'','','','',1,1)
insert into Curse values ('Curso de Node',3,'','','','',1,1)
insert into Curse values ('Curso de Javascript',4,'','','','',1,1)
insert into Curse values ('Curso de React',6,'','','','',1,1)


create table CurseItem
(
	Id int primary key identity(1,1),
	CurseId int not null,
	DateStart datetime not null,
	DateFinish datetime not null,
	TeacherId int not null,
	studentsCapacity int not null,
	UserId int not null,
	DateCreate datetime not null,
	stateId int not null,
	DateState datetime not null,	
	ItemDays varchar(2500) not null,
	Price numeric(8,2) not null
)


ALTER TABLE [CurseItem]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_Curse] FOREIGN KEY([CurseId])
REFERENCES [Curse] ([Id])
ALTER TABLE [CurseItem] CHECK CONSTRAINT [FK_CurseItem_Curse]

ALTER TABLE [CurseItem]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_CurseItemState] FOREIGN KEY([StateId])
REFERENCES [CurseItemState] ([Id])
ALTER TABLE [CurseItem] CHECK CONSTRAINT [FK_CurseItem_CurseItemState]

ALTER TABLE [CurseItem]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [Teacher] ([Id])
ALTER TABLE [CurseItem] CHECK CONSTRAINT [FK_CurseItem_Teacher]

ALTER TABLE [CurseItem]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_User] FOREIGN KEY([UserId])
REFERENCES [User] ([Id])
ALTER TABLE [CurseItem] CHECK CONSTRAINT [FK_CurseItem_User]


declare @fecha as datetime=getdate()
insert into CurseItem values (1,'20210518','20210708',2,10,1,@fecha,1,@fecha,'3-5',40000)
insert into CurseItem values (2,'20210518','20210708',1,10,1,@fecha,1,@fecha,'3-5',40000)
insert into CurseItem values (3,'20210518','20210708',4,10,1,@fecha,1,@fecha,'3-5',16000)
insert into CurseItem values (4,'20210518','20210708',3,10,1,@fecha,1,@fecha,'3-5',40000)


create table CurseItemStudent
(
	Id int primary key identity(1,1),
	StudentId int not null,
	CurseItemId int not null,
	UserId int not null,
	DateCreate datetime not null,
)

ALTER TABLE [CurseItemStudent]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_Student] FOREIGN KEY([StudentId])
REFERENCES [Student] ([Id])
ALTER TABLE [CurseItemStudent] CHECK CONSTRAINT [FK_CurseItem_Student]


ALTER TABLE [CurseItemStudent]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_CurseItem] FOREIGN KEY([CurseItemId])
REFERENCES [CurseItem] ([Id])
ALTER TABLE [CurseItemStudent] CHECK CONSTRAINT [FK_CurseItem_CurseItem]


ALTER TABLE [CurseItemStudent]  WITH CHECK ADD  CONSTRAINT [FK_CurseItemStudent_User] FOREIGN KEY([UserId])
REFERENCES [User] ([Id])
ALTER TABLE [CurseItemStudent] CHECK CONSTRAINT [FK_CurseItemStudent_User]


create table TeacherCalendar
(
	Id int primary key identity(1,1),
	CurseItemId int not null,
	TeacherId int not null,
	DateHourStart Datetime not null,
	DateHourEnd Datetime not null,
	UserId int not null
)

ALTER TABLE [TeacherCalendar]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCalendar_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [Teacher] ([Id])
ALTER TABLE [TeacherCalendar] CHECK CONSTRAINT [FK_TeacherCalendar_Teacher]

ALTER TABLE [TeacherCalendar]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCalendar_User] FOREIGN KEY([UserId])
REFERENCES [User] ([Id])
ALTER TABLE [TeacherCalendar] CHECK CONSTRAINT [FK_TeacherCalendar_User]

ALTER TABLE [TeacherCalendar]  WITH CHECK ADD  CONSTRAINT [FK_TeacherCalendar_CurseItem] FOREIGN KEY([CurseItemId])
REFERENCES [CurseItem] ([Id])
ALTER TABLE [TeacherCalendar] CHECK CONSTRAINT [FK_TeacherCalendar_CurseItem]

create table StudentCalendar
(
	Id int primary key identity(1,1),
	CurseItemId int not null,
	StudentId int,
	DateHourStart Datetime not null,
	DateHourEnd Datetime not null,
	UserId int not null
)


ALTER TABLE [StudentCalendar]  WITH CHECK ADD  CONSTRAINT [FK_StudentCalendar_Teacher] FOREIGN KEY([StudentId])
REFERENCES [Student] ([Id])
ALTER TABLE [StudentCalendar] CHECK CONSTRAINT [FK_StudentCalendar_Teacher]


ALTER TABLE [StudentCalendar]  WITH CHECK ADD  CONSTRAINT [FK_StudentCalendar_User] FOREIGN KEY([UserId])
REFERENCES [User] ([Id])
ALTER TABLE [StudentCalendar] CHECK CONSTRAINT [FK_StudentCalendar_User]


ALTER TABLE [StudentCalendar]  WITH CHECK ADD  CONSTRAINT [FK_StudentCalendar_CurseItem] FOREIGN KEY([CurseItemId])
REFERENCES [CurseItem] ([Id])
ALTER TABLE [StudentCalendar] CHECK CONSTRAINT [FK_StudentCalendar_CurseItem]



create table StudyExperience
(
Id int primary key identity(1,1),
Name varchar(250),
active bit
)

insert into StudyExperience values ('Si, una carrera de grado',1)
insert into StudyExperience values ('Si, una tecnicatura',1)
insert into StudyExperience values ('Si, hice cursos',1)
insert into StudyExperience values ('No',1)
insert into StudyExperience values ('No, pero soy Autodidacta',1)


create table WorkExperience
(
Id int primary key identity(1,1),
Name varchar(250),
active bit
)

insert into WorkExperience values ('No',1)
insert into WorkExperience values ('Si, menos de 2 años',1)
insert into WorkExperience values ('Si, mas de 2 años',1)

create table Applicant
(
Id int primary key identity(1,1),
Name varchar(250),
Email varchar(250),
TechnologyId int,
CurseItemId int,
StudyExperienceId int,
WorkExperienceId int,
Comments Varchar(250)
)

ALTER TABLE [Applicant]  WITH CHECK ADD  CONSTRAINT [FK_Applicant_StudyExperience] FOREIGN KEY([StudyExperienceId])
REFERENCES [StudyExperience] ([Id])
ALTER TABLE [Applicant] CHECK CONSTRAINT [FK_Applicant_StudyExperience]

ALTER TABLE [Applicant]  WITH CHECK ADD  CONSTRAINT [FK_Applicant_WorkExperience] FOREIGN KEY([WorkExperienceId])
REFERENCES [WorkExperience] ([Id])
ALTER TABLE [Applicant] CHECK CONSTRAINT [FK_Applicant_WorkExperience]

ALTER TABLE [Applicant]  WITH CHECK ADD  CONSTRAINT [FK_Applicant_Technology] FOREIGN KEY([TechnologyId])
REFERENCES [Technology] ([Id])
ALTER TABLE [Applicant] CHECK CONSTRAINT [FK_Applicant_Technology]

ALTER TABLE [Applicant]  WITH CHECK ADD  CONSTRAINT [FK_Applicant_CurseItem] FOREIGN KEY([CurseItemId])
REFERENCES [CurseItem] ([Id])
ALTER TABLE [Applicant] CHECK CONSTRAINT [FK_Applicant_CurseItem]

create table ApplicantErrorLog
(
	Id int primary key identity(1,1),
	Description varchar(250),
	Exception varchar(250),
	Datetime datetime
)





select ci.Id,c.Name, t.Name, p.FirstName from CurseItem ci
inner join curse c on c.id=ci.CurseId
inner join Technology t on t.Id=c.TechnologyId
inner join Teacher tp on tp.id=ci.TeacherId
inner join person p on p.id=tp.PersonId


select * from ApplicantErrorLog

select a.name, a.Email,a.Comments, t.Name,se.Name,we.Name
from Applicant a
inner join Technology t on t.Id=a.TechnologyId
inner join StudyExperience se on se.Id=a.StudyExperienceId
inner join WorkExperience we on we.Id=a.WorkExperienceId
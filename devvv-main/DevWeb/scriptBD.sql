/*
drop table TeacherTechnologies
drop table Curse
drop table Technology

drop table CurseItemStudent
drop table student
drop table CurseItem
drop table CurseItemState
drop table Teacher

drop table [User]*/

select * from [User]

create table [User]
(
	Id int primary key identity(1,1),
	FirstName varchar(200) not null,
	LastName varchar(200) not null,
	Email varchar(150) not null,
	Password varchar(250) not null, 
	Active bit not null
)


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


Create table Teacher
(
	Id int primary key identity(1,1),
	PersonId varchar(200) not null,	
	Linkedin varchar(500),
	Active bit not null,
	UserId int not null
)

ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Person] FOREIGN KEY([PersonId])
REFERENCES [dbo].[Person] ([Id])
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Teacher_Person]

ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_User]


Create table Student
(
	Id int primary key identity(1,1),
	FirstName varchar(200) not null,
	LastName varchar(200) not null,
	Dni varchar(50) not null,
	Email varchar(150) not null,
	Telephone varchar(150),	
	Observations varchar(5000),	
	DateCreate datetime not null,
	UserId int not null
)

ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_User]


select * from Technology
Create table Technology
(
	Id int primary key identity(1,1),
	Name varchar(200) not null,
	Active bit not null,
	UserId int not null
)

ALTER TABLE [dbo].[Technology]  WITH CHECK ADD  CONSTRAINT [FK_Technology_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Technology] CHECK CONSTRAINT [FK_Technology_User]


Create table TeacherTechnologies
(
	Id int primary key identity(1,1),
	TeacherId int not null,
	TechnologyId int not null,
	UserId int not null
)

ALTER TABLE [dbo].[TeacherTechnologies]  WITH CHECK ADD  CONSTRAINT [FK_TeacherTechnologies_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
ALTER TABLE [dbo].[TeacherTechnologies] CHECK CONSTRAINT [FK_TeacherTechnologies_Teacher]

ALTER TABLE [dbo].[TeacherTechnologies]  WITH CHECK ADD  CONSTRAINT [FK_TeacherTechnologies_Technologies] FOREIGN KEY([TechnologyId])
REFERENCES [dbo].[Technology] ([id])
ALTER TABLE [dbo].[TeacherTechnologies] CHECK CONSTRAINT [FK_TeacherTechnologies_Technologies]

ALTER TABLE [dbo].[TeacherTechnologies]  WITH CHECK ADD  CONSTRAINT [FK_TeacherTechnologies_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[TeacherTechnologies] CHECK CONSTRAINT [FK_TeacherTechnologies_User]


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
	Descripcion varchar(2500) not null,
	Requeriments varchar(2500) not null,
	LinkPhoto varchar(500) not null,
	UserId int not null,
	Active bit	not null
)

ALTER TABLE [dbo].[Curse]  WITH CHECK ADD  CONSTRAINT [FK_Curse_Technologies] FOREIGN KEY([TechnologyId])
REFERENCES [dbo].[Technology] ([id])
ALTER TABLE [dbo].[Curse] CHECK CONSTRAINT [FK_Curse_Technologies]

ALTER TABLE [dbo].[Curse]  WITH CHECK ADD  CONSTRAINT [FK_Curse_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[Curse] CHECK CONSTRAINT [FK_Curse_User]


create table CurseItem
(
	Id int primary key identity(1,1),
	CurseId int not null,
	DateStart datetime not null,
	DateFinish datetime not null,
	TeacherId int not null,
	studentsCapacity int not null,
	UserId int not null,
	DateCreate int not null,
	stateId int not null,
	DateState datetime not null,
	Price numeric(8,2) not null
)



ALTER TABLE [dbo].[CurseItem]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_CurseItemState] FOREIGN KEY([StateId])
REFERENCES [dbo].[CurseItemState] ([Id])
ALTER TABLE [dbo].[CurseItem] CHECK CONSTRAINT [FK_CurseItem_CurseItemState]

ALTER TABLE [dbo].[CurseItem]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([Id])
ALTER TABLE [dbo].[CurseItem] CHECK CONSTRAINT [FK_CurseItem_Teacher]

ALTER TABLE [dbo].[CurseItem]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[CurseItem] CHECK CONSTRAINT [FK_CurseItem_User]


create table CurseItemStudent
(
	Id int primary key identity(1,1),
	StudentId int not null,
	CurseItemId int not null,
	UserId int not null,
	DateCreate datetime not null,
)

ALTER TABLE [dbo].[CurseItemStudent]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([Id])
ALTER TABLE [dbo].[CurseItemStudent] CHECK CONSTRAINT [FK_CurseItem_Student]


ALTER TABLE [dbo].[CurseItemStudent]  WITH CHECK ADD  CONSTRAINT [FK_CurseItem_CurseItem] FOREIGN KEY([CurseItemId])
REFERENCES [dbo].[CurseItem] ([Id])
ALTER TABLE [dbo].[CurseItemStudent] CHECK CONSTRAINT [FK_CurseItem_CurseItem]


ALTER TABLE [dbo].[CurseItemStudent]  WITH CHECK ADD  CONSTRAINT [FK_CurseItemStudent_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
ALTER TABLE [dbo].[CurseItemStudent] CHECK CONSTRAINT [FK_CurseItemStudent_User]



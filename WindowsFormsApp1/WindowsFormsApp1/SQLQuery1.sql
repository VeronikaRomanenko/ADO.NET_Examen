create table Olympiads
(
Id int primary key identity,
Number int,
YearOf int,
IsWinter bit,
IdCountry int,
City nvarchar(25)
);
create table Country
(
Id int primary key identity,
NameCountry nvarchar(25)
);
create table Persons
(
Id int primary key identity,
FullName nvarchar(50),
DateOfBirth date,
IdCountry int,
IdKindOfSport int
);
create table KindsOfSport
(
Id int primary key identity,
NameKind nvarchar(25)
);
create table Results
(
Id int primary key identity,
Medal int,
IdPerson int,
IdOlympiad int
);

alter table Olympiads add foreign key(IdCountry) references Country(Id);
alter table Persons add foreign key(IdCountry) references Country(Id);
alter table Persons add foreign key(IdKindOfSport) references KindsOfSport(Id);
alter table Results add foreign key(IdPerson) references Persons(Id);
alter table Results add foreign key(IdOlympiad) references Olympiads(Id);

insert into Country
values ('Greece'),('France'),('USA'),('Italy'),('United Kingdom'),('Sweden'),('Germany'),('Ukraine');
insert into Olympiads
values (1, 2006, 0, 1, 'Athens'),(2, 2008, 1, 7, 'Berlin'),(3, 2010, 0, 3, 'Los Angeles'),(4, 2012, 1, 4, 'Rome'),(5, 2014, 0, 5, 'London'),
(6, 2016, 1, 6, 'Stockholm'),(7, 2018, 0, 7, 'Berlin');
insert into KindsOfSport
values ('Wrestling'),('Equestrian'),('Gymnastics');
insert into Persons
values ('Kelley Walton', '01.01.1990', 1, 1),('Oliver Moore', '01.01.1990', 1, 2),('Gwen Benson', '01.01.1990', 1, 3),
('Eric Lacroix', '01.01.1990', 2, 1),('Celine Mercier', '01.01.1990', 2, 2),('Genevieve Lefrancois', '01.01.1990', 2, 3),
('Mark Harrison', '01.01.1990', 3, 1),('Matthew Tucker', '01.01.1990', 3, 2),('Susan Stevenson', '01.01.1990', 3, 3),
('Giorgio Berardino', '01.01.1990', 4, 1),('Erico Nicolosi', '01.01.1990', 4, 2),('Erica Casali', '01.01.1990', 4, 3),
('Edward French', '01.01.1990', 5, 1),('Patricia York', '01.01.1990', 5, 2),('Joan Young', '01.01.1990', 5, 3),
('Fredrik Axelsson', '01.01.1990', 6, 1),('Maria Nyberg', '01.01.1990', 6, 2),('Sofia Arvidsson', '01.01.1990', 6, 3),
('Jurgen Lange', '01.01.1990', 7, 1),('Robert Bretz', '01.01.1990', 7, 2),('Kirsten Burgstaller', '01.01.1990', 7, 3),
('Svyatoslav Goncharov', '01.01.1990', 8, 1),('Antonina Richter', '01.01.1990', 8, 2),('Tatyana Tikhonova', '01.01.1990', 8, 3);
insert into Results
values (2, 1, 1),(3, 2, 1),(3, 4, 1),(null, 5, 1),(null, 7, 1),(null, 8, 1),(null, 10, 1),(null, 11, 1),(null, 13, 1),(null, 14, 1),(null, 16, 1),(null, 17, 1),(1, 19, 1),(1, 20, 1),(null, 22, 1),(2, 23, 1),
(null, 1, 2),(null, 3, 2),(1, 4, 2),(1, 6, 2),(null, 7, 2),(null, 9, 2),(2, 10, 2),(null, 12, 2),(null, 13, 2),(2, 15, 2),(null, 16, 2),(null, 18, 2),(3, 19, 2),(null, 21, 2),(null, 22, 2),(3, 24, 2),
(null, 2, 3),(null, 3, 3),(3, 5, 3),(null, 6, 3),(1, 8, 3),(2, 9, 3),(null, 11, 3),(null, 12, 3),(null, 14, 3),(1, 15, 3),(2, 17, 3),(null, 18, 3),(null, 20, 3),(3, 21, 3),(null, 23, 3),(null, 24, 3),
(null, 1, 4),(1, 2, 4),(null, 4, 4),(null, 5, 4),(null, 7, 4),(2, 8, 4),(null, 10, 4),(null, 11, 4),(1, 13, 4),(null, 14, 4),(null, 16, 4),(null, 17, 4),(2, 19, 4),(1, 20, 4),(3, 22, 4),(null, 23, 4),
(3, 1, 5),(null, 3, 5),(null, 4, 5),(1, 6, 5),(2, 7, 5),(null, 9, 5),(null, 10, 5),(2, 12, 5),(null, 13, 5),(null, 15, 5),(null, 16, 5),(null, 18, 5),(1, 19, 5),(3, 21, 5),(null, 22, 5),(null, 24, 5),
(1, 2, 6),(null, 3, 6),(null, 5, 6),(3, 6, 6),(3, 8, 6),(null, 9, 6),(null, 11, 6),(null, 12, 6),(null, 14, 6),(1, 15, 6),(null, 17, 6),(null, 18, 6),(2, 20, 6),(null, 21, 6),(null, 23, 6),(2, 24, 6),
(null, 1, 7),(2, 2, 7),(3, 4, 7),(null, 5, 7),(null, 7, 7),(null, 8, 7),(null, 10, 7),(null, 11, 7),(null, 13, 7),(null, 14, 7),(null, 16, 7),(3, 17, 7),(2, 19, 7),(1, 20, 7),(null, 22, 7),(null, 23, 7);
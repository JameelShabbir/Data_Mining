create table student(
	std_id int not null unique,
	std_name varchar(20) not null,
	std_subject varchar(32) not null,
	std_marks int not null
);
insert into student(std_id,std_name,std_subject,std_marks)values
(1,'jameel abbas','computer',99),
(2,'kumail abbas','computer',99),
(3,'abbas','maths',99),
(4,'ali haider','biology',99),
(5,'hussain','physics',99),
(6,'musa ali','islaimyat',99),
(7,'shabir abbas','english',99),
(8,'raza muhmad','computer',99),
(9,'sakina','ICT',99),
(10,'sayeda','maths',99);

-- another tabl  

create table subject(
	sub_id int not null unique,
	sub_name varchar(32) not null,
	sub_teacher varchar(32) not null,
	sub_marks int not null
);

insert into subject(sub_id,sub_name,sub_teacher,sub_marks)values
(1,'computer','Mam.Saima',99),
(2,'computer','Dr.irshad',79),
(3,'maths','Mr.Raza',89),
(4,'biology','mr.ali',88),
(5,'physics','Mr.hassn',77),
(6,'islaimyat','Mr.hani',76),
(7,'english','Mr.Saleh',87),
(8,'computer','Mis.noreen',91),
(9,'ICT','Dr.Jameel',99),
(10,'maths','Dr.Jameel',99);


SELECT std_name
FROM student
union
SELECT sub_teacher
FROM subject;

SELECT std_name
FROM student
except
SELECT sub_teacher
FROM subject



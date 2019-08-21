create database curso_ex;

go

use curso_ex;
 
go

CREATE TABLE curso (
nm_curso varchar (30),
id_cur int not null identity (1,1), );

go
CREATE TABLE aluno (
nm_alu varchar (50),
id_alu int not null,
end_alu varchar (80), );

drop table aluno

go

/* Incluido colunas */

alter table aluno
	add id_cur int				not null,
		tel_alu	numeric (09)	not null;

alter table aluno 
	alter column nm_alu varchar (90) not null;

alter table aluno
	add constraint alu_pk primary key (id_alu);

alter table curso
	add constraint cur_pk primary key (id_cur);

insert into curso 
	values  ('Informatica'),
			('Contabilidade');

select * from curso;

insert into aluno 
	values  (20,'Joao Mendes',1),
			(30,'Maria José',2);

select * from aluno 



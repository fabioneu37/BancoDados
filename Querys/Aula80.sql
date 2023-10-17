use universidade_u;

create table professor(
  idprofessor int auto_increment,
  nome varchar(50) not null,
  email varchar(100),
  constraint pk_idprofessor primary key(idprofessor)
);
describe professor;

select 
    codigo_professor,
    /*count(*) as repeticões,*/
    nome_professor,
    email_professor
from 
     disciplina;
/*group by
    codigo_professor;*/

update disciplina set email_professor = 'jorge@teste.com.br' where codigo_professor = 100;

insert into professor(idprofessor, nome, email)
select distinct
	codigo_professor,
    nome_professor,
    email_professor
from 
     disciplina;

select * from professor;
select * from disciplina;
alter table disciplina drop column nome_professor;
alter table disciplina drop column email_professor;

alter table disciplina rename column codigo_professor to fk_idprofessor;

alter table disciplina add constraint fk_disciplina_professor
foreign key(fk_idprofessor) references professor(idprofessor);

desc disciplina;


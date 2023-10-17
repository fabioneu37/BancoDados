use universidade_u;

select * from curso;

CREATE TABLE CURSO (
    idcurso int auto_increment PRIMARY KEY,
    descricao varchar(50)
);

insert into curso (descricao) 
values('Curso Completo do Desenvolvedor NodeJs e MongoDB');

insert into curso (descricao) 
values('Desenvolvedor Multiplataforma Android e IOS');

insert into curso (descricao)
values('Desenvolvimento Web com Angular');

insert into curso (descricao)
values('Desenvolvimento Web completo 2019');
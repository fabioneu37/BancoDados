use universidade_u;

select * from gasto;

truncate table gasto;

-- truncado a tabela aonde está fk
select * from telefone;
truncate table telefone;

-- truncando a tabela referência
select * from aluno;
set foreign_key_checks = 0;
truncate table aluno;

select * from telefone;

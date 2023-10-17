use universidade_u;

select * from  aluno;
alter table aluno add logadouro varchar(100);
alter table aluno add numero varchar(10);
alter table aluno add complemento varchar(20);
alter table aluno add bairro varchar(100);
alter table aluno add cidade varchar(50);
alter table aluno add estado varchar(2);

update 
     aluno
set 
     logadouro = 'Rua João de Abreu,',
     numero = '650',
     complemento = '',
     bairro = 'Setor Oeste',
     cidade = 'Goiânia',
     estado = 'GO'
where 
      idaluno = 5;

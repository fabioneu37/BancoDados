use universidade_u;

select * from endereco;

select * from aluno;

insert into endereco
	(logadouro, numero, complemento, bairro, cidade, estado, fk_idaluno)
select 
     logadouro, numero, complemento, bairro, cidade, estado, idaluno 
from 
     aluno;


alter table aluno drop column logadouro;
alter table aluno drop column numero;
alter table aluno drop column complemento;
alter table aluno drop column bairro;
alter table aluno drop column cidade;
alter table aluno drop column estado;

select * from endereco where fk_idaluno = 1;
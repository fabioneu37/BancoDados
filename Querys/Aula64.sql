use universidade_u;

select  data_inscricao_curso,valor_pago_curso from aluno;
select * from aluno_curso;
select * from aluno;

alter table aluno_curso add data_inscricao_curso date;
alter table aluno_curso add valor_pago_curso float(10,2);

select 
     idaluno, data_inscricao_curso, valor_pago_curso
from
   aluno
where
   idaluno = 1;

update 
	aluno_curso
set
    data_inscricao_curso = (select data_inscricao_curso from aluno where idaluno = 4),
    valor_pago_curso = (select valor_pago_curso from aluno where idaluno = 4)
where
   fk_idaluno = 4;

alter table aluno drop column data_inscricao_curso;
alter table aluno drop column valor_pago_curso ;
    
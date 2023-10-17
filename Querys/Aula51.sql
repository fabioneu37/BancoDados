use universidade_u;

select * from aluno;

/*count*/
select count(*) from aluno;
select count(distinct nome) from aluno;

/*max*/
select max(valor_pago_curso) from aluno;
select max(valor_pago_curso) from aluno where idade > 40;

/*min*/
select min(valor_pago_curso) from aluno;
select min(valor_pago_curso) from aluno where ativo_sn != 0;

/*avg*/
select avg(valor_pago_curso) from aluno;

/*sum*/
select sum(valor_pago_curso) from aluno;

select
	  max(valor_pago_curso) as maior_valor,
	  min(valor_pago_curso) as menor_valor,
      avg(valor_pago_curso) as media,
      sum(valor_pago_curso) as soma
from 
     aluno;

select valor_pago_curso as valor_pago, nome from aluno;

use universidade_u;

/* query para migração dos registros de funcionários */
insert into funcionario(idmatricula, nome, funcao, telefone)
select distinct
    matricula_funcionario,
    nome_funcionario,
    funcao_funcionario,
    telefone_funcionario
from 
	projeto_funcionario;

select * from funcionario;

/* query para migração dos registros de projeto */
insert into projeto(idcodigo, data_criacao, nome)
select distinct
    codigo_projeto,
    data_criacao_projeto,
    nome_projeto
from 
    projeto_funcionario;

select * from projeto;
select * from projeto_funcionario;

select * from projeto_funcionario where codigo_projeto = 1 order by data_criacao_projeto asc limit 1;
update projeto_funcionario set data_criacao_projeto = '2021-04-22 23:33:49' where codigo_projeto = 1;

select * from projeto_funcionario where codigo_projeto = 2 order by data_criacao_projeto asc limit 1;
update projeto_funcionario set data_criacao_projeto = '2021-01-24 11:39:41' where codigo_projeto = 2;

/* registros de relacionamente entre as tabelas */
insert into projeto_funcionario2(fk_idcodigo, fk_idmatricula, horas_estimadas, horas_realizadas)
select 
     codigo_projeto,matricula_funcionario,
     horas_estimadas,horas_realizadas
from
    projeto_funcionario;

select * from projeto_funcionario;

rename table projeto_funcionario2 to projeto_funcionario;


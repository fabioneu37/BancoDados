use universidade_u;
drop table projeto_funcionario;

CREATE TABLE PROJETO_FUNCIONARIO (
    codigo_projeto int,
    matricula_funcionario int,
    nome_projeto varchar(100) not null,
    nome_funcionario varchar(50) not null,
    funcao_funcionario varchar(50) not null,
    telefone_funcionario varchar(20),
    data_criacao_projeto datetime default current_timestamp,
    horas_estimadas int not null,
    horas_realizadas int
);

alter table projeto_funcionario add constraint pk_projeto_funcionario
primary key(codigo_projeto, matricula_funcionario);

desc projeto_funcionario;

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, 
	nome_funcionario, funcao_funcionario, horas_estimadas
)values(
    1, 100, 'Matricula Online', 
    'Bianca', 'Analista de Atendimento', 200);

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, 
	nome_funcionario, funcao_funcionario, horas_estimadas
)values(
    1, 110, 'Matricula Online', 
    'Fátima', 'Gerente de Atendimento', 100);

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, 
	nome_funcionario, funcao_funcionario, horas_estimadas
)values(
    1, 127, 'Matricula Online', 
    'Miguel', 'Analista Programador Sênior', 500);

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, 
	nome_funcionario, funcao_funcionario, horas_estimadas
)values(
    2, 221, 'Economia de Papel', 
    'Laura', 'Analista de Qualidade', 200);

insert into projeto_funcionario(
	codigo_projeto, matricula_funcionario, nome_projeto, 
	nome_funcionario, funcao_funcionario, horas_estimadas
)values(
    2, 353, 'Economia de Papel', 
    'João', 'Analista Finaceiro', 25);

insert into projeto_funcionario( 
    codigo_projeto, matricula_funcionario, nome_projeto,
    nome_funcionario, funcao_funcionario, horas_estimadas
)values( 
	2, 100, 'Economia de Papel',
    'Bianca', 'Analista de Atendimento',200);

select * from projeto_funcionario;

delete from projeto_funcionario where nome_funcionario = 'Carlos';


use universidade_u;

select * from aluno;
desc aluno;

alter table aluno add constraint uc_aluno_cpf unique(cpf);
alter table aluno add constraint uc_aluno_email unique(email);

insert into aluno(sexo, idade, email, data_inscricao_curso,
valor_pago_curso, ativo_sn, nome, cpf)
values('F', 25, 'rosa@teste.com.br', '2019-01-05',
625, 1, 'Rosa', '444.111.111-11');
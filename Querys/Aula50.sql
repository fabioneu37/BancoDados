use universidade_u;

select * from aluno;
select * from endereco;
desc endereco;

alter table endereco add constraint uc_fkidaluno unique(fk_idaluno);

insert into endereco(logadouro, numero, complemento, bairro,
cidade, estado, fk_idaluno)values(
'Avenida Paulista', 500, null, 'Bela Vista',
'São Paulo', 'SP', 6);
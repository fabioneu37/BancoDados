use universidade_u;

select * from funcionario;

alter table funcionario add column fk_idmatricula_supervisor int;

alter table funcionario add constraint fk_funcionario_supervisor
foreign key(fk_idmatricula_supervisor) references funcionario(idmatricula);

describe funcionario;

update funcionario set fk_idmatricula_supervisor = '110' where idmatricula = '100';
update funcionario set fk_idmatricula_supervisor = '354' where idmatricula = '127';

insert into funcionario(
    nome, funcao
)values(
    'Pedro', 'Gerente de TI'
);
update funcionario set fk_idmatricula_supervisor = 110 where idmatricula in (221, 353);


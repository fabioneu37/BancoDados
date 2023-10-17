use universidade_u;

desc endereco;

alter table endereco modify column logadouro varchar(100) not null;
alter table endereco modify column numero varchar(10) not null;
alter table endereco modify column bairro varchar(100) not null;
alter table endereco modify column cidade varchar(50) not null;
alter table endereco modify column estado char(2) not null;
alter table endereco modify column fk_idaluno int not null;
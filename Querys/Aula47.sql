use universidade_u;

desc telefone;

CREATE TABLE TELEFONE (
    idtelefone int auto_increment PRIMARY KEY,
    numero varchar(20) not null,
    tipo enum('res', 'com', 'cel') not null,
    fk_idaluno int not null
);


alter table telefone modify column numero varchar(20) not null;
alter table telefone modify column tipo enum('res', 'com', 'cel') not null;
alter table telefone modify column fk_idaluno int not null;
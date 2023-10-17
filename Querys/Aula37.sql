use universidade_u;
select idaluno,nome from aluno;
select * from telefone;
desc telefone;

alter table telefone add column fk_idaluno int;

alter table telefone add constraint fk_aluno_telefone
 foreign key (fk_idaluno) references aluno(idaluno);
/*
CREATE TABLE TELEFONE (
    idtelefone int auto_increment PRIMARY KEY,
    numero varchar(20),
    tipo char(3),
    fk_idaluno int,
    FOREIGN KEY (fk_idaluno) REFERENCES ALUNO (idaluno)
);
*/

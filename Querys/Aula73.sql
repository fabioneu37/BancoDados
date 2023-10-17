use universidade_u;

create table projeto(
	idcodigo int auto_increment,
    data_criacao datetime default current_timestamp,
    nome varchar(100) not null,
    constraint pk_projeto primary key(idcodigo)
);

desc projeto;

create table funcionario(
    idmatricula int auto_increment,
    nome varchar(50) not null,
    funcao varchar(50) not null,
    telefone varchar(20),
    constraint pk_funcionario primary key(idmatricula)
);

desc funcionario;

create table projeto_funcionario2(
    fk_idcodigo int,
    fk_idmatricula int,
    horas_estimadas int not null,
    horas_realizadas int,
    constraint pk_projeto_funcionario 
    primary key( fk_idcodigo,  fk_idmatricula)
);
desc projeto_funcionario2;

alter table projeto_funcionario2 add constraint
foreign key(fk_idcodigo) 
references projeto(idcodigo);
 
alter table projeto_funcionario2 add constraint
foreign key(fk_idmatricula) 
references funcionario(idmatricula);

select * from projeto_funcionario;


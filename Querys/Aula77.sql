use universidade_u;

create table disciplina(
  iddisciplina int auto_increment,
  discricao varchar(50) not null,
  carga_horaria int,
  codigo_professor int,
  nome_professsor varchar(50),
  email_professor varchar(100),
  fk_idcurso int,
  constraint pk_iddisciplina primary key(iddisciplina)
  );

alter table disciplina add constraint
foreign key(fk_idcurso) references curso(idcurso);

describe disciplina;

alter table disciplina change column discricao descricao varchar(50) not null;
alter table disciplina change column nome_professsor nome_professor varchar(50);

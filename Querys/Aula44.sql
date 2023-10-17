use universidade_u;

CREATE TABLE ALUNO_CURSO (
    id_alunocurso int auto_increment PRIMARY KEY,
    fk_idaluno int,
    fk_idcurso int
);

select * from aluno_curso;

alter table aluno_curso add constraint fk_aluno_curso
foreign key (fk_idaluno) references aluno(idaluno);

alter table aluno_curso add constraint fk_curso_curso
foreign key(fk_idcurso) references curso(idcurso);

desc aluno_curso;
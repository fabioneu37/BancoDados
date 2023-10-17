use universidade_u;

select * from aluno;

select * from telefone;

update telefone set fk_idaluno = 1 
where numero in ('11 5555-2222','11 3333-4444');

insert into telefone (numero,tipo,fk_idaluno)
values('11 5555-5555','res', 4); 

insert into telefone (numero,tipo,fk_idaluno) 
values(' 5555-9999','res', 3);

update telefone set numero = '11 5555-9999' where idtelefone = 6;
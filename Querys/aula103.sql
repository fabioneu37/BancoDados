use universidade_u;
/*
   O total de alunos e o total de professores
*/
delimiter $$
create procedure proc_resumo(out totalprofessores int, out total_alunos int) 
comment 'Resumo do total de alunose professores'

begin
  /*total de professores*/
  select count(*) into totalprofessores from professor;
  
  /*total de alunos*/
  select count(*) into  total_alunos from aluno;
end
$$
delimiter ;
show procedure status where Db = 'universidade_u';
call proc_resumo(@x, @y);

select @x as total_professores, @y as total_alunos;


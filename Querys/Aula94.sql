use universidade_u;
/*seleção,projeção,junção e apelidos*/
/* ambiguidade */

select /*projeção*/ 
     c.idcurso, 
     c.descricao as curso, 
     d.iddisciplina, 
     d.descricao as disciplina, 
     p.idprofessor, 
     p.nome as professor, 
     now() as data_atual
  from
     curso as c left join disciplina as d on (c.idcurso = d.fk_idcurso)
     left join professor as p on(d.fk_idprofessor = p.idprofessor)
where /*seleção de um subconjunto*/ 
     idcurso = 1;
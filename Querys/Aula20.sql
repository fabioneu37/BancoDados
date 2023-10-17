use universidade_u;
select * from aluno;
select * from aluno where sexo = 'M' and ativo_sn = 1 and valor_pago_curso < 625.00;
select * from aluno where sexo = 'F' OR idade >= 40;

/*Operador between*/
/*usado para valores números e datas*/
select * from aluno where idade between 40 and 60;
select * from aluno where data_inscricao_curso between '2018-11-01' and '2018-11-30';

/*Operador IN*/
select * from aluno where nome = 'Fernanda' OR 'Maria' OR nome = 'Marcelo';
select * from aluno where nome in ('Fernanda', 'Maria',  'Marcelo');
select * from aluno where nome not in ('Fernanda', 'Maria',  'Marcelo');



use universidade_u;

select
    a.idaluno,
    a.nome,
    a.sexo,
    case 
       when a.sexo = 'M' then 'Masculino'
       else 'Feminino'
	end as descricao_sexo,
    t.numero,
    t.tipo,
    case
       when t.tipo = 'res' then 'Residencial'
	   when t.tipo = 'cel' then 'Celular'
	   when t.tipo = 'com' then 'Comercial'
    end as Descricao_tipo_numero
from
    aluno as a left join telefone as t on (a.idaluno = t.fk_idaluno); 
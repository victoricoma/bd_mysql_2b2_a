select * from curso;
select * from aluno;
select * from disciplina;

select * from disciplina where nome like "Banco%";
select * from disciplina where nome like "Enfermagem %";

select
	c.nome as Nome_Curso,
    count(a.matricula) as Alunos_Curso,
    (c.vagas - count(a.matricula)) as Vagas_Restantes
from
	curso c,
	aluno a
where
	c.codigo = a.cod_curso
group by
	c.nome,
    c.vagas;
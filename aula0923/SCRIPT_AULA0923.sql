select count(*) FROM curso;
select count(*) FROM aluno;
select count(*) FROM disciplina;
select * FROM curso;
select * FROM aluno;
select * FROM disciplina;
select count(*) FROM curso WHERE vagas >=40;
select * from curso where vagas between 20 and 30;
select * from curso where coordenacao like 'a%';
select * from curso where coordenacao like '%ão';
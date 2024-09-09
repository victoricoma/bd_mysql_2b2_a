use escolasystem_db;

SELECT * FROM curso;
SELECT nome as Curso_Disponivel FROM curso;
SELECT nome as Curso_Disponivel, vagas as Vagas_Disponiveis FROM curso;
SELECT nome, max(vagas) from curso;
SELECT nome, min(vagas) from curso;
SELECT nome, max(vagas) maximo, (max(vagas)-min(vagas)) as escala from curso;





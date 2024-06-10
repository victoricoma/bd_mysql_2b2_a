CREATE DATABASE escolasystem_db;
USE escolasystem_db;

CREATE TABLE cursos (
	codigo INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    vagas INT NOT NULL,
    coordenacao VARCHAR(100) NOT NULL,
    inauguracao DATE NOT NULL,
    ativo BOOLEAN NOT NULL,
    CONSTRAINT PRIMARY KEY (codigo)
);

CREATE TABLE aluno (
	matricula INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    nascimento DATE NOT NULL,
    endereco VARCHAR(250) NOT NULL,
    responsavel VARCHAR(100) NOT NULL,
    ingresso DATE NOT NULL,
    ativo BOOLEAN NOT NULL,
    cod_curso INT NOT NULL,
    CONSTRAINT PRIMARY KEY (matricula),
    CONSTRAINT FOREIGN KEY (cod_curso) REFERENCES curso(codigo)
);

CREATE TABLE servidor(
	inscricao INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    departamento VARCHAR(100) NOT NULL,
    nascimento DATE NOT NULL,
    ingresso DATE NOT NULL,
    cargo INT NOT NULL,
    ativo BOOLEAN NOT NULL,
    contrato INT NOT NULL,
    CONSTRAINT PRIMARY KEY (inscricao),
    CONSTRAINT FOREIGN KEY (contrato) REFERENCES documento(codigo) 
);

CREATE TABLE disciplina(
	codigo INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    ativo BOOLEAN NOT NULL,
    CONSTRAINT PRIMARY KEY (codigo)
);

CREATE TABLE m_displina_pm_curso(
	cod_curso_disciplina INT NOT NULL AUTO_INCREMENT,
	cod_curso INT NOT NULL,
    cod_displina INT NOT NULL,
    CONSTRAINT PRIMARY KEY (cod_curso_disciplina),
    CONSTRAINT FOREIGN KEY (cod_curso) REFERENCES curso(codigo),
    CONSTRAINT FOREIGN KEY (cod_disciplina) REFERENCES disciplina(codigo)
);
CREATE DATABASE escolasystem_db;
USE escolasystem_db;

CREATE TABLE curso(
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

CREATE TABLE disciplina(
	codigo INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    ativo BOOLEAN NOT NULL,
    CONSTRAINT PRIMARY KEY (codigo)
);

CREATE TABLE m_disciplinas_pm_cursos(
	cod_displina_curso INT NOT NULL AUTO_INCREMENT,
	cod_disciplina INT NOT NULL,
    cod_curso INT NOT NULL,
    CONSTRAINT PRIMARY KEY (cod_displina_curso),
    CONSTRAINT FOREIGN KEY (cod_disciplina) REFERENCES disciplina(codigo),
    CONSTRAINT FOREIGN KEY (cod_curso) REFERENCES curso(codigo)
);

CREATE TABLE documento(
	numero INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,
    mat_aluno INT DEFAULT 0,
    ins_servidor INT DEFAULT 0,
    cod_curso INT DEFAULT 0,
    criacao DATETIME DEFAULT NOW() NOT NULL,
    ativo BOOLEAN NOT NULL,
    CONSTRAINT PRIMARY KEY (numero),
    CONSTRAINT FOREIGN KEY (mat_aluno) REFERENCES aluno(matricula),
    CONSTRAINT FOREIGN KEY (ins_servidor) REFERENCES servidor(inscricao),
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
    CONSTRAINT PRIMARY KEY (inscricao)
);
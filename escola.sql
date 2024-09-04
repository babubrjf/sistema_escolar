-- Criar o banco de dados
CREATE DATABASE escola;

-- Usar o banco de dados criado
USE escola;

-- Criar a tabela de Professores
CREATE TABLE Professores (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

-- Criar a tabela de Turmas
CREATE TABLE Turmas (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    professor_codigo INT,
    FOREIGN KEY (professor_codigo) REFERENCES Professores(codigo)
);

-- Criar a tabela de Atividades
CREATE TABLE Atividades (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    descricao TEXT NOT NULL,
    turma_codigo INT,
    FOREIGN KEY (turma_codigo) REFERENCES Turmas(codigo)
);

-- Inserir dados na tabela de Professores
INSERT INTO Professores (nome, email, senha) VALUES
('Professor Um', 'professor.um@escola.com', 'senha123'),
('Professor Dois', 'professor.dois@escola.com', 'senha456'),
('Professor Três', 'professor.tres@escola.com', 'senha789');

INSERT INTO `turmas` (`codigo`, `nome`, `professor_codigo`) VALUES
(1, 'Turma Um - PROF1', 1),
(2, 'Turma Dois - PROF1', 1),
(3, 'Turma Três - PROF1', 1),
(7, 'Turma Um - PROF2', 2),
(8, 'Turma Dois - PROF2', 2),
(9, 'Turma Três - PROF2', 2),
(13, 'Turma Um - PROF3', 3);

INSERT INTO `atividades` (`codigo`, `descricao`, `turma_codigo`) VALUES
(1, 'UC1 - TURMA1', 1),
(2, 'UC2 - TURMA1', 1),
(3, 'UC3 - TURMA1', 1),
(4, 'UC1 - TURMA2', 2),
(5, 'UC2 - TURMA2', 2),
(6, 'UC3 - TURMA2', 2),
(8, 'UC1 - TURMA3', 3),
(10, 'UC2 - TURMA3', 3),
(11, 'UC3 - TURMA3', 3);
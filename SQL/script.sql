-- Apaga o banco de dados se ele existe.
DROP DATABASE IF EXISTS modelagemresilia;

-- Cria o banco de dados usando UTF-8 e buscas case-insensitive.
CREATE DATABASE modelagemresilia CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Seleciona o banco de dados
USE modelagemresilia;

-- Criando a tabela de cursos
CREATE TABLE Cursos (
ID INT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
Descrição TEXT NOT NULL,
Duração INT NOT NULL
);

-- Criando a tabela de turmas
CREATE TABLE Turmas (
ID INT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
DataInício DATE NOT NULL,
DataFim DATE NOT NULL,
IDCurso INT NOT NULL,
FOREIGN KEY (IDCurso) REFERENCES Cursos(ID)
);

-- Criando a tabela de alunos
CREATE TABLE Alunos (
ID INT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
DataNascimento DATE NOT NULL,
Endereço TEXT NOT NULL,
Email VARCHAR(255) NOT NULL,
Telefone VARCHAR(255) NOT NULL
);

-- Criando a tabela de instrutores
CREATE TABLE Instrutores (
ID INT PRIMARY KEY,
Nome VARCHAR(255) NOT NULL,
DataNascimento DATE NOT NULL,
Endereço TEXT NOT NULL,
Email VARCHAR(255) NOT NULL,
Telefone VARCHAR(255) NOT NULL
);

-- Criando a tabela de matrículas
CREATE TABLE Matrículas (
ID INT PRIMARY KEY,
DataMatrícula DATE NOT NULL,
IDAluno INT NOT NULL,
IDTurma INT NOT NULL,
FOREIGN KEY (IDAluno) REFERENCES Alunos(ID),
FOREIGN KEY (IDTurma) REFERENCES Turmas(ID)
);

-- Criando a tabela de pagamentos
CREATE TABLE Pagamentos (
ID INT PRIMARY KEY,
DataPagamento DATE NOT NULL,
Valor DECIMAL(10, 2) NOT NULL,
IDMatrícula INT NOT NULL,
MétodoPagamento VARCHAR(255) NOT NULL,
FOREIGN KEY (IDMatrícula) REFERENCES Matrículas(ID)
);

-- Criando a tabela de relacionamento entre cursos e instrutores
CREATE TABLE CursoInstrutor (
IDCurso INT NOT NULL,
IDInstrutor INT NOT NULL,
PRIMARY KEY (IDCurso, IDInstrutor),
FOREIGN KEY (IDCurso) REFERENCES Cursos(ID),
FOREIGN KEY (IDInstrutor) REFERENCES Instrutores(ID)
);

-- Criando a tabela de relacionamento entre alunos e turmas
CREATE TABLE AlunoTurma (
AlunoID INT NOT NULL,
TurmaID INT NOT NULL,
PRIMARY KEY (AlunoID, TurmaID),
FOREIGN KEY (AlunoID) REFERENCES Alunos(ID),
FOREIGN KEY (TurmaID) REFERENCES Turmas(ID)
);

-- Registros para a tabela de cursos
INSERT INTO Cursos (ID, Nome, Descrição, Duração)
VALUES (1, 'Curso de programação básica', 'Este curso ensina as noções básicas de programação aos iniciantes', 6),
(2, 'Curso de desenvolvimento web', 'Este curso ensina a criar sites e aplicações web utilizando HTML, CSS e JavaScript', 8);

-- Registros para a tabela de turmas
INSERT INTO Turmas (ID, Nome, DataInício, DataFim, IDCurso)
VALUES (1, 'Turma 1 - programação básica', '2022-01-01', '2022-07-01', 1),
(2, 'Turma 2 - programação básica', '2022-08-01', '2022-02-01', 1);

-- Registros para a tabela de alunos
INSERT INTO Alunos (ID, Nome, DataNascimento, Endereço, Email, Telefone)
VALUES (1, 'João Silva', '2000-01-01', 'Rua X, 123', 'joao.silva@email.com', '11 99999-9999'),
(2, 'Maria Santos', '1999-01-01', 'Rua Y, 456', 'maria.santos@email.com', '11 88888-8888');

-- Registros para a tabela de instrutores
INSERT INTO Instrutores (ID, Nome, DataNascimento, Endereço, Email, Telefone)
VALUES (1, 'Pedro Oliveira', '1980-01-01', 'Rua Z, 789', 'pedro.oliveira@email.com', '11 77777-7777'),
(2, 'Ana Paula', '1981-01-01', 'Rua W, 000', 'ana.paula@email.com', '11 66666-6666');

-- Registros para a tabela de matrículas
INSERT INTO Matrículas (ID, DataMatrícula, IDAluno, IDTurma)
VALUES (1, '2022-01-01', 1, 1),
(2, '2022-02-01', 2, 2);

-- Registros para a tabela de pagamentos
INSERT INTO Pagamentos (ID, DataPagamento, Valor, IDMatrícula, MétodoPagamento)
VALUES (1, '2022-01-15', 1000.00, 1, 'cartão de crédito'),
(2, '2022-02-15', 2000.00, 2, 'transferência bancária');

-- Registros para a tabela de relacionamento entre cursos e instrutores
INSERT INTO CursoInstrutor (IDCurso, IDInstrutor)
VALUES (1, 1),
(2, 2);

-- Inserindo dados na tabela AlunoTurma
INSERT INTO AlunoTurma (AlunoID, TurmaID) VALUES (1, 1);
INSERT INTO AlunoTurma (AlunoID, TurmaID) VALUES (2, 2);



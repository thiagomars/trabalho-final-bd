CREATE DATABASE Equipe412645;

USE Equipe412645;

CREATE TABLE categoria (
    nome_categoria VARCHAR(45) NOT NULL,
    ISBN INT NOT NULL,
    descricao VARCHAR(90),
    PRIMARY KEY (nome_categoria)
);

CREATE TABLE livros (
    ISBN INT NOT NULL,
    editora VARCHAR (90) NOT NULL,
    ano_lancamento date not null,
    qtd_copias INT NOT NULL,
    titulo VARCHAR(45) NOT NULL,
    categoria VARCHAR(45) NOT NULL,
    PRIMARY KEY (ISBN),
    UNIQUE (titulo),
    FOREIGN KEY (categoria) REFERENCES categoria(nome_categoria)
);

CREATE TABLE autores (
    email VARCHAR(45) NOT NULL,
    nome VARCHAR(90) NOT NULL,
    nacionalidade VARCHAR(45) NOT NULL,
    PRIMARY KEY (email)
);

CREATE TABLE usuarios (
    usuario VARCHAR(45) NOT NULL,
    senha VARCHAR(90) NOT NULL,
    nome VARCHAR(90) NOT NULL,
    endereco VARCHAR(90) NOT NULL,
    tipo_user VARCHAR(45) NOT NULL,
    PRIMARY KEY (usuario)
);

CREATE TABLE professores (
    mat_siape INT NOT NULL,
    cod_curso INT NOT NULL,
    celular INT NOT NULL,
    data_contratacao DATE NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    regime ENUM('20H', '40H', 'DE'),
    PRIMARY KEY (mat_siape),
    FOREIGN KEY (usuario) 
        REFERENCES usuarios(usuario)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
	UNIQUE(usuario)
);

CREATE TABLE funcionarios (
  matricula INT NOT NULL,
  usuario VARCHAR(45) NOT NULL,
  PRIMARY KEY (matricula),
  FOREIGN KEY (usuario)
    REFERENCES usuarios(usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
	UNIQUE(usuario)
);

CREATE TABLE alunos (
  matricula INT NOT NULL,
  data_ingresso DATE NOT NULL,
  data_formacao_prevista DATE NOT NULL,
  cod_curso VARCHAR(45) NOT NULL,
  usuario VARCHAR(45) NOT NULL,
  PRIMARY KEY (matricula),
  FOREIGN KEY (usuario)
    REFERENCES usuarios(usuario)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  UNIQUE(usuario)
);

CREATE TABLE telefone (
  numero INT NOT NULL,
  matricula INT NOT NULL,
  PRIMARY KEY (numero),
  FOREIGN KEY (matricula)
    REFERENCES alunos(matricula)
    ON DELETE CASCADE,
  FOREIGN KEY (matricula)
    REFERENCES funcionarios(matricula)
    ON DELETE CASCADE
);

CREATE TABLE publicacoes (
  isbn_livro INT NOT NULL AUTO_INCREMENT,
  email_autor VARCHAR(45) NOT NULL,
  PRIMARY KEY (isbn_livro, email_autor),
  FOREIGN KEY (isbn_livro)
    REFERENCES livros(ISBN)
    ON DELETE CASCADE,
  FOREIGN KEY (email_autor)
    REFERENCES autores(email)
    ON DELETE CASCADE   
);

CREATE TABLE registros (
  cod_reserva INT NOT NULL,
  usuario VARCHAR(45) NOT NULL,
  ISBN INT NOT NULL,
  data DATE NOT NULL,
  PRIMARY KEY (cod_reserva),
  FOREIGN KEY (ISBN)
    REFERENCES livros(ISBN),
  FOREIGN KEY (usuario)
    REFERENCES usuarios(usuario)
);


/* POPULANDO A TABELA CATEGORIA */
INSERT INTO categoria VALUES ("aventura", 202212341, "aventura é uma categoria de livros etc");
INSERT INTO categoria VALUES ("fantasia", 202212343, "fantasia é uma categoria de livros etc");
INSERT INTO categoria VALUES ("tecnologia e ciencias", 202212344, "tecnologia e ciencias é uma categoria de livros etc");
INSERT INTO categoria VALUES ("romance", 202212345, "romance é uma categoria de livros etc");
INSERT INTO categoria VALUES ("psicologia_desenvolvimento_saude", 202212346, "Psicologia do Desenvolvimento Saúde, Boa Forma e Dieta é uma categoria de livros etc");
INSERT INTO categoria VALUES ("editorial", 202212347, "editorial é uma categoria de livros etc");
INSERT INTO categoria VALUES ("auto_biografia", 202212348, "auto biografia é uma categoria de livros etc");


/* POPULANDO A TABELA LIVROS */
INSERT INTO livros VALUES (202212341, "editorial", 20051120, 3, "Aventurando nas Aventuras do Aventureiro", "aventura");
INSERT INTO livros VALUES (202212342, "fundação qualquer", 19981120, 5, "O EU descrito", "auto_biografia");
INSERT INTO livros VALUES (202212343, "editorial", 20180701, 2, "O nome do vento", "fantasia");
INSERT INTO livros VALUES (202212344, "ditoriando", 19990213, 18, "Ciencia Hoje, Tecnologia Amanhã", "tecnologia e ciencias");
INSERT INTO livros VALUES (202212345, "ditoriando", "20161201", 17, "Uma Breve História do Tempo", "tecnologia e ciencias");
INSERT INTO livros VALUES (202212346, "outrali", 19870820, 1, "A culpa é das estrelas", "romance");
INSERT INTO livros VALUES (202212347, "Padrão", "20200820", 2, "Mindset: A nova psicologia do sucesso", "psicologia_desenvolvimento_saude");
INSERT INTO livros VALUES (202212348, "outrali", 20180820, 1, "O Homem de Giz", "fantasia");
INSERT INTO livros VALUES (202212349, "outrali", 20190820, 1, "A arte da guerra", "fantasia");
INSERT INTO livros VALUES (202212350, "ditoriando", 20140820, 33, "Ensinando algo", "tecnologia e ciencias");
INSERT INTO livros VALUES (202212351, "outrali", 19990820, 1, "Como caçar um gato", "editorial");
INSERT INTO livros VALUES (202212352, "fundação qualquer", 20210820, 5, "Biografia do EU", "auto_biografia");

/*CREATE DATABASE "equipe412645-NEW"*/
CREATE DATABASE TESTE;

USE TESTE;

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
    id INT NOT NULL,
    usuario VARCHAR(45) NOT NULL,
    senha VARCHAR(90) NOT NULL,
    nome VARCHAR(90) NOT NULL,
    endereco VARCHAR(90) NOT NULL,
    tipo_user VARCHAR(45) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (usuario)
);

CREATE TABLE professores (
    mat_siape INT NOT NULL,
    cod_curso INT NOT NULL,
    celular INT NOT NULL,
    data_contratacao DATE NOT NULL,
    id INT NOT NULL,
    PRIMARY KEY (mat_siape),
    FOREIGN KEY (id) 
        REFERENCES usuarios(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE 
);

CREATE TABLE funcionarios (
  matricula INT NOT NULL,
  id INT NOT NULL,
  PRIMARY KEY (matricula),
  FOREIGN KEY (id)
    REFERENCES usuarios(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE alunos (
  matricula INT NOT NULL,
  data_ingresso DATE NOT NULL,
  data_formacao_prevista DATE NOT NULL,
  cod_curso VARCHAR(45) NOT NULL,
  id INT NOT NULL,
  PRIMARY KEY (matricula),
  FOREIGN KEY (id)
    REFERENCES usuarios(id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

CREATE TABLE telefone (
  numero INT NOT NULL,
  matricula INT NOT NULL,
  PRIMARY KEY (numero),
  FOREIGN KEY (matricula)
    REFERENCES alunos(id)
    ON DELETE CASCADE,
  FOREIGN KEY (matricula)
    REFERENCES funcionarios(id)
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
  id_usuario INT NOT NULL,
  ISBN INT NOT NULL,
  data DATE NOT NULL,
  PRIMARY KEY (cod_reserva),
  FOREIGN KEY (ISBN)
    REFERENCES livros(ISBN),
  FOREIGN KEY (id_usuario)
    REFERENCES usuarios(id)
);
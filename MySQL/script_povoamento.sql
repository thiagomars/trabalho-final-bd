/*Inserção das categorias*/
INSERT INTO categoria VALUES ("aventura", 202212341, "aventura é uma categoria de livros etc");
INSERT INTO categoria VALUES ("fantasia", 202212343, "fantasia é uma categoria de livros etc");
INSERT INTO categoria VALUES ("tecnologia e ciencias", 202212344, "tecnologia e ciencias é uma categoria de livros etc");
INSERT INTO categoria VALUES ("romance", 202212345, "romance é uma categoria de livros etc");
INSERT INTO categoria VALUES ("psicologia_desenvolvimento_saude", 202212346, "Psicologia do Desenvolvimento Saúde, Boa Forma e Dieta é uma categoria de livros etc");
INSERT INTO categoria VALUES ("editorial", 202212347, "editorial é uma categoria de livros etc");
INSERT INTO categoria VALUES ("auto_biografia", 202212348, "auto biografia é uma categoria de livros etc");


/*Inserção dos livros*/
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


/*Inserção dos alunos*/
INSERT INTO usuarios VALUES("joao0102", "jj1010", "João Gomes Teixeira", "Av. Geraldinho Gomes, 888 - Pedrinhas - Sobral - CE", "usuario");
INSERT INTO usuarios VALUES("vivi-gomes", "vivivi", "Vitoria Melo de Andrade", "Rua do Conde, 123 - Dom Expedito - Sobral - CE", "usuario");
INSERT INTO usuarios VALUES("marcinhorei", "1314", "jonatan", "av.Tuina, 890 - Itapipoca - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("marifer", "2323", "Maria Fernandes", "Rua verde, 23 - Dom Expedito - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("mari4", "1324", "Maria Bobotona", "Rua Ivone, 76 - Lima Vieira - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("joaojoao", "9090", "João Felipinas", "Rua nova, 56, Belo Horizonte - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("joao2811", "5657", "José Felix", "Rua Silva, 80, Kanuty - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("joaoao12", "5757", "João Pires", "Rua Mutuca, 90, Jota - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("carloss", "4676", "Carlos Silva", "Rua Tim, 80, Ali - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("mirianmirian", "5858", "Mirian Sousa", "Rua Larga,80, Campos - Sobral -CE", "usuario");


/*Inserção dos professores*/
INSERT INTO usuarios VALUES("kevin1", "kevin34", "Kevin Magal", "Rua B,80, Campos - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("julio9", "ju0909", "Julio Cesar", "Rua B,90, Campos - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("mariateles", "7879", "Maria Teles", "Rua R,60, Campos - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("silvan90", "4546", "Silvan Felipe", "Rua Z,10, Campos - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("neto202", "9089", "Neto Sousa", "Rua L,40, Lagos - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("julian09", "7890", "Julian Silva", "Rua P,80, Azol - Sobral -CE", "usuario");


/*Inserção dos funcionários*/
INSERT INTO usuarios VALUES("marcondi2", "7890", "Marcondi Lima", "Rua C,80, Azul - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("lincon1", "6767", "Lincon Monteiro", "Rua Q,40, Lagos - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("kevin4", "5657", "Kevin Naldo", "Rua L,40, Lagos - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("ricardo8", "0404", "Ricardo Latex", "Rua S,40, Lagos - Sobral -CE", "usuario");
INSERT INTO usuarios VALUES("tatiane4", "4646", "Tatiane Silva", "Rua Q,05,  - Sobral -CE", "usuario");


/*Inserção dos alunos*/
INSERT INTO alunos VALUES (0001, 20180210, 20230210, "eg10comp", "joao0102");
INSERT INTO alunos VALUES (0002, 20180210, 20230210, "eg10comp", "vivi-gomes");
INSERT INTO alunos VALUES (0003, 20180211, 20230210, "eg11elet", "marcinhorei");
INSERT INTO alunos VALUES (0004, 20140601, 20200610, "eg11elet", "marifer");
INSERT INTO alunos VALUES (0005, 20140602, 20200610, "ps1gi4", "mari4");
INSERT INTO alunos VALUES (0006, 20140602, 20200610, "ps1gi4", "joaojoao");
INSERT INTO alunos VALUES (0007, 20161128, 20210510, "42med", "joao2811");
INSERT INTO alunos VALUES (0008, 20180210, 20230210, "41med", "joaoao12");
INSERT INTO alunos VALUES (0009, 20180210, 20230210, "41med", "carloss");
INSERT INTO alunos VALUES (0010, 20180210, 20230210, "eg13comp", "mirianmirian");


/*Inserção dos funcionários*/
INSERT INTO funcionarios VALUES(898989, "marcondi2");
INSERT INTO funcionarios VALUES(101010, "lincon1");
INSERT INTO funcionarios VALUES(232323, "kevin4");
INSERT INTO funcionarios VALUES(232920, "ricardo8");
INSERT INTO funcionarios VALUES(676767, "tatiane4");


/*Inserção telefone do aluno*/
INSERT INTO telefone_aluno VALUES (88992309067, 0001);
INSERT INTO telefone_aluno VALUES (88994509060, 0002);
INSERT INTO telefone_aluno VALUES (88998909069, 0003);
INSERT INTO telefone_aluno VALUES (88994709090, 0004);
INSERT INTO telefone_aluno VALUES (88997099045, 0005);
INSERT INTO telefone_aluno VALUES (88991199045, 0006);
INSERT INTO telefone_aluno VALUES (88991299045, 0007);
INSERT INTO telefone_aluno VALUES (88991399045, 0008);
INSERT INTO telefone_aluno VALUES (88991499045, 0009);
INSERT INTO telefone_aluno VALUES (88991599045, 0010);


/*Inserção telefone do funcionário*/
INSERT INTO telefone_funcionario VALUES (88997809067, 898989);
INSERT INTO telefone_funcionario VALUES (88997809060, 101010);
INSERT INTO telefone_funcionario VALUES (88997809069, 232323);
INSERT INTO telefone_funcionario VALUES (88997809090, 232920);
INSERT INTO telefone_funcionario VALUES (88997809045, 676767);

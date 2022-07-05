create view livrosdacategoria(titulo,categoria) as
SELECT l.titulo,c.nome_categoria FROM livros l inner join categoria c
on c.nome_categoria=l.categoria order by l.titulo asc;
  
create view listar_registros(codigo,isbn,usuario,data,titulo) as
SELECT r.cod_reserva,r.ISBN, r.usuario,r.data,l.titulo FROM registros r inner join livros l on r.ISBN=l.ISBN;

create view Vis_poreditora (editora,titulo)
as SELECT editora, titulo FROM livros GROUP BY editora asc;

create view Vis_porcateg (categoria,titulo)
as SELECT categoria, titulo FROM livros GROUP BY categoria asc;

create view Vis_porano(ano_lancamento,titulo)
as SELECT ano_lancamento, titulo FROM livros GROUP BY ano_lancamento desc;

create view Vis_porautor (Autor,titulo) as
SELECT f.nome,l.titulo FROM livros l inner join
(SELECT nome,isbn_livro FROM autores inner join publicacoes on email_autor=email) f
on f.isbn_livro=l.ISBN order by f.nome asc;

create view livrosdaeditora(titulo,editora) as
SELECT titulo,editora FROM livros
order by titulo asc;

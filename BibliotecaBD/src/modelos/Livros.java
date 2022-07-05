
package modelos;

/**
 *
 * @author thiag
 */
public class Livros {
    private int ISBN;
    private String categoria;
    private int data_lancamento;
    private int qtd;
    private String titulo;
    private String editora;

    public Livros(String categoria, String titulo) {
        this.categoria = categoria;
        this.titulo = titulo;
    }

    public Livros(int qtd, String titulo, String editora) {
        this.qtd = qtd;
        this.titulo = titulo;
        this.editora = editora;
    }

    public Livros() {
    }

    public Livros(int ISBN, String categoria, int data_lancamento, int qtd, String titulo, String editora) {
        this.ISBN = ISBN;
        this.categoria = categoria;
        this.data_lancamento = data_lancamento;
        this.qtd = qtd;
        this.titulo = titulo;
        this.editora = editora;
    }
    
    
    

    public int getISBN() {
        return ISBN;
    }

    public void setISBN(int ISBN) {
        this.ISBN = ISBN;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public int getData_lancamento() {
        return data_lancamento;
    }

    public void setData_lancamento(int data_lancamento) {
        this.data_lancamento = data_lancamento;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getEditora() {
        return editora;
    }

    public void setEditora(String editora) {
        this.editora = editora;
    }
    
    
}

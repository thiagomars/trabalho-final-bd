/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author thiag
 */
public class Registros {
    private String usuario;
    private int isbn;
    private int data;

    public Registros(String usuario, int isbn, int data) {
        this.usuario = usuario;
        this.isbn = isbn;
        this.data = data;
    }

    public Registros() {
    }
    
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public int getData() {
        return data;
    }

    public void setData(int data) {
        this.data = data;
    }
    
    
}

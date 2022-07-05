/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import modelos.Livros;
import modelos.Usuario;

/**
 *
 * @author thiag
 */
public class JDBCLivros {
    
    Connection conexao;

    public JDBCLivros(Connection conexao) {
        this.conexao = conexao;
    }
    
    public ArrayList <Livros> listarLivrosCategoria(){
        ArrayList<Livros> list_livros = new ArrayList<Livros>();
        
        String sql = "SELECT * FROM livrosdacategoria";
        
        try{
            Statement declarar = conexao.createStatement();
            ResultSet resposta = declarar.executeQuery(sql);
            while(resposta.next()){
                String titulo = resposta.getString("titulo");
                String categoria = resposta.getString("categoria");
                
                Livros l = new Livros(titulo, categoria);
                list_livros.add(l);
            }
        } catch(SQLException ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        
        return list_livros;
    }
    
    public ArrayList <Livros> listarLivrosAutor(){
        ArrayList<Livros> list_livros = new ArrayList<Livros>();
        
        String sql = "SELECT * FROM vis_porautor;";
        
        try{
            Statement declarar = conexao.createStatement();
            ResultSet resposta = declarar.executeQuery(sql);
            while(resposta.next()){
                String titulo = resposta.getString("titulo");
                String categoria = resposta.getString("autor");
                
                Livros l = new Livros(titulo, categoria);
                list_livros.add(l);
            }
        } catch(SQLException ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        
        return list_livros;
    }
    
    public ArrayList <Livros> listarLivrosAno(){
        ArrayList<Livros> list_livros = new ArrayList<Livros>();
        
        String sql = "SELECT * FROM vis_porano;";
        
        try{
            Statement declarar = conexao.createStatement();
            ResultSet resposta = declarar.executeQuery(sql);
            while(resposta.next()){
                String titulo = resposta.getString("titulo");
                String categoria = resposta.getString("ano_lancamento");
                
                Livros l = new Livros(titulo, categoria);
                list_livros.add(l);
            }
        } catch(SQLException ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        
        return list_livros;
    }
    
    public ArrayList <Livros> listarLivrosEditora(){
        ArrayList<Livros> list_livros = new ArrayList<Livros>();
        
        String sql = "SELECT * FROM vis_poreditora;";
        
        try{
            Statement declarar = conexao.createStatement();
            ResultSet resposta = declarar.executeQuery(sql);
            while(resposta.next()){
                String titulo = resposta.getString("titulo");
                String editora = resposta.getString("editora");
                
                Livros l = new Livros(0, titulo, editora);
                list_livros.add(l);
            }
        } catch(SQLException ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        
        return list_livros;
    }
    
    
}

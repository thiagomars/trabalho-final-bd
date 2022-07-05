/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.swing.JOptionPane;
import modelos.Aluno;
import modelos.Registros;

/**
 *
 * @author thiag
 */
public class JDBCRegistros {
    
    Connection conexao;
    
    public JDBCRegistros(Connection conexao) {
        this.conexao = conexao;
    }
    
    public void fazerRegistros(Registros reg){
        String sql = "INSERT INTO registros (usuario, ISBN, data) VALUES (?, ?, ?)";
        PreparedStatement ps;
        
        try{
            ps = this.conexao.prepareStatement(sql);
            ps.setString(1, reg.getUsuario());
            ps.setInt(3, reg.getData());
            ps.setInt(2, reg.getIsbn());
            
            ps.execute();
            
            JOptionPane.showMessageDialog(null, "Registro realizado com Sucesso! ");
            
        } catch(SQLException ex){
            JOptionPane.showMessageDialog(null, "Não foi possível realizar o registro. \nErro: " + ex);
        }
        
    }
    
}

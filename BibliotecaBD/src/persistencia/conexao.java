package persistencia;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class conexao {
    private Connection conexao;
    
    public Connection abrirConexao(){
        String url = "jdbc:mysql://localhost:3306/equipe412645?userTimerzone=true&serverTimerzone=UTC";
        String user = "Admin";
        String password = "root";
        
        try {
            conexao = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Não foi possível abrir conexão com o Banco de Dados. \nErro: " + ex);
        }
                
        return conexao;
    }
    
    public void fecharConexao(){
        try {
            conexao.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Não foi possível fechar a conexão com o Banco de Dados. \nErro: " + ex);
        }
    }
}

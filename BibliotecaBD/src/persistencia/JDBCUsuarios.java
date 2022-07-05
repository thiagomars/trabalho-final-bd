package persistencia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import modelos.Usuario;

public class JDBCUsuarios {
    
    Connection conexao;

    public JDBCUsuarios(Connection conexao) {
        this.conexao = conexao;
    }
    
    public void criarUser(Usuario user){
        String sql = "insert into usuarios values (?, ?, ?, ?, ?)";
        PreparedStatement ps;
        
        try{
            ps = this.conexao.prepareStatement(sql);
            ps.setString(1, user.getUsuario());
            ps.setString(2, user.getSenha());
            ps.setString(3, user.getNome());
            ps.setString(4, user.getEndereco());
            ps.setString(5, user.getTipo_user());
            ps.execute();
            JOptionPane.showMessageDialog(null, "Usuário cadastrado com sucesso!");
        } catch(SQLException ex){
            JOptionPane.showMessageDialog(null, "Não foi possível cadastrar usuário. \nErro: " + ex);
        }
        
    }
    
    public ArrayList <Usuario> listarUsers(){
        ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        String sql = "select * from usuarios";
        
        try{
            Statement declarar = conexao.createStatement();
            ResultSet resposta = declarar.executeQuery(sql);
            while(resposta.next()){
                String usuario = resposta.getString("usuario");
                String senha = resposta.getString("senha");
                String nome = resposta.getString("nome");
                String endereco = resposta.getString("endereco");
                String tipo_user = resposta.getString("tipo_user"); 
                
                Usuario u = new Usuario(usuario, senha, nome, endereco, tipo_user);
                usuarios.add(u);
                
            }
        } catch(SQLException ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        
        return usuarios;
    }
    
    public void deletarUser(Usuario user){
        String sql = "DELETE FROM usuarios WHERE usuario = ?";
        PreparedStatement ps = null;
        
        try {
            ps = this.conexao.prepareStatement(sql);
            ps.setString(1, user.getUsuario());
            ps.execute();
            JOptionPane.showMessageDialog(null, "Usuário deletado com sucesso!");
        } catch (SQLException ex) {
            Logger.getLogger(JDBCUsuarios.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    //Método para validar usuário e senha de acordo com o tipo de usuário
    public boolean loginUser(String user, String pass, String tipo){
        String sql = "SELECT * FROM usuarios WHERE usuario = ? AND senha = ? AND tipo_user = ?";
        PreparedStatement ps;
        ResultSet rs;
        boolean check = false;
        
        try{
            ps = this.conexao.prepareStatement(sql);
            
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, tipo);
            
            rs = ps.executeQuery();
            
            if(rs.next()){
                check = true;
            }
                
        } catch(SQLException ex){
            JOptionPane.showMessageDialog(null, ex);
        }
        
        return check;
    }
    
}

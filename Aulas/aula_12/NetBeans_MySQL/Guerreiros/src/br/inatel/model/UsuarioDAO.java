package br.inatel.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class UsuarioDAO {

    // objeto responsável pela conexão com o servidor do banco de dados
    Connection con;
    // objeto responsável por preparar as consultas DINAMICAS
    PreparedStatement pst;
    // objeto responsável por executar as consultas STATICAS
    Statement st;
    // objeto responsável por referencia a tabela resultante da busca
    ResultSet rs;

    String database = "teste_connection";
    // String url = "jdbc:mysql://localhost:3307/"+database+"?useTimezone=true&serverTimezone=UTC&useSSL=false";
    String url = "jdbc:mysql://localhost:3306/" + database + "?useTimezone=true&serverTimezone=UTC&useSSL=false";
    String user = "root";
    String password = "root";

    boolean sucesso = false;

    public void connectToDb() {
        try {
            con = DriverManager.getConnection(url, user, password);

            System.out.println("Conexão feita com sucesso!");

        } catch (SQLException ex) {

            System.out.println("Erro: " + ex.getMessage());

        }
    }

    public boolean inserirUsuario(Usuario novoUsuario) {
        connectToDb();

        String sql = "INSERT INTO usuario (nome,cpf) values (?,?)";

        try {
            pst = con.prepareStatement(sql);

            pst.setString(1, novoUsuario.getNome());
            pst.setString(2, novoUsuario.getCpf());
            pst.execute();

            sucesso = true;

        } catch (SQLException ex) {
            System.out.println("Erro = " + ex.getMessage());
            sucesso = false;
        } finally {
            try {
                con.close();
                pst.close();
            } catch (SQLException ex) {
                System.out.println("Erro = " + ex.getMessage());
            }

        }

        return sucesso;
    }

    public ArrayList<Usuario> buscarUsuariosSemFiltro() {
        ArrayList<Usuario> listaDeUsuarios = new ArrayList<>();

        connectToDb();

        String sql = "SELECT * FROM usuario";

        try {
            st = con.createStatement();
            rs = st.executeQuery(sql);
            System.out.println("Lista de usuarios: ");
            while(rs.next())
            {
                Usuario usuarioTemp = new Usuario(rs.getString("nome"),rs.getString("cpf"));
                
                System.out.println("Nome = "+usuarioTemp.getNome());
                System.out.println("CPF = "+usuarioTemp.getCpf());
                
                System.out.println("---------------------------------");
                
                listaDeUsuarios.add(usuarioTemp);
                
            }
            sucesso = true;

        } catch (SQLException ex) {
            System.out.println("Erro = " + ex.getMessage());
            sucesso = false;
        } finally {
            try {
                con.close();
                st.close();
            } catch (SQLException ex) {
                System.out.println("Erro = " + ex.getMessage());
            }

        }

        return listaDeUsuarios;
    }

}

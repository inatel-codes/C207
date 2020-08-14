package br.inatel.model;

import java.util.ArrayList;

public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        
        UsuarioDAO dao = new UsuarioDAO();
        
        //dao.connectToDb();
        
        
        Usuario novoUsuario = new Usuario("Pedro","CPF A");
        
        boolean deuCerto = dao.inserirUsuario(novoUsuario);
        
        if(deuCerto)
        {
            System.out.println("Inserção feita com sucesso!");
        }
        
       //ArrayList<Usuario> listaDeUsuarios = dao.buscarUsuariosSemFiltro();
        
        
    }
    
}

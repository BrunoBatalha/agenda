
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import model.dao.UsuarioDAO;
import model.bean.Usuario;
import java.util.List;

/**
 *
 * @author Aluno
 */
public class UsuarioFacade {

    public UsuarioDAO usuarioDAO= new UsuarioDAO();

    public UsuarioFacade() {
    }

    public void gravar(Usuario usuario) {
          usuarioDAO.gravar(usuario);
    }

    public void excluir(Usuario usuario) {
        usuarioDAO.excluir(usuario);
    }

//    public Usuario carregar(Integer id) {
//        return usuarioDAO.carregar(id);
//    }

    public List obterTodos() {
        return usuarioDAO.obterTodos();
    }

    public List obterPorNome(String nome)  {
        return usuarioDAO.obterPorNome(nome);
    }

    public List obterPorLogin(String login){
        return usuarioDAO.obterPorLogin(login);
    }

    public Usuario obterPorLoginSenha(String login, String senha)  {
        return usuarioDAO.obterPorLoginSenha(login, senha);
    }
    
    public UsuarioDAO getUsuarioDAO(){
        return usuarioDAO;
    }
    public void setUsuarioDAO(UsuarioDAO usuarioDAO){
        this.usuarioDAO = usuarioDAO;
    }
}

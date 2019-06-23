
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import model.dao.MeioContatoDAO;
import model.bean.MeioContato;
import java.util.List;
import javax.persistence.Query;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author Aluno
 */
public class MeioContatoFacade {

    public MeioContatoDAO meioContatoDAO = new MeioContatoDAO();

    public MeioContatoFacade() {
    }

    public MeioContato gravar(MeioContato meioContato) {
        return meioContatoDAO.gravar(meioContato);
    }

    public void excluir(MeioContato meioContato) {
        meioContatoDAO.excluir(meioContato);
    }

    public MeioContato carregar(Integer id) {
        return meioContatoDAO.carregar(id);
    }

    public List obterTodos(Integer idContato) {
        return meioContatoDAO.obterTodos(idContato);
    }

    public List obterPorTipoContato(Integer idContato,String tipoContato)  {
        return meioContatoDAO.obterPorTipoContato(idContato, tipoContato);
    }

    public List obterPorLogin(String login){
        return meioContatoDAO.obterPorLogin(login);
    }
    
    public List obterPorNome(String nome){
        return meioContatoDAO.obterPorNome(nome);
    }
    
    public MeioContato obterPorLoginSenha(String login, String senha)  {
        return meioContatoDAO.obterPorLoginSenha(login,senha);
    }

    public MeioContatoDAO getMeioContatoDAO() {
        return meioContatoDAO;
    }

    public void setMeioContatoDAO(MeioContatoDAO meioContatoDAO) {
        this.meioContatoDAO = meioContatoDAO;
    }
    
}

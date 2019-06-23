
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import model.dao.ContatoDAO;
import model.bean.Contato;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author Aluno
 */
public class ContatoFacade {

    public ContatoDAO contatoDAO = new ContatoDAO();

    public ContatoFacade() {
    }

    public void gravar(Contato contato) {
        contatoDAO.gravar(contato);
    }

    public void excluir(Contato contato) {
        contatoDAO.excluir(contato);
    }

    public Contato carregar(Integer id) {
        return contatoDAO.carregar(id);
    }

    public List obterTodos(Integer idContato) {
        return contatoDAO.obterTodos(idContato);
    }

    public List obterPorNome(String nome, Integer idUsuario) {
        return contatoDAO.obterPorNome(nome, idUsuario);
    }

    public List obterPorEmpresa(Integer idUsuario, String empresa) {
        return contatoDAO.obterPorEmpresa(idUsuario, empresa);
    }

    public List obterPorCargo(Integer idUsuario, String cargo) {
        return contatoDAO.obterPorCargo(idUsuario, cargo);
    }

    public List obterPorAniversario(Integer idUsuario, Date aniversario) {
        return contatoDAO.obterPorAniversario(idUsuario, aniversario);
    }

    public ContatoDAO getContatoDAO() {
        return contatoDAO;
    }

    public void setContatoDAO(ContatoDAO contatoDAO) {
        this.contatoDAO = contatoDAO;
    }

}

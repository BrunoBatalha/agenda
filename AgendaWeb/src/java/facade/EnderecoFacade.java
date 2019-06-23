
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import model.dao.EnderecoDAO;
import model.bean.Endereco;
import java.util.List;

/**
 *
 * @author Aluno
 */
public class EnderecoFacade {

    public EnderecoDAO enderecoDAO = new EnderecoDAO();

    public EnderecoFacade() {
    }

    public void gravar(Endereco endereco) {
        enderecoDAO.gravar(endereco);
    }

    public void excluir(Endereco endereco) {
        enderecoDAO.excluir(endereco);
    }

    public Endereco carregar(Integer id) {
        return enderecoDAO.carregar(id);
    }

    public List obterTodos(Integer id) {
        return enderecoDAO.obterTodos(id);
    }

    public List obterPorEndereco(Integer idContato, String endereco)  {
        return enderecoDAO.obterPorEndereco(idContato, endereco);
    }

    public List obterPorCidade(Integer idContato, String cidade){
        return enderecoDAO.obterPorCidade(idContato, cidade);
    }

    public List obterPorBairro(Integer idContato, String bairro)  {
        return enderecoDAO.obterPorBairro(idContato, bairro);
    }
    
     public EnderecoDAO getEnderecoDAO(){
        return enderecoDAO;
    }
    public void setEnderecoDAO(EnderecoDAO enderecoDAO){
        this.enderecoDAO = enderecoDAO;
    }
}

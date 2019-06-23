/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import model.bean.MeioContato;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author Aluno
 */
public class MeioContatoDAO {

    public EntityManager em;

    public MeioContatoDAO() {
    }

    public MeioContato gravar(MeioContato meioContato) throws DataAccessException {
        return em.merge(meioContato);
    }

    public void excluir(MeioContato meioContato) throws DataAccessException {
        em.remove(carregar(meioContato.getIdMeioContato()));
    }

    public MeioContato carregar(Integer id) throws DataAccessException {
        return em.find(MeioContato.class, id);
    }

    public List obterTodos(Integer idContato) throws DataAccessException {
        Query qry = em.createQuery("SELECT m FROM MEIOCONTATO m WHERE m.idContato.idContato=:idContato");
        qry.setParameter("idContato", idContato);
        return qry.getResultList();

    }

    public List obterPorTipoContato(Integer idContato,String tipoContato) throws DataAccessException {
        Query qry = em.createQuery("SELECT m FROM MEIOCONTATO m WHERE m.idContato.idContato=:idContato AND m.tipoContato=:idContato");
        qry.setParameter("idContato", idContato);
        qry.setParameter("tipoContato", tipoContato);
        return qry.getResultList();

    }
    
    public List obterPorNome(String nome) throws DataAccessException {
        Query qry = em.createQuery("SELECT u FROM MEIOCONTATO u WHERE u.nome LIKE:nome");
        qry.setParameter("nome", "%" + nome + "%");
        return qry.getResultList();
    }

    public List obterPorLogin(String login) throws DataAccessException {
        Query qry = em.createQuery("SELECT u FROM MEIOCONTATO u WHERE u.nome LIKE:nome");
        qry.setParameter("login", "%" + login + "%");
        return qry.getResultList();
    }

    public MeioContato obterPorLoginSenha(String login, String senha) throws DataAccessException {
        Query qry = em.createQuery("SELECT u FROM MEIOCONTATO u WHERE u.login=: login AND u.senha=: senha");
        qry.setParameter("login", login);
        qry.setParameter("senha", senha);

        List resultados = qry.getResultList();
        if (resultados.size() > 0) {
            return (MeioContato) resultados.get(0);
        } else {
            return null;
        }
    }
}

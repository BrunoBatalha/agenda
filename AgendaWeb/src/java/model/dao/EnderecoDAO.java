/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import entitymanager.GeraEntityManager;
import model.bean.Endereco;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author Aluno
 */
public class EnderecoDAO {

    public EntityManager em;

    public EnderecoDAO() {
        em = GeraEntityManager.getEntityManager();
    }

    public Endereco gravar(Endereco endereco) throws DataAccessException {
        try {
            em.getTransaction().begin();
            System.out.println("Salvando a endereco.");
            // Verifica se o usuario ainda não está salva no banco de dados.
            if (endereco.getIdEndereco() == null) {
                //Salva os dados do usuario.
                em.persist(endereco);
            } else {
                //Atualiza ou adiciona os dados do usuario.
                endereco = em.merge(endereco);
            }
            // Finaliza a transação.
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return endereco;

    }

    public void excluir(Endereco endereco) throws DataAccessException {
        em.remove(carregar(endereco.getIdEndereco()));
    }

    public Endereco carregar(Integer id) throws DataAccessException {
        return em.find(Endereco.class, id);
    }

    public List obterTodos(Integer idContato) throws DataAccessException {
        Query qry = em.createQuery("SELECT e FROM ENDERECO e WHERE e.idContato.idContato = :idContato");
        qry.setParameter("idContato", idContato);
        return qry.getResultList();
    }

    public List obterPorEndereco(Integer idContato, String endereco) throws DataAccessException {
        Query qry = em.createQuery("SELECT e FROM ENDERECO e WHERE c.idContato.idContato=:idContato AND c.endereco LIKE :endereco");
        qry.setParameter("idContato", idContato);
        qry.setParameter("endereco", "%" + endereco + "%");
        return qry.getResultList();
    }

    public List obterPorCidade(Integer idContato, String cidade) throws DataAccessException {
        Query qry = em.createQuery("SELECT e FROM ENDERECO e WHERE c.idContato.idContato=:idContato AND c.cidade LIKE :cidade");
        qry.setParameter("idContato", idContato);
        qry.setParameter("cidade", "%" + cidade + "%");
        return qry.getResultList();
    }

    public List obterPorBairro(Integer idContato, String bairro) throws DataAccessException {
        Query qry = em.createQuery("SELECT e FROM ENDERECO e WHERE c.idContato.idContato=:idContato AND c.bairro LIKE :bairro");
        qry.setParameter("idContato", idContato);
        qry.setParameter("bairro", "%" + bairro + "%");
        return qry.getResultList();
    }
    /*
    public Endereco obterPorLoginSenha() throws DataAccessException {
        Query qry = em.createQuery("SELECT u FROM ENDERECO u WHERE u.login=: login AND u.senha=: senha");
        qry.setParameter("login", login);
        qry.setParameter("senha", senha);

        List resultados = qry.getResultList();
        if (resultados.size() > 0) {
            return (Endereco) resultados.get(0);
        } else {
            return null;
        }
    }
     */
}

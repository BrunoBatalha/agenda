/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import entitymanager.GeraEntityManager;
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
        em = GeraEntityManager.getEntityManager();
    }

    public MeioContato gravar(MeioContato meioContato) throws DataAccessException {
        try {
            em.getTransaction().begin();
            System.out.println("Salvando a contato.");
            // Verifica se o usuario ainda não está salva no banco de dados.
            if (meioContato.getIdMeioContato()== null) {
                //Salva os dados do usuario.
                em.persist(meioContato);
            } else {
                //Atualiza ou adiciona os dados do usuario.
                meioContato = em.merge(meioContato);
            }
            // Finaliza a transação.
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return meioContato;
    }

    public void excluir(MeioContato meioContato) throws DataAccessException {
         try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            // Consulta a pessoa na base de dados através do seu ID.
            MeioContato removerMc = em.find(MeioContato.class, meioContato.getIdMeioContato());
            System.out.println("Excluindo os dados de: " + removerMc.getConteudo());
            // Remove a pessoa da base de dados.
            em.remove(removerMc);
            // Finaliza a transação.
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public MeioContato carregar(Integer id) throws DataAccessException {
        return em.find(MeioContato.class, id);
    }

    public List obterTodos(Integer idContato) throws DataAccessException {
        Query qry = em.createQuery("SELECT m FROM MeioContato m WHERE m.idContato.idContato = :idContato");
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

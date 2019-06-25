/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import entitymanager.GeraEntityManager;
import model.bean.Contato;
import java.sql.Date;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import org.springframework.dao.DataAccessException;

/**
 *
 * @author Aluno
 */
public class ContatoDAO {

    public EntityManager em;

    public ContatoDAO() {
        em = GeraEntityManager.getEntityManager();
    }

    public Contato gravar(Contato contato) throws DataAccessException {
        try {
            em.getTransaction().begin();
            System.out.println("Salvando a contato.");
            // Verifica se o usuario ainda não está salva no banco de dados.
            if (contato.getIdContato()== null) {
                //Salva os dados do usuario.
                em.persist(contato);
            } else {
                //Atualiza ou adiciona os dados do usuario.
                contato = em.merge(contato);
            }
            // Finaliza a transação.
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return contato;
    }

    public void excluir(Contato contato) throws DataAccessException {
         try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            // Consulta a pessoa na base de dados através do seu ID.
            Contato removerCont = em.find(Contato.class, contato.getIdContato());
            System.out.println("Excluindo os dados de: " + removerCont.getNome());
            // Remove a pessoa da base de dados.
            em.remove(removerCont);
            // Finaliza a transação.
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public Contato carregar(Integer id) throws DataAccessException {
        return em.find(Contato.class, id);
    }

    public List obterTodos(Integer idUsuario) throws DataAccessException {
       Query qry = em.createQuery("SELECT c FROM Contato c WHERE c.idUsuario.idUsuario = :idUsuario");
         qry.setParameter("idUsuario",idUsuario);
        return qry.getResultList();
    }

    public List obterPorNome(String nome,Integer idUsuario) throws DataAccessException {
        Query qry = em.createQuery("SELECT c FROM CONTATO c WHERE c.idUsuario.idUsuario=:idUsuario AND c.nome  LIKE :nome");
        qry.setParameter("nome", "%" + nome + "%");
        qry.setParameter("idUsuario", idUsuario);
        return qry.getResultList();
    }
    
    public List obterPorEmpresa(Integer idUsuario, String empresa){
        Query qry = em.createQuery("SELECT c FROM CONTATo c WHERE c.idUsuario.idUsuario =:idUsuario AND c.empresa LIKE :empresa");
        qry.setParameter("idUsuario", idUsuario);
        qry.setParameter("nome", "%"+empresa+"%");
        return qry.getResultList();
    }
    
    public List obterPorCargo(Integer idUsuario, String cargo) throws DataAccessException {
        Query qry = em.createQuery("SELECT c FROM CONTATo c WHERE c.idUsuario.idUsuario =:idUsuario AND c.cargo LIKE :cargo");
        qry.setParameter("idUsuario", idUsuario);
        qry.setParameter("cargo", "%"+cargo+"%");
        return qry.getResultList();
    }
    
     public List obterPorAniversario(Integer idUsuario, Date aniversario){
        Query qry = em.createQuery("SELECT c FROM CONTATO c WHERE c.idUsuario.idUsuario =:idUsuario AND c.dataAniversario LIKE :dataAniversario");
        qry.setParameter("idUsuario", idUsuario);
        qry.setParameter("aniversario", aniversario);
        return qry.getResultList();
    }
    
   
}

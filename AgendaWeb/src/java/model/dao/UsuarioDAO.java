package model.dao;

import entitymanager.GeraEntityManager;
import model.bean.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import org.springframework.dao.DataAccessException;

public class UsuarioDAO {

    private EntityManager em;

    public UsuarioDAO() {
        em = GeraEntityManager.getEntityManager();
    }

    public Usuario gravar(Usuario usuario) throws DataAccessException {
        
        try {
            em.getTransaction().begin();
            System.out.println("Salvando a usuario.");
            // Verifica se o usuario ainda não está salva no banco de dados.
            if (usuario.getIdUsuario() == null) {
                //Salva os dados do usuario.
                em.persist(usuario);
            } else {
                //Atualiza ou adiciona os dados do usuario.
                usuario = em.merge(usuario);
            }
            // Finaliza a transação.
            em.getTransaction().commit();
        } finally {
            em.close();
        }
        return usuario;

    }

    public void excluir(Usuario usuario) throws DataAccessException {
        try {
            // Inicia uma transação com o banco de dados.
            em.getTransaction().begin();
            // Consulta a pessoa na base de dados através do seu ID.
            Usuario removerUsu = em.find(Usuario.class, usuario.getIdUsuario());
            System.out.println("Excluindo os dados de: " + removerUsu.getNome());
            // Remove a pessoa da base de dados.
            em.remove(removerUsu);
            // Finaliza a transação.
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public List obterTodos() throws DataAccessException {
        return em.createQuery("SELECT u FROM Usuario u").getResultList();
    }

    public List obterPorNome(String nome) throws DataAccessException {
        Query qry = em.createQuery("SELECT u FROM USUARIO u WHERE u.nome LIKE:nome");
        qry.setParameter("nome", "%" + nome + "%");
        return qry.getResultList();
    }

    public List obterPorLogin(String login) throws DataAccessException {
        Query qry = em.createQuery("SELECT u FROM USUARIO u WHERE u.login LIKE:login");
        qry.setParameter("login", "%" + login + "%");
        return qry.getResultList();
    }

    public Usuario obterPorLoginSenha(String login, String senha) throws DataAccessException {
//        Essa parada tava escrito USUARIO, mas so da certo com Usuario q eh o
//        nome da classe bean
        Query qry = em.createQuery("SELECT u FROM Usuario u WHERE u.login = :login AND u.senha = :senha");
        qry.setParameter("login", login);
        qry.setParameter("senha", senha);

        List resultados = qry.getResultList();
        System.out.println(resultados);
        if (resultados.size() > 0) {
            return (Usuario) resultados.get(0);
        } else {
            return null;
        }
    }
}

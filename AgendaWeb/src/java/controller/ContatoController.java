package controller;

import facade.ContatoFacade;
import facade.UsuarioFacade;
import java.util.List;
import javax.swing.JOptionPane;
import model.bean.Contato;
import model.bean.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.FormContato;

@Controller
public class ContatoController {

    @RequestMapping("adicionarContato")
    public String addContato(@ModelAttribute("form") FormContato form,
            @RequestParam("idUsuario") Integer idUsuario, Model model) {
        ContatoFacade cf = new ContatoFacade();
        Contato contato = new Contato();
        contato.setNome(form.getNome());
        contato.setCargo(form.getCargo());
        contato.setEmpresa(form.getEmpresa());
        contato.setDataAniversario(form.getDataAniversario());

//        Fazer busca por id
        UsuarioFacade uf = new UsuarioFacade();
        List<Usuario> listUsuarios = uf.obterTodos();
        for (Usuario u : listUsuarios) {
            if (u.getIdUsuario() == idUsuario) {
                contato.setIdUsuario(u);
                break;
            }
        }

        cf.gravar(contato);
        cf = new ContatoFacade();
        List<Contato> listContatos = cf.obterTodos(idUsuario);
        for (Contato c : listContatos) {
            if (c.getNome().equals(contato.getNome())
                    && c.getDataAniversario().equals(contato.getDataAniversario())) {
                String nmContato = contato.getNome();
                String idContato = Integer.toString(c.getIdContato());
                model.addAttribute("pNmNvContato", nmContato);
                model.addAttribute("pIdContato", idContato);
            }
        }
        return "svContato";
    }
}

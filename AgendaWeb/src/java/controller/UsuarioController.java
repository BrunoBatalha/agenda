package controller;

import facade.UsuarioFacade;
import java.util.List;
import model.bean.Usuario;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsuarioController {

    @RequestMapping("cadastraUsuario")
    public String cadUsuario(Usuario usuario) {
        UsuarioFacade uf = new UsuarioFacade();
        uf.gravar(usuario);
        return "teste";
    }

    @RequestMapping("loginUsuario")
    public String logUsuario(Usuario usuario, Model model) {
        UsuarioFacade uf = new UsuarioFacade();
        String login = usuario.getLogin();
        String senha = usuario.getSenha();
        Usuario usTeste = uf.obterPorLoginSenha(login, senha);
        if (usTeste == null) {
            model.addAttribute("msg", "Login ou senha incorretos...");
            return "login";
        } else {
            List<Usuario> listUsuarios = uf.obterTodos();
            for (Usuario u : listUsuarios) {
                if (u.getLogin().equals(login)) {
                    String ok = Integer.toString(u.getIdUsuario());
                    model.addAttribute("pIdUsuario", ok);
                    break;
                }
            }
            return "obterID";
        }
    }
}

package controller;

import facade.MeioContatoFacade;
import model.bean.Contato;
import model.bean.MeioContato;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.FormMeioContato;

@Controller
public class MeioContatoController {

    @RequestMapping("adicionarMeioContato")
    public String addMeioContato(@ModelAttribute("form") FormMeioContato form,
            @RequestParam("idContato") Integer idContato) {
        MeioContatoFacade mcf = new MeioContatoFacade();
        MeioContato mc = new MeioContato();
        mc.setConteudo(form.getConteudo());
        mc.setTipoContato(form.getTipoContato());
        Contato c = new Contato(idContato);
        mc.setIdContato(c);
        mcf.gravar(mc);
        return "logado";
    }
}

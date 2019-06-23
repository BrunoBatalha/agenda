
package controller;

import facade.EnderecoFacade;
import model.bean.Contato;
import model.bean.Endereco;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pojo.FormContato;
import pojo.FormEndereco;

@Controller
public class EnderecoController {
    @RequestMapping("adicionarEndereco")
    public String addEnderenco(@ModelAttribute("form") FormEndereco form,@RequestParam("idContato") Integer idContato){
        EnderecoFacade ef = new EnderecoFacade();
        Endereco end = new Endereco();
        end.setBairro(form.getBairro());
        end.setCidade(form.getCidade());
        end.setComplemento(form.getComplemento());
        end.setEndereco(form.getEndereco());
        end.setNumero(form.getNumero());
        end.setTipoEndereco(form.getTipoEndereco());
        end.setUf(form.getUf());
        Contato c= new Contato(idContato);
        end.setIdContato(c);
        ef.gravar(end);
        return "novoMeioContato";
    }
}

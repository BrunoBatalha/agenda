
package controller;

import facade.EnderecoFacade;
import model.bean.Endereco;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EnderecoController {
    @RequestMapping("adicionarEndereco")
    public String addEnderenco(Endereco end){
        EnderecoFacade ef = new EnderecoFacade();
        ef.gravar(end);
        return "novoEndereco";
    }
}

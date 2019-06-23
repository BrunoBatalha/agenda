package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping(value = "/")
public class PaginasController {

    @RequestMapping("/cadastrar")
    public String irParaCad() {
        return "cadastro";
    }
     @RequestMapping("/login")
    public String irParaLog() {
        return "login";
    }
    
    @RequestMapping("/novoContato")
    public String irParaAddCont(){
        return "novoContato";
    }
    
    @RequestMapping("/logado")
    public String irParaLogado(){
        return "logado";
    }
    
    @RequestMapping("/listarContatos")
    public String irParaListContatos(){
        return "listarContatos";
    }
    @RequestMapping("/novoEndereco")
    public String irParaListEnderecos(){
        return "novoEndereco";
    }
}

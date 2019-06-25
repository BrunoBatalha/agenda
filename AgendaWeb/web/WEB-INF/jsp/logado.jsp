<%@page import="facade.MeioContatoFacade"%>
<%@page import="model.bean.MeioContato"%>
<%@page import="facade.EnderecoFacade"%>
<%@page import="model.bean.Endereco"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.bean.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Contato"%>
<%@page import="facade.ContatoFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <title>Agenda</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="<c:url value="/resources/favPerfil.png"/>" type="image/x-icon" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Asap&display=swap" rel="stylesheet">
        <link href="<c:url value="/resources/css/estilo.css"/>" rel="stylesheet" type="text/css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>

    <body >
        <div class="fundo2 sem-scroll">
            <nav class="navbar navbar-expand-lg navbar-light " style="background-color:transparent;">
                <div class="col-sm-12 d-flex justify-content-end">
                    <button id="btnAdicionar"><a href="novoContato"><img id="adicionar" src="<c:url value="/resources/img/addContato.png"/>"></a></button>
                </div>
            </nav>

            <div id="txtInicial" class="animate-bottom ">Agenda</div>

            <form>
                <input type="text" placeholder="Pesquisar..." class="mx-auto d-block mt-4" list="historico" id="pesquisa">

            </form>

            <div class="text-center">

                <table class="table table-borderless mt-5" id="contatos">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Endereço</th>
                            <th scope="col">Ação</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ContatoFacade uf = new ContatoFacade();
                            EnderecoFacade ef = new EnderecoFacade();
                            MeioContatoFacade mcf = new MeioContatoFacade();
                            String id = (String) session.getAttribute("Id");
                            if (id != null) {
                                List<Contato> listaContatos = uf.obterTodos(Integer.parseInt(id));
                                
                                for (Contato c : listaContatos) {
                                    List<Endereco> listaEnderecos = ef.obterTodos(c.getIdContato());
                                    List<MeioContato> listaMC = mcf.obterTodos(c.getIdContato());
                                    Endereco end = listaEnderecos.get(0);
                                    MeioContato mc = listaMC.get(0);
                                    if (mc != null && end != null) {
                                        out.println("<tr>");
                                        out.println("<td style='width:20px;' scope='row'><input  style='background-color:transparent;  box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.5);'type='button' class='btn btn-primary' data-toggle='modal' data-target='#c" + c.getIdContato() + "' id='btnVisualizar' name='contatoId' value='" + c.getIdContato() + "'></td>");
                                        out.println("<td>" + c.getNome() + "</td>");
                                        out.println("<td>" + end.getEndereco() + "</td>");
                                        out.println("<td><a class='ml-2' href='excluir?id=" + c.getIdContato() + "'>Excluir</a></td>");
                                        out.println("</tr>");
                                        request.setAttribute("nome", c.getNome());
                                        request.setAttribute("cargo", c.getCargo());
                                        request.setAttribute("empresa", c.getEmpresa());
                                        request.setAttribute("dataAniversario", c.getDataAniversario());
                                        request.setAttribute("endereco", end.getEndereco());
                                        request.setAttribute("bairro", end.getBairro());
                                        request.setAttribute("cidade", end.getCidade());
                                        request.setAttribute("complemento", end.getComplemento());
                                        request.setAttribute("numero", end.getNumero());
                                        request.setAttribute("tipo", end.getTipoEndereco());
                                        request.setAttribute("uf", end.getUf());
                                        request.setAttribute("conteudo", mc.getConteudo());
                                        request.setAttribute("tipoCont", mc.getTipoContato());
                                        out.println("<div class='modal fade' id='c" + c.getIdContato() + "' tabindex='-1' role='dialog' aria-labelledby='exampleModalLabel' aria-hidden='true'>");
                        %>


                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Contato</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <form >


                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputEmail4">Nome</label>
                                            <input type="email" class="form-control" id="inputEmail4" placeholder="Email" value="<%= request.getAttribute("nome")%>" readonly>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputPassword4">Data de Aniversário</label>
                                            <input type="date" class="form-control" id="inputdate" value="<%= request.getAttribute("dataAniversario")%>" readonly>
                                        </div>
                                    </div>



                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputEmail4">Empresa</label>
                                            <input type="text" class="form-control" id="inputEmail4" value="<%= request.getAttribute("empresa")%>" readonly>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputPassword4">Cargo<br></label>
                                            <input type="text" class="form-control" id="inputdate" value="<%= request.getAttribute("cargo")%>"readonly>
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="inputEmail4">Tipo de Contato</label>
                                        <input type="email" class="form-control" id="inputEmail4" value="<%= request.getAttribute("tipoCont")%>"readonly>
                                    </div>

                                    <div class="form-group ">
                                        <label for="inputEmail4">Conteudo</label>
                                        <input class="form-control" id="exampleFormControlTextarea1"  value="<%= request.getAttribute("conteudo")%>" readonly type="text">
                                    </div>


                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputEmail4">Endereço</label>
                                            <input type="text" class="form-control" id="inputEmail4"  value="<%= request.getAttribute("endereco")%>" readonly>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="inputPassword4">Numero</label>
                                            <input type="text" class="form-control" id="inputdate" value="<%= request.getAttribute("numero")%>"readonly>
                                        </div>
                                    </div>


                                    <div class="form-group">

                                        <input type="text" class="form-control" id="inputAddress" placeholder="Complemento" value="<%= request.getAttribute("complemento")%>"readonly>
                                    </div>

                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="inputCity">Bairro</label>
                                            <input type="text" class="form-control" id="inputCity" value="<%= request.getAttribute("bairro")%>"readonly>
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="inputState">Cidade</label>
                                            <input type="text" class="form-control" id="inputCity" value="<%= request.getAttribute("cidade")%>"readonly>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="inputZip">UF</label>
                                            <input type="text" class="form-control" id="inputZip" value="<%= request.getAttribute("uf")%>" readonly>
                                        </div>
                                    </div>

                                    <div class="form-group ">
                                        <label for="inputEmail4">Tipo de Endereço</label>
                                        <input type="email" class="form-control" id="inputEmail4"value="<%= request.getAttribute("tipo")%>" readonly>
                                    </div>



                                </form>
                            </div>

                        </div>
                    </div>
            </div>
            <%
                        }
                    }
                } else {
                    out.print("<h2 class='text-danger text-uppercase'>Tente fazer login novamente</h2>");
                }

            %>
        </tbody>
    </table>
</div>
</div>

<div class="modal fade" id="contatoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Contato</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form >


                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Nome</label>
                            <input type="email" class="form-control" id="inputEmail4" placeholder="Email" readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Data de Aniversário</label>
                            <input type="date" class="form-control" id="inputdate" readonly>
                        </div>
                    </div>



                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Empresa</label>
                            <input type="text" class="form-control" id="inputEmail4" readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Cargo<br></label>
                            <input type="text" class="form-control" id="inputdate" readonly>
                        </div>
                    </div>






                    <div class="form-group ">
                        <label for="inputEmail4">Tipo de Contato</label>
                        <input type="email" class="form-control" id="inputEmail4" readonly>
                    </div>

                    <div class="form-group ">
                        <label for="inputEmail4">Conteudo</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly></textarea>
                    </div>


                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Endereço</label>
                            <input type="text" class="form-control" id="inputEmail4" readonly>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Numero</label>
                            <input type="text" class="form-control" id="inputdate"readonly>
                        </div>
                    </div>


                    <div class="form-group">

                        <input type="text" class="form-control" id="inputAddress" placeholder="Complemento" readonly>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputCity">Bairro</label>
                            <input type="text" class="form-control" id="inputCity" readonly>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">Cidade</label>
                            <input type="text" class="form-control" id="inputCity" readonly>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="inputZip">UF</label>
                            <input type="text" class="form-control" id="inputZip" readonly>
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="inputEmail4">Tipo de Endereço</label>
                        <input type="email" class="form-control" id="inputEmail4" readonly>
                    </div>



                </form>
            </div>

        </div>
    </div>
</div>

</body>
</html>


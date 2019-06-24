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

    <body>
        <div class="fundo2">
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
                            String id = (String) session.getAttribute("Id");
                            if (id != null) {
                                List<Contato> listaContatos = uf.obterTodos(Integer.parseInt(id));

                                for (Contato c : listaContatos) {
                                    Endereco end = ef.carregar(c.getIdContato());
                                    out.println("<tr>");
                                    out.println("<td scope='row'>" + c.getIdContato() + "</td>");
                                    out.println("<td>" + c.getNome() + "</td>");
                                    out.println("<td>" + end.getEndereco()+ "</td>");
                                    out.println("<td><a href='#'>Editar</a><a class='ml-2' href='#'>Excluir</a></td>");
                                    out.println("</tr>");

                                }
                            } else {
                                out.print("<h2 class='text-danger text-uppercase'>Tente fazer login novamente</h2>");
                            }

                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
<%-- 
    Document   : excluir
    Created on : 24/06/2019, 14:04:41
    Author     : Aluno
--%>

<%@page import="model.bean.Contato"%>
<%@page import="facade.ContatoFacade"%>
<%@page import="facade.MeioContatoFacade"%>
<%@page import="model.bean.MeioContato"%>
<%@page import="model.bean.Endereco"%>
<%@page import="facade.EnderecoFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String idContato = request.getParameter("id");

            EnderecoFacade ef = new EnderecoFacade();
            Endereco endereco = new Endereco(Integer.parseInt(idContato));
            ef.excluir(endereco);

            MeioContatoFacade mc = new MeioContatoFacade();
            MeioContato meioContato = new MeioContato(Integer.parseInt(idContato));
            mc.excluir(meioContato);

            ContatoFacade c = new ContatoFacade();
            Contato contato = new Contato(Integer.parseInt(idContato));
            c.excluir(contato);
            response.sendRedirect("logado");

        %>

    </body>
</html>

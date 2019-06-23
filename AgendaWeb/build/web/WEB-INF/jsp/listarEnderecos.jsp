<%-- 
    Document   : listarEnderecos
    Created on : 22/06/2019, 23:31:57
    Author     : Glenda Batalha
--%>

<%@page import="model.bean.Endereco"%>
<%@page import="facade.EnderecoFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem de enderecos</title>
    </head>
    <body>
        <h1>Listagem de endereços</h1>
        <table BORDER="1">
            <tr>
                <th>Id</th>
                <th>Bairro</th>
                <th>Cidade</th>
                <th>Endereco</th>
                <th>Número</th>
                <th>Tipo de endereco</th>
                <th>UF</th>
                <th>Complemento</th>
            </tr>

            <%
                EnderecoFacade uf = new EnderecoFacade();
                List<Endereco> listaEnd = uf.obterTodos();
                for (Endereco e : listaEnd) {
                    out.println("<tr>");
                    out.println("<td>" + e.getIdContato() + "</td>");
                    out.println("<td>" + e.getNome() + "</td>");
                    out.println("<td>" + e.getCargo() + "</td>");
                    out.println("<td>" + e.getEmpresa() + "</td>");
                    out.println("<td>" + e.getDataAniversario() + "</td>");
                    out.println("</tr>");
                }

            %>
        </table>
    </body>
</html>

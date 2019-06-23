<%@page import="model.bean.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="model.bean.Contato"%>
<%@page import="facade.ContatoFacade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de contatos</title>
    </head>
    <body>
        <h1>Listagem de contatos</h1>
        <table BORDER="1">
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Cargo</th>
                <th>Empresa</th>
                <th>Data de Aniversário</th>
            </tr>

            <%
                ContatoFacade uf = new ContatoFacade();
                String id = (String) session.getAttribute("Id");
                if (id != null) {
                    List<Contato> listaContatos = uf.obterTodos(Integer.parseInt(id));
                    for (Contato c : listaContatos) {
                        out.println("<tr>");
                        out.println("<td>" + c.getIdContato()+ "</td>");
                        out.println("<td>" + c.getNome() + "</td>");
                        out.println("<td>" + c.getCargo() + "</td>");
                        out.println("<td>" + c.getEmpresa() + "</td>");
                        out.println("<td>" + c.getDataAniversario()+ "</td>");
                        out.println("</tr>");
                    }
                }else{
                    out.print("Tente fazer login novamente");
                }

            %>
        </table>
    </body>
</html>

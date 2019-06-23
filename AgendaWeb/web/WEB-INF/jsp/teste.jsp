<%-- 
    Document   : teste
    Created on : 22/06/2019, 00:52:40
    Author     : Glenda Batalha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>"Cadastrado"</h1>
        <%

                if (request.getAttribute("pIdUsuario") != null) {
                    String strId = (String) request.getAttribute("pIdUsuario");
                    session.setAttribute("Id", strId);
                    out.print(strId);
                    response.sendRedirect("logado");
                } else {
                    out.print(request.getAttribute("pIdUsuario"));
                }
        %>
    </body>
</html>

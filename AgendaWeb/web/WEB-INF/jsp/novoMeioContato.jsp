<%-- 
    Document   : novoMeioContato
    Created on : 23/06/2019, 13:15:37
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
        <h1>Novo endereço para <%=(String) session.getAttribute("pNmNvContato")%></h1>
        <div>
            <form  method="post" action="adicionarMeioContato">
                <label>ID contato:</label>
                <input name="idContato" type="text" readonly 
                       value="<%= (String) session.getAttribute("IdContato")%>">
                <label>Conteúdo</label>
                <input name="conteudo" type="text" >
                <label>Tipo Contato:</label>
                <select name="tipoContato">
                    <option>Muito importante</option>
                    <option>Marromenos</option>
                    <option>Pouco importante</option>
                </select>

                <input type="submit">
            </form>

        </div>
    </body>
</html>

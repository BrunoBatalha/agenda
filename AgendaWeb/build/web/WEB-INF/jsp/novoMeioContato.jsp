<%-- 
    Document   : novoMeioContato
    Created on : 23/06/2019, 13:15:37
    Author     : Glenda Batalha
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--        <h1>Novo endereço para <=(String) session.getAttribute("pNmNvContato")%></h1>
            <form  method="post" action="adicionarMeioContato">
                <label>ID contato:</label>
                <input name="idContato" type="text" readonly 
                       value="<= (String) session.getAttribute("IdContato")%>">
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
-->

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
    <div class="fundo2 sem-scroll">
        <nav class="navbar navbar-expand-lg navbar-light mb-5 " style="background-color:transparent;">

        </nav>

        <div class="container" align="center">
            <form id="formContato" method="post" action="adicionarMeioContato">
                <div class="mb-3" id="txtInicial">Adicionar Meio contato para  <%=(String) session.getAttribute("pNmNvContato")%></div>
                <div class="form-group">
                        <label>ID contato:</label>
                        <input name="idContato" type="text" readonly 
                               value="<%= (String) session.getAttribute("IdContato")%>">
                    </div>
                <div class="form-group ">
                    <label for="inputEmail4">Tipo de Contato</label>
                    <input type="text" class="form-control" id="inputEmail4" name="tipoContato">
                </div>

                <div class="form-group ">
                    <label for="inputEmail4">Conteudo</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" name="conteudo" rows="3"></textarea>
                </div>

                <div class="col-sm-12 text-center mt-5">
                    <button id="btnCon" type="submit" class="btn btn-primary ">Salvar</button>
                </div>
            </form>
        </div>
    </div>
</body></html>


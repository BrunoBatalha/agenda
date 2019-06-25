<%-- 
    Document   : listarEnderecos
    Created on : 22/06/2019, 23:14:50
    Author     : Glenda Batalha
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
    <h1>Novo endereço para <=(String) session.getAttribute("pNmNvContato")%></h1>
<form  method="post" action="adicionarEndereco">
                <label>ID contato:</label>
                <input name="idContato" type="text" readonly 
                       value="<= (String) session.getAttribute("IdContato")%>">
                <label>Bairro:</label>
                <input name="bairro" type="text" >
                <label>Cidade:</label>
                <input name="cidade" type="text" >
                <label>Endereço:</label>
                <input name="endereco" type="text" >
                <label>Número</label>
                <input name="numero" type="text" >
                <label>Tipo endereço:</label>
                <input name="tipoEndereco" type="text">
                <label>UF:</label>
                <input name="uf" type="text">
                <label>Complemento:</label>
                <input name="complemento" type="text">
                <input type="submit">
            </form>-->
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
                <form id="formContato"  method="post" action="adicionarEndereco">
                    <div class="mb-3" id="txtInicial">Adicionar endereço para <%=(String) session.getAttribute("pNmNvContato")%></div>
                    <div class="form-group">
                        <label>ID contato:</label>
                        <input name="idContato" type="text" readonly 
                               value="<%= (String) session.getAttribute("IdContato")%>">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Endereço</label>
                            <input type="text" class="form-control" id="inputEmail4" name="endereco" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Numero</label>
                            <input type="text" class="form-control" id="inputdate" name="numero" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <input type="text" class="form-control" id="inputAddress" name="complemento" placeholder="Complemento" >
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label for="inputCity">Bairro</label>
                            <input type="text" class="form-control" name="bairro" id="inputCity">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">Cidade</label>
                            <input type="text" class="form-control" name="cidade" id="inputCity">
                        </div>
                        <div class="form-group col-md-2">
                            <label for="inputZip">UF</label>
                            <input type="text" class="form-control" name="uf" id="inputZip">
                        </div>
                    </div>

                    <div class="form-group ">
                        <label for="inputEmail4">Tipo de Endereço</label>
                        <input type="text" class="form-control" name="tipoEndereco" id="inputEmail4">
                    </div>

                    <div class="col-sm-12 text-center mt-5">
                        <button id="btnCon" type="submit" class="btn btn-primary ">Próximo</button>
                    </div>
                </form>
            </div>
        </div>
    </body></html>

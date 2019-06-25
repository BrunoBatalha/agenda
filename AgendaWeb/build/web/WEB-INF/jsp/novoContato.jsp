
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--            <form  method="post" action="adicionarContato">
                <label>Nome:</label>
                <input name="nome" type="text" >
                <label>Cargo:</label>
                <input name="cargo" type="text" >
                <label>Empresa:</label>
                <input name="empresa" type="text" >
                <label>Data de aniversario:</label>
                <input name="dataAniversario" type="text" >
                <label>Seu id:</label>
                <input name="idUsuario" type="text" readonly 
                       value="<=(String) session.getAttribute("Id")%>">
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
    <div class="fundo2">
        <nav class="navbar navbar-expand-lg navbar-light mb-5 " style="background-color:transparent;">
        </nav>
        <div class="container" align="center">
            <form id="formContato" method="post" action="adicionarContato">
                <div class="mb-3" id="txtInicial">Adicionar Contato</div>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="inputEmail4">Seu id:</label>
                        <input type="text" class="form-control" name="idUsuario" value="<%=(String) session.getAttribute("Id")%>" id="inputEmail4" readonly>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Nome</label>
                        <input type="text" class="form-control" id="inputEmail4" name="nome" placeholder="nome" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Data de Aniversário</label>
                        <input type="text" class="form-control" id="inputdate" name="dataAniversario" required>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="inputEmail4">Empresa</label>
                        <input type="text" class="form-control" id="inputEmail4" name="empresa" required>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="inputPassword4">Cargo<br></label>
                        <input type="text" class="form-control" id="inputdate" name="cargo" required>
                    </div>
                </div>

                <div class="col-sm-12 text-center mt-5">
                    <button id="btnCon" type="submit" class="btn btn-primary ">Proximo</button>
                </div>
            </form>
        </div>
    </div>
</body></html>


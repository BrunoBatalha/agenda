<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
            <form  method="post" action="cadastraUsuario">
                <label>Nome:</label>
                <input name="nome" type="text" >
                <label>Login:</label>
                <input name="login" type="text" >
                <label>Senha:</label>
                <input name="senha" type="text" >
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
        <div class="fundo2 inicial">
            <div class="wrapper fadeInDown">
                <div id="formContent">
                    <div class="fadeIn first">
                        <img src="<c:url value="/resources/img/perfilRedondo.png"/>" alt="User Icon" />
                    </div>

                    <form  method="post" action="cadastraUsuario">
                        <input type="text" id="login" class="fadeIn second" name="nome" placeholder="nome">
                        <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
                        <input type="password" id="password" class="fadeIn third" name="senha" placeholder="senha">
                        <input type="submit" class="fadeIn fourth" value="Cadastrar">
                    </form>


                    <div id="formFooter">
                        <a class="underlineHover" href="login">Já tem uma conta? Faça login</a>
                    </div>

                </div>
            </div>

        </div>

    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!--            <form  method="post" action="loginUsuario">
                <label>Login:</label>
                <input name="login" type="text" >
                <label>Senha:</label>
                <input name="senha" type="text" >
                <input type="submit">
            </form>-->
<!--            <= (request.getAttribute("msg") != null) ? request.getAttribute("msg") : "">-->

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
    </head>

    <body class="sem-scroll">
        <div class="fundo2 inicial">
            <div class="wrapper fadeInDown">
                <div id="formContent">
                    <div class="fadeIn first">
                        <img src="<c:url value="/resources/img/perfil-1.png"/>" alt="User Icon" />
                    </div>

                    <form method="post" action="loginUsuario">
                        <h4 class="text-danger text-uppercase"><%= (request.getAttribute("msg") != null) ? request.getAttribute("msg") : ""%></h4>
                        <input type="text" id="login" class="fadeIn second" name="login" placeholder="login">
                        <input type="password" id="password" class="fadeIn third" name="senha" placeholder="senha">
                        <input type="submit" class="fadeIn fourth" value="Login">
                    </form>


                    <div id="formFooter">
                        <a class="underlineHover" href="cadastrar">Ainda não tem uma conta? Cadastre-se agora!</a>
                    </div>

                </div>
            </div>

        </div>
    </body>
</html>

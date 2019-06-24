<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--                <div class="navbar-brand">
                    <a href="login"><button type="button" >Login</button></a>
                    <a href="cadastrar"> <button type="button" >Cadastrar-se</button></a>
                </div>-->

<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <title>Agenda</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="<c:url value="/resources/favPerfil.png"/>" type="image/x-icon" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Asap&display=swap" rel="stylesheet">
        <link href="<c:url value="/resources/css/estilo.css"/>" rel="stylesheet" type="text/css"/>
        <!--
            <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/slate/bootstrap.min.css" rel="stylesheet" integrity="sha384-FBPbZPVh+7ks5JJ70RJmIaqyGnvMbeJ5JQfEbW0Ac6ErfvEg9yG56JQJuMNptWsH" crossorigin="anonymous">
        -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </head>

    <body onload="myFunction()">

        <div id="loader" class="h-100" align="center">

            <img src="<c:url value="/resources/img/loading.gif"/>"  width="15%"alt=""/>
        </div>
        <div style="display:none;" id="myDiv">

            <div class="inicial">
                <div class="fundoexterno">
                    <div class="fundo">

                    </div>

                </div>
                <nav class="navbar navbar-expand-lg navbar-light " style="background-color:#3498db;">

                    <div class="navbar-brand col-sm-6 d-flex">
                        <img src="<c:url value="/resources/img/icons8-contatos-64.png"/>">
                        <div class="mt-4" id="logo">Agenda</div>
                    </div>
                    <div class="col-sm-6 d-flex justify-content-end">
                        <a href="login"><button id="btnPadrao" type="button" class="btn btn-light mr-2">Login</button></a>
                        <a href="cadastrar"> <button id="btnPadrao" type="button" class="btn btn-light">Cadastrar-se</button></a>
                    </div>

                </nav>


                <div class="row">
                    <div id="botaoCentro" class="col-sm-12" align="center">
                        <div id="txtInicial" class="animate-bottom">Mantenha seus contatos <br>organizados e atualizados!</div>

                        <a href="cadastrar"> <button id="btnCadastrar" type="button" class="btn btn-primary btn-lg mt-5 animate-bottom">Cadastrar-se</button></a>
                    </div>
                </div>
            </div>
        </div>

        <script>
            var myVar;


            function myFunction() {
                myVar = setTimeout(showPage, 4000);
            }

            function showPage() {
                document.getElementById("loader").style.display = "none";
                document.getElementById("myDiv").style.display = "block";
            }

        </script>
    </body>

</html>

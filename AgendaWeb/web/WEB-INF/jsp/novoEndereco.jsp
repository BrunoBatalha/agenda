<%-- 
    Document   : listarEnderecos
    Created on : 22/06/2019, 23:14:50
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
        <h1>Novo endereço</h1>
        <div>
            <form  method="post" action="adicionarEndereco">
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
            </form>

        </div>
    </body>
</html>

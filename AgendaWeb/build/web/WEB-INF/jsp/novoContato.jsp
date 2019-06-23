
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo contato</title>
    </head>
    <body>
        <h1>Adicionar contato</h1>
        <div>
            <form  method="post" action="adicionarContato">
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
                       value="<%=(String) session.getAttribute("Id")%>">
                <input type="submit">
            </form>

        </div>
    </body>
</html>

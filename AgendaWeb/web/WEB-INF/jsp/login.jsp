<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <form  method="post" action="loginUsuario">
                <label>Login:</label>
                <input name="login" type="text" >
                <label>Senha:</label>
                <input name="senha" type="text" >
                <input type="submit">
            </form>
            <%= (request.getAttribute("msg") != null) ? request.getAttribute("msg") : ""%>

        </div>
    </body>
</html>

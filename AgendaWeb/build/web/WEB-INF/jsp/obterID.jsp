<%
    if (request.getAttribute("pIdUsuario") != null) {
        String strId = (String) request.getAttribute("pIdUsuario");
        session.setAttribute("Id", strId);
        out.print(strId);
        response.sendRedirect("logado");
    } else {
        out.print(request.getAttribute("pIdUsuario"));
    }
%>
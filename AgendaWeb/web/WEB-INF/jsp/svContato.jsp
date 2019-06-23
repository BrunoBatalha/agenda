<%
    String strIdCont = (String) request.getAttribute("pIdContato");
    String strNomeCont = (String) request.getAttribute("pNmNvContato");
    session.setAttribute("IdContato", strIdCont);
    session.setAttribute("pNmNvContato", strNomeCont);
    response.sendRedirect("novoEndereco");
%>
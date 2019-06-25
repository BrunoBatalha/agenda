<%-- 
    Document   : modais
    Created on : 24/06/2019, 15:42:04
    Author     : Aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <div class="modal fade" id="contatoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Contato</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form >


                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Nome</label>
                                    <input type="email" class="form-control" id="inputEmail4" placeholder="Email" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Data de Aniversário</label>
                                    <input type="date" class="form-control" id="inputdate" readonly>
                                </div>
                            </div>



                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Empresa</label>
                                    <input type="text" class="form-control" id="inputEmail4" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Cargo<br></label>
                                    <input type="text" class="form-control" id="inputdate" readonly>
                                </div>
                            </div>






                            <div class="form-group ">
                                <label for="inputEmail4">Tipo de Contato</label>
                                <input type="email" class="form-control" id="inputEmail4" readonly>
                            </div>

                            <div class="form-group ">
                                <label for="inputEmail4">Conteudo</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" readonly></textarea>
                            </div>


                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Endereço</label>
                                    <input type="text" class="form-control" id="inputEmail4" readonly>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputPassword4">Numero</label>
                                    <input type="text" class="form-control" id="inputdate"readonly>
                                </div>
                            </div>


                            <div class="form-group">

                                <input type="text" class="form-control" id="inputAddress" placeholder="Complemento" readonly>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="inputCity">Bairro</label>
                                    <input type="text" class="form-control" id="inputCity" readonly>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputState">Cidade</label>
                                    <input type="text" class="form-control" id="inputCity" readonly>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="inputZip">UF</label>
                                    <input type="text" class="form-control" id="inputZip" readonly>
                                </div>
                            </div>

                            <div class="form-group ">
                                <label for="inputEmail4">Tipo de Endereço</label>
                                <input type="email" class="form-control" id="inputEmail4" readonly>
                            </div>



                        </form>
                    </div>

                </div>
            </div>
        </div>

    </body>
</html>

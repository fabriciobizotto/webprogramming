<%@page import="java.util.List"%>
<%@page import="br.com.ifc.entidades.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link type="text/css" rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
        <script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
        <style type="text/css">
            body {
                margin-top: 60px;
                background-color: #f5f5f5;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <fieldset>
                <legend>Contatos</legend>
               <form action="adicionarContato" method="POST" class="form-horizontal">
                    <div class="form-group">
                        <label for="nome" class="control-label col-md-3">Nome</label>
                        <div class="col-md-9">
                            <input type="text" name="nome" class="form-control" autofocus="true" required="true"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="control-label col-md-3">E-mail</label>
                        <div class="col-md-9">
                            <input type="text" name="email" class="form-control" 
                                   required="true" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-3 col-md-9">
                            <input type="submit" value="Gravar" class="btn btn-primary"/>
                        </div>
                    </div>
                </form>
            </fieldset>

            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>E-mail</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="contato" items="${contatos}" >
                        <tr>
                            <td>${contato.nome}</td>
                            <td>${contato.email}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </body>
</html>

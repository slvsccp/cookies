<%@page language = "java" import="java.util.*" %>
<% 
    String nome = request.getParameter("NOME");
    String carro = request.getParameter("cars");
    if (nome == null) {
        nome = "";
    }
     if (carro == null) {
        carro = "";
    }
     
    Cookie meuCookie = new Cookie("nomeDoUsuario", nome);
    Cookie meuCarro = new Cookie("carroDoUsuario", carro);
    
    meuCookie.setMaxAge(15);
    meuCarro.setMaxAge(15);
    
    response.addCookie(meuCookie);
    response.addCookie(meuCarro);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Cookie</title>
    </head>
    <body>
        <p><a href="ExibirCookie.jsp">Clique aqui para ver o Cookie</a></p>
    </body>
</html>

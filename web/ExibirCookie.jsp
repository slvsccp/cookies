<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<% 
    String cooNome = "nomeDoUsuario";
    Cookie cookies[] = request.getCookies();
    Cookie exemploCookieNome = null;
    if (cookies != null) {
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i].getName().equals(cooNome)) {
                exemploCookieNome = cookies[i];
                break;
            }
        }
    }
    
    String cooCarro = "carroDoUsuario";
    Cookie cookiesCarro[] = request.getCookies();
    Cookie exemploCookieCarro = null;
    if (cookiesCarro != null) {
        for (int i = 0; i < cookiesCarro.length; i++) {
            if (cookiesCarro[i].getName().equals(cooCarro)) {
                exemploCookieCarro = cookiesCarro[i];
                break;
            }
        }
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Cookie</title>
    </head>
    <body>
        <%
            if (exemploCookieNome == null) {
                out.println("Não foi encontrado cookie com o nome: <br>"
                        + cooNome + "</br>");
            } else {
                out.println("Seja bem-vindo: " + exemploCookieNome.getValue());
            }
            
            if (exemploCookieCarro == null) {
                out.println("Não foi encontrado cookie com o carro: <br>"
                        + cooCarro + "</br>");
            } else {
                out.println("<br>Carro escolhido: " + exemploCookieCarro.getValue());
            }
            %>
    </body>
</html>

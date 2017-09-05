<!DOCTYPE html>
 
<html>
    <head>
        
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <h1>Login</h1>

        <form method="post" action="ServletController">
            <input type="hidden" name="commande" value="login" id="commande" />

            <p>
                <label for="login">login : </label>
                <input type="text" name="login" id="login" />
            </p>
            <p>
                <label for="password">password : </label>
                <input type="text" name="password" id="password" />
            </p>       

            <input type="submit" name="Login" id="id" value="Login"/>
        </form>

        
        <form method="post" action="ServletController">
            <input type="hidden" name="commande" value="pwdperdu" id="commande" />

            <p>
                
                <label for="email">Adresse email <span class="requis">*</span></label>

                <input type="email" id="email" name="login" value="<c:out value="${param.email5}"/>" size="20" maxlength="60" />

                <span class="erreur">${erreurs['email5']}</span>
               
            </p>

            <input type="submit" name="Login" id="login" value="mot de passe oublié, envoyez moi un mail"/>

        </form>

    </body>
</html>


 








 
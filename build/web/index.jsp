<%-- 
    Document   : index
    Created on : Jul 31, 2018, 6:58:29 PM
    Author     : fernando
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8"/>
        <title>TareaDevAppVan</title>
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <link href="tareadevappvan_file.css" rel="stylesheet" type="text/css"/>
        <style>
        body {
            background-image: url("image.jpg");
        }
        </style>
    </head>
    <body>
        
        
        <h1>Hello World!</h1>
        <h2>
            <%
                //    application.getRealPath("") + "/daw.mdb";
%>
        </h2>
        <div class="w-container">
            <form name="f1" action="autenticacion.jsp" method="POST">
                <table border="0">
                    <tbody>
                        <tr>
                            <td>Usuario</td>
                            <td><input type="text" name="ti_usuario" value="" /> </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="ti_password" value="" /></td>
                        </tr>
                    </tbody>
                </table>
                <br>
                <input type="submit" value="Login" name="bt_login" />
            </form>
        </div>
    </body>
</html>

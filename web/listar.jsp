<%-- 
    Document   : listar
    Created on : Aug 2, 2018, 6:55:45 PM
    Author     : fernando
--%>

<%//seguridad del Sistema
%>
<%
    if (session.getAttribute("s_user") == null) {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
%>

<%@page import="database.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Desarrollo de Aplicaciones Web</title>
    </head>
    <body>
        Clase: <%=request.getParameter("clase")%><br>
        Campus: <%=request.getParameter("campus")%>        
        <h4>LISTA DE USUARIOS</h4>         
        <table border="1px">
            <thead>
                <tr>
                    <th>CUENTA</th>
                    <th>NOMBRES</th>
                    <th>APELLIDOS</th>
                    <th>USUARIOS</th>
                    <th>PASSWORD</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try {
                        Dba db = new Dba(application.getRealPath("") + "/daw.mdb");
                        db.conectar();
                        db.query.execute("select cuenta, nombres, apellidos,usuario,password from usuarios");
                        ResultSet rs = db.query.getResultSet();
                        String centinela = "n";
                        while (rs.next()) {%>
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td> 
                </tr>         
                <%
                        }
                        db.desconectar();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>   
        </table>
    </body>
</html>

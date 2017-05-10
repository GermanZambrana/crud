<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="css/estilos.css">
        <title>Tarjeta Grafica - German Zambrana Ruiz</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud3", "root", "");
            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");

            String actualizacion = "UPDATE tarjeta_grafica SET "
                    + "tipo='" + request.getParameter("tipo")
                    + "', marca='" + request.getParameter("marca")
                    + "', modelo='" + request.getParameter("modelo")
                    + "', precio=" + Double.valueOf(request.getParameter("precio"))
                    + " WHERE tarjeta_id=" + Integer.valueOf(request.getParameter("tarjeta_id"));
            s.execute(actualizacion);
            out.println("Tarjeta actualizada correctamente.");

            conexion.close();
        %>
        <br>
        <a href="index.jsp" class=""><span></span> Página principal</a>
    </body>
</html>
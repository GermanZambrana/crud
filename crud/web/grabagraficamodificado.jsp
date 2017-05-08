<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Tarjeta Grafica</title>
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "INSERT INTO graficas VALUES "
                           + "modelo='" + request.getParameter("modelo")
                           + "', marca='" + request.getParameter("marca")
                           + "', precio=" + Integer.valueOf(request.getParameter("precio"));
      s.execute(actualizacion);
      out.println("Socio actualizado correctamente.");
      
      conexion.close();
    %>
    <br>
    <a href="index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Página principal</a>
  </body>
</html>
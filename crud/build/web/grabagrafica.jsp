<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>Club de Baloncesto - Luis José Sánchez</title>
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      // Comprueba la existencia del número de socio introducido
      String consultaNumSocio = "SELECT * FROM graficas WHERE modelo='"
                                + request.getParameter("modelo");      
      
      ResultSet numeroDeSocios = s.executeQuery (consultaNumSocio);
      numeroDeSocios.last();
      
      if (numeroDeSocios.getRow() != 0) {
        out.println("Lo siento, no se ha podido dar de alta, ya existe un socio con el número "
                    + request.getParameter("modelo") + ".");
      } else {
        String insercion = "INSERT INTO grafica VALUES (" + request.getParameter("modelo")
                           + "', " +request.getParameter("marca")
                           + ", " + Integer.valueOf(request.getParameter("precio"));
        s.execute(insercion);
        out.println("Grafica dada de alta correctamente.");
      }
      conexion.close();
    %>
    <br>
    <a href="index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Página principal</a>

  </body>
</html>
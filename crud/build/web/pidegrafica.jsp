<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "root");
      Statement s = conexion.createStatement();

      ResultSet listado = s.executeQuery ("SELECT * FROM graficas");
    %>
    <table>
      <tr><th>modelo</th><th>marca</th><th>precio</th></th></tr>
    <%
      while (listado.next()) {
          out.println("<tr><td>");
          out.println("<td>" + listado.getString("modelo") + "</td>");
          out.println("<td>" + listado.getString("marca") + "</td>");
          out.println("<td>" + listado.getString("precio") + "</td>");
    %>
      <td>
      <form method="get" action="borragrafica.jsp">
        <input type="hidden" name="codigo" value="<%=listado.getString("socioID") %>"/>
        <input type="submit" value="borrar">
      </form>
      </td></tr>
    <%
      } // while   
      conexion.close();
     %>
    </table>
  </body>
</html>
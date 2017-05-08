<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   
    <title>Tarjetas Graficas</title>
  </head>

  <body>
		<div class="container">
			<br><br>			
      <div class="panel panel-primary">
        <div class="panel-heading text-center"><h2>Tarjeta Graficas</h2></div>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery ("SELECT * FROM graficas");
        %>

        <table>
        
       
           
             <form method="get" action="grabagrafica.jsp">
          <tr><td><input type="text" name="modelo" size="30"></td>
              <td><input type="text" name="modelo" size="30"></td>
              <td><input type="text" name="precio" size="30"></td>
              <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
        </form>
             <tr><th>Modelo</th><th>Marca</th><th>Precio</th></tr>
        <%
          while (listado.next()) {
            out.println("<tr><td>");
            out.println("<td>" + listado.getString("modelo") + "</td>");
            out.println("<td>" + listado.getString("marca") + "</td>");
            out.println("<td>" + listado.getString("precio") + "</td>");
        %>
        <td>
        <form method="get" action="modificagrafica.jsp">
          <input type="hidden" name="modelo" value="<%=listado.getString("modelo") %>">
          <input type="hidden" name="marca" value="<%=listado.getString("marca") %>">
          <input type="hidden" name="precio" value="<%=listado.getString("precio") %>">
					<button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span> Modificar</button>
				</form>
				</td>
				<td>
        <form method="get" action="borragrafica.jsp">
          <button type="submit" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span> Eliminar</button>
        </form>
        </td></tr>
        <%
          } // while   

          conexion.close();
        %>

        </table>
      </div>
    </div>
  </body>
</html>
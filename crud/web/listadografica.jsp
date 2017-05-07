<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title> Graficas</title>
  </head>
  <body>
    <h1>Graficas</h1>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "root");
		Statement s = conexion.createStatement();
		
		ResultSet listado = s.executeQuery ("SELECT * FROM graficas");
		
		while (listado.next()) {
			out.println(listado.getString("modelo") + " " + listado.getString ("marca") +  "<br>");
    }
		
		conexion.close();
	%>
  </body>
</html>

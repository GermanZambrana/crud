<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>Gestisimal - German Zambrana Ruiz</title>
  </head>
  <body>
    <% request.setCharacterEncoding("UTF-8"); %>
    <div class="container">
      <br><br>
      <div class="panel panel-info">
        <div class="panel-heading text-center">Modificación de grafica</div>
          <form method="get" action="grabagraficamodificado.jsp">
 
            <div class="form-group">
            <label>&nbsp;&nbsp;modelo &nbsp;</label><input type="text" size="35" name="modelo" value="<%= request.getParameter("modelo") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;marca &nbsp;</label><input type="text" size="35" name="marca" value="<%= request.getParameter("marca") %>">
             <label>&nbsp;&nbsp;precio&nbsp;</label><input type="text" size="35" name="precio" value="<%= request.getParameter("precio") %>">
            </div>
            <hr>
            &nbsp;&nbsp;<a href="index.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
          </form>

      </div>
      <div class="text-center">&copy; German Zambrana Ruiz</div>
    </div>
  </body>
</html>

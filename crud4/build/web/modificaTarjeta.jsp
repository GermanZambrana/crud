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
        <% request.setCharacterEncoding("UTF-8");%>
        <div class="container">
            <br><br>
            <div class="panel panel-info">
                <div class="names">Modificación de tarjeta</div>
                <form method="get" action="grabaTarjetaModificada.jsp">
                    <div class="names"> 
                        <label>&nbsp;&nbsp;ID:&nbsp;</label><input type="text" size="5" name="tarjeta_id" value="<%= Integer.valueOf(request.getParameter("tarjeta_id"))%>" readonly>
                    </div>
                    <div class="names">
                        <label>&nbsp;&nbsp;Tipo:&nbsp;</label><input type="text" size="35" name="tipo" value="<%= request.getParameter("tipo")%>">
                    </div>
                    <div class="names">
                        <label>&nbsp;&nbsp;Mara:&nbsp;</label><input type="text" size="5" name="marca" value="<%= request.getParameter("marca")%>">
                        <label>&nbsp;&nbsp;Modelo:&nbsp;</label><input type="text" size="5" name="modelo" value="<%= request.getParameter("modelo")%>">
                    </div>
                    <div class="names">
                        <label>&nbsp;&nbsp;Precio:&nbsp;</label><input type="text" name="precio" size="20" value="<%= Double.valueOf(request.getParameter("precio"))%>">
                    </div>
                    <hr>
                    &nbsp;&nbsp;<a href="index.jsp"><span></span>Cancelar</a>
                    <button type="submit"><span></span>Aceptar</button><br><br>
                </form>

            </div>

        </div>
    </body>
</html>

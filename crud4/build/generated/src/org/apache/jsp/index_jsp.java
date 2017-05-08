package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("        <title>Tarjeta Grafica - German Zambrana Ruiz</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <br><br>\t\t\t\n");
      out.write("            <div class=\"panel panel-primary\">\n");
      out.write("                <div class=\"uno\"><h2>Tarjeta Grafica</h2></div>\n");
      out.write("                ");

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud3", "root", "");
                    Statement s = conexion.createStatement();

                    ResultSet listado = s.executeQuery("SELECT * FROM tarjeta_grafica");
                
      out.write("\n");
      out.write("\n");
      out.write("                <table class=\"striped\">\n");
      out.write("                    <tr><th>ID</th><th>Tipo</th><th>Marca</th><th>Modelo</th><th>Precio</th></tr>\n");
      out.write("                    <form method=\"get\" action=\"grabaTarjeta.jsp\">\n");
      out.write("                        <tr><td><input type=\"text\" name=\"tarjeta_id\" size=\"5\"></td>\n");
      out.write("                            <td><input type=\"text\" name=\"tipo\" size=\"30\"></td>\n");
      out.write("                            <td><input type=\"text\" name=\"marca\" size=\"5\"></td>\n");
      out.write("                            <td><input type=\"text\" name=\"modelo\" size=\"5\"></td>\n");
      out.write("                            <td><input type=\"text\" name=\"precio\" size=\"20\"></td>\n");
      out.write("                            <td><button type=\"submit\" value=\"Añadir\" class=\"btn btn-primary\"><span class=\"glyphicon glyphicon-plus\"></span> Añadir</button></td><td></td></tr>           \n");
      out.write("                    </form>\n");
      out.write("                    ");

                        while (listado.next()) {
                            out.println("<tr><td>");
                            out.println(listado.getString("tarjeta_id") + "</td>");
                            out.println("<td>" + listado.getString("tipo") + "</td>");
                            out.println("<td>" + listado.getString("marca") + "</td>");
                            out.println("<td>" + listado.getString("modelo") + "</td>");
                            out.println("<td>" + listado.getString("precio") + "</td>");
                    
      out.write("\n");
      out.write("                    <td>\n");
      out.write("                        <form method=\"get\" action=\"modificaTarjeta.jsp\">\n");
      out.write("                            <input type=\"hidden\" name=\"tarjeta_id\" value=\"");
      out.print(listado.getString("tarjeta_id"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"tipo\" value=\"");
      out.print(listado.getString("tipo"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"marca\" value=\"");
      out.print(listado.getString("marca"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"modelo\" value=\"");
      out.print(listado.getString("modelo"));
      out.write("\">\n");
      out.write("                            <input type=\"hidden\" name=\"precio\" value=\"");
      out.print(listado.getString("precio"));
      out.write("\">\n");
      out.write("                            <button type=\"submit\"  class=\"btn btn-info\"><span class=\"glyphicon glyphicon-pencil\"></span> Modificar</button>\n");
      out.write("                        </form>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <form method=\"get\" action=\"borraTarjeta.jsp\">\n");
      out.write("                            <input type=\"hidden\" name=\"tarjeta_id\" value=\"");
      out.print(listado.getString("tarjeta_id"));
      out.write("\"/>\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-danger\"><span class=\"glyphicon glyphicon-remove\"></span> Eliminar</button>\n");
      out.write("                        </form>\n");
      out.write("                    </td></tr>\n");
      out.write("                    ");

                        } // while   

                        conexion.close();
                    
      out.write("\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <div class=\"uno\">CRUD</div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

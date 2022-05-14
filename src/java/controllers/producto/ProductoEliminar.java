package controllers.producto;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Producto;

@WebServlet(name = "ProductoEliminar", urlPatterns = {"/productoeliminar"})
public class ProductoEliminar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idprod = Integer.valueOf(request.getParameter("id"));
        
        Producto prod = new Producto();
        
        int resul = prod.eliminar(idprod);
        
        request.setAttribute("eliminar", resul);
        
        RequestDispatcher rd = request.getRequestDispatcher("views/producto/productoEliminar.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/producto/productoEliminar.jsp");
        rd.forward(request, response);
    }
}

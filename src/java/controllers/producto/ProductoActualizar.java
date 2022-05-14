package controllers.producto;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Producto;

@WebServlet(name = "ProductoActualizar", urlPatterns = {"/productoactualizar"})
public class ProductoActualizar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        Producto prod = new Producto();

        int id = Integer.parseInt(request.getParameter("id")); 
        
        Producto producto = prod.buscarByCodigo(id);
        
        request.setAttribute("producto", producto);
        
        RequestDispatcher rd = request.getRequestDispatcher("views/producto/productoActualizar.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //Recoger la descripcion a buscar
        String descripcion = request.getParameter("txtDescripcion");
        String categoria = request.getParameter("txtCategoria");
        double precio = Double.valueOf(request.getParameter("txtPrecio"));
        int id = Integer.valueOf(request.getParameter("txtId"));
        
        //Instanciar un objeto Producto con todos sus valores
        Producto prod = new Producto(id, descripcion, categoria, precio);

        int produc = prod.actualizar(prod);

        //Crear la variable EL para el cliente
        request.setAttribute("productoActualizado", produc);
        
        Producto producto = prod.buscarByCodigo(id);
        
        request.setAttribute("producto", producto);
        
        /*request.setAttribute("id", prod.getId());
        request.setAttribute("descripcion", prod.getDescripcion());
        request.setAttribute("categoria", prod.getCategoria());
        request.setAttribute("precio", prod.getPrecio());*/
        
        //Cargar la vista con el despachador
        RequestDispatcher rd = request.getRequestDispatcher("views/producto/productoActualizar.jsp");
        rd.forward(request, response);
    }
}

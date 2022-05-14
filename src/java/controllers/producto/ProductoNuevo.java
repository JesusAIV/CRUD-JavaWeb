package controllers.producto;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import models.Producto;


@WebServlet(name = "ProductoNuevo", urlPatterns = {"/productoNuevo"})
public class ProductoNuevo extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        /*
            Para la primera carga de la vista 
            se instancia un producto para enviar
        */
        //Instanciar un objeto Producto con todos sus valores
        Producto prod = new Producto(0, "---", "---", 0.0);
        
        //Crear la variable EL para enviar al cliente
        request.setAttribute("producto", prod);
        
        //Cargar la vista con el despachador
        RequestDispatcher rd = request.getRequestDispatcher("views/producto/productoNuevo.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //Recoger los valores del formulario
        int id = Integer.parseInt(request.getParameter("txtId"));
        String descripcion = request.getParameter("txtDescripcion");
        String categoria = request.getParameter("txtCategoria");
        double precio = Double.parseDouble(request.getParameter("txtPrecio"));
        
        //Instanciar un objeto Producto con todos sus valores
        Producto prod = new Producto(id, descripcion, categoria, precio);
        
        //Verificar si es 0
        if(id==0)
        {
            //Ejecutar el metodo Insertar y recoger el nuevo ID
            int nuevoId = prod.insertar(prod);

            //Actualizar el ID del objeto Producto
            prod.setId(nuevoId);
        }
        
        //Crear la variable EL para enviar al cliente
        request.setAttribute("producto", prod);
        
        //Cargar la vista con el despachador
        RequestDispatcher rd = request.getRequestDispatcher("views/producto/productoNuevo.jsp");
        rd.forward(request, response);
    }

}

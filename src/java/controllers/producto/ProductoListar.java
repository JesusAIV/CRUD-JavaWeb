package controllers.producto;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import java.util.ArrayList;
import models.Producto;

@WebServlet(name = "ProductoListar", urlPatterns = {"/producto"})
public class ProductoListar extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        /*
            Para la primera carga de la vista 
            se realiza una busqueda nula.
        */
        //Instanciar el modelo: Producto
        Producto prod = new Producto();
        //Ejecutar el metodo de busqueda por descripcion
        ArrayList<Producto> listaProductos = prod.buscarByDescripcion(null);
        
        //Crear la variable EL para el cliente
        request.setAttribute("listaProductos", listaProductos);
        
        //Cargar la vista con el despachador
        RequestDispatcher rd = request.getRequestDispatcher("views/producto/productoListar.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //Recoger la descripcion a buscar
        String desBuscar = request.getParameter("txtDesBuscar");
        
        //Instanciar el modelo: Producto
        Producto prod = new Producto();
        //Ejecutar el metodo de busqueda por descripcion
        ArrayList<Producto> listaProductos = prod.buscarByDescripcion(desBuscar);
        
        //Crear la variable EL para el cliente
        request.setAttribute("listaProductos", listaProductos);
        
        //Cargar la vista con el despachador
        RequestDispatcher rd = request.getRequestDispatcher("views/producto/productoListar.jsp");
        rd.forward(request, response);
    }

}

package controllers.cliente;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import models.Cliente;


@WebServlet(name = "ClienteNuevo", urlPatterns = {"/clienteNuevo"})
public class ClienteNuevo extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {

        Cliente client = new Cliente(0, "---", "---", "---", "---");
        
        request.setAttribute("cliente", client);

        RequestDispatcher rd = request.getRequestDispatcher("views/cliente/clienteNuevo.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        //Recoger los valores del formulario
        int id = Integer.parseInt(request.getParameter("txtId"));
        String nombre = request.getParameter("txtNombre");
        String numruc = request.getParameter("txtNumruc");
        String direccion = request.getParameter("txtDireccion");
        String telefono = request.getParameter("txtTelefono");

        Cliente client = new Cliente(id, nombre, numruc, direccion, telefono);
        
        if(id==0)
        {

            int nuevoId = client.insertar(client);

            client.setId(nuevoId);
        }
        
        request.setAttribute("cliente", client);

        RequestDispatcher rd = request.getRequestDispatcher("views/cliente/clienteNuevo.jsp");
        rd.forward(request, response);
    }

}

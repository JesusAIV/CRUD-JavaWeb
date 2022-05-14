package controllers.cliente;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.RequestDispatcher;
import java.util.ArrayList;
import models.Cliente;

@WebServlet(name = "ClienteListar", urlPatterns = {"/cliente"})
public class ClienteListar extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {

        Cliente client = new Cliente();

        ArrayList<Cliente> listaClientes = client.buscarByDescripcion(null);

        request.setAttribute("listaClientes", listaClientes);

        RequestDispatcher rd = request.getRequestDispatcher("views/cliente/clienteListar.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {

        String desBuscar = request.getParameter("txtDesBuscar");

        Cliente client = new Cliente();

        ArrayList<Cliente> listaClientes = client.buscarByDescripcion(desBuscar);

        request.setAttribute("listaClientes", listaClientes);

        RequestDispatcher rd = request.getRequestDispatcher("views/cliente/clienteListar.jsp");
        rd.forward(request, response);
    }

}

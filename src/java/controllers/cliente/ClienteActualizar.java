package controllers.cliente;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Cliente;

@WebServlet(name = "ClienteActualizar", urlPatterns = {"/clienteactualizar"})
public class ClienteActualizar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        Cliente client = new Cliente();

        int id = Integer.parseInt(request.getParameter("id")); 
        
        Cliente cliente = client.buscarByCodigo(id);
        
        request.setAttribute("cliente", cliente);
        
        RequestDispatcher rd = request.getRequestDispatcher("views/cliente/clienteActualizar.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {

        int id = Integer.parseInt(request.getParameter("txtId"));
        String nombre = request.getParameter("txtNombre");
        String numruc = request.getParameter("txtNumruc");
        String direccion = request.getParameter("txtDireccion");
        String telefono = request.getParameter("txtTelefono");

        Cliente client = new Cliente(id, nombre, numruc, direccion, telefono);

        int clien = client.actualizar(client);

        request.setAttribute("clienteActualizado", clien);
        
        Cliente cliente = client.buscarByCodigo(id);
        
        request.setAttribute("cliente", cliente);

        RequestDispatcher rd = request.getRequestDispatcher("views/cliente/clienteActualizar.jsp");
        rd.forward(request, response);
    }
}

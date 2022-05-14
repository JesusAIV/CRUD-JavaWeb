package controllers.cliente;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Cliente;

@WebServlet(name = "ClienteEliminar", urlPatterns = {"/clienteeliminar"})
public class ClienteEliminar extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idclient = Integer.valueOf(request.getParameter("id"));
        
        Cliente client = new Cliente();
        
        int resul = client.eliminar(idclient);
        
        request.setAttribute("eliminar", resul);
        
        RequestDispatcher rd = request.getRequestDispatcher("views/cliente/clienteEliminar.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("views/cliente/clienteEliminar.jsp");
        rd.forward(request, response);
    }
}

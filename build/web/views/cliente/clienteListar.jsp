<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="models.Cliente" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Cliente</title>
    </head>
    <body class="gestion">
        <h1>Gestion de Clientes</h1>
        <hr>
        <div class="nuevo">
            <a href="productoNuevo">Nuevo Cliente</a>
        </div>
        <hr>
        <form method="post" class="busqueda">
            <table>
                <tr>
                    <td>Descripcion buscar:</td>
                    <td><input type="text" name="txtDesBuscar" value=""/></td>
                    <td><input type="submit" value="Buscar"/></td>
                </tr>
            </table>
        </form>
        <table class="tabla">
            <tr>
                <th>CODIGO</th>
                <th>NOMBRE</th>
                <th>NUMERO RUC</th>
                <th>DIRECCION</th>
                <th>TELEFONO</th>
            </tr>
            <%
            ArrayList<Cliente> listaClientes = (ArrayList<Cliente>) request.getAttribute("listaClientes");
            for(Cliente client : listaClientes)
            {
            %>
            <tr>
                <td><%=client.getId()%></td>
                <td><%=client.getNombre()%></td>
                <td><%=client.getNumruc()%></td>
                <td><%=client.getDireccion()%></td>
                <td><%=client.getTelefono()%></td>
                <td><a class="editar" href="clienteactualizar?id=<%=client.getId()%>">Editar</a></td>
                <td><a class="eliminar" href="clienteeliminar?id=<%=client.getId()%>">Eliminar</a></td>
            </tr>
            <%
            }
            %>

        </table>
    </body>
</html>

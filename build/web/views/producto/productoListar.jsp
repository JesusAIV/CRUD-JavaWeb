<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="models.Producto" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Producto</title>
    </head>
    <body class="gestion">
        <h1>Gestion de Productos</h1>
        <hr>
        <div class="nuevo">
            <a href="productoNuevo">Nuevo PRODUCTO</a>
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
                <th>DESCRIPCION</th>
                <th>CATEGORIA</th>
                <th>PRECIO S/.</th>
            </tr>
            <%
            ArrayList<Producto> listaProductos = (ArrayList<Producto>) request.getAttribute("listaProductos");
            //FOR EACH: Recorrer toda la lista de productos
            for(Producto prod : listaProductos)
            {
            %>
            <tr>
                <td><%=prod.getId()%></td>
                <td><%=prod.getDescripcion()%></td>
                <td><%=prod.getCategoria()%></td>
                <td><%=prod.getPrecio()%></td>
                <td><a class="editar" href="productoactualizar?id=<%=prod.getId()%>">Editar</a></td>
                <td><a class="eliminar" href="productoeliminar?id=<%=prod.getId()%>">Eliminar</a></td>
            </tr>
            <% 
            }
            %>
        </table>
    </body>
</html>

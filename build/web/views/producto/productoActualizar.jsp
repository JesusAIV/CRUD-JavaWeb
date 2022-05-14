<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Actualizar Producto</title>
    </head>
    <body class="body">
        <div class="container">
            <div class="form-group">
                <h3>Actualizar Producto</h3>
                <form method="post">
                    <table>
                        <tr>
                            <td>CODIGO:</td>
                            <td><input type="text" name="txtId" value="${producto.getId()}" readonly/></td>
                        </tr>
                        <tr>
                            <td>DESCRIPCION:</td>
                            <td><input type="text" name="txtDescripcion" value="${producto.getDescripcion()}"/></td>
                        </tr> 
                        <tr>
                            <td>CATEGORIA:</td>
                            <td><input type="text" name="txtCategoria" value="${producto.getCategoria()}"/></td>
                        </tr>
                        <tr>
                        <td>PRECIO:</td>
                            <td><input type="text" name="txtPrecio" value="${producto.getPrecio()}"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Actualizar"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><a href="producto">Regresar</a></td>
                        </tr>
                    </table>
                </form> 
            </div>
        </div>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css">
        <title>Producto Nuevo</title>
    </head>
    <body class="body">
        <div class="container">
            <div class="form-goup">
                <form method="post">
                    <h3>Agregar Producto</h3> 
                    <table>
                        <tr>
                            <td>CODIGO:</td>
                            <td><input type="text" name="txtId" value="${producto.getId()}" readonly="true"/></td>
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
                            <td><input class="iniciar" type="submit" value="Guardar"/></td>
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

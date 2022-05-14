package models;

/*
//Todas las clases de la libreria para instrucciones SQL
import java.sql.*;
*/
//Importar los necesario para instrucciones SQL (recomendable)
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    //Propiedades
    //Metodo
    public static Connection conectarMySQL()
    {
        //Declarar una variable para recibir la onexion
        Connection cnx;
        //Para toda operacion con BD se requiere un Try-Catch
        try
        {
            /*
                Agregar el controlador de conexion (JAR) 
                en mis: Libraries
            */
            //Cargar el controlador
            Class.forName("com.mysql.jdbc.Driver");
            //Crear variables: parametros para la conexion
            String cadena = "jdbc:mysql://127.0.0.1:3306/bdMarket303";
            String usuario = "root";
            String clave = "";
            //Abrir la conexion y recibirla en una variable
            cnx = DriverManager.getConnection(cadena,usuario,clave); 
      
        }
        catch(SQLException | ClassNotFoundException exp)
        {
            //Codigo que se ejecuta cuando exista un error
            cnx = null;
        }
        
        //Retornar el resultado
        return cnx;
    }
}

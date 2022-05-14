package models;

import java.util.ArrayList;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Producto 
{
    //Propiedades
    private int id;
    private String descripcion;
    private String categoria;
    private double precio;
    
    //Encapsulados
    public int getId(){
        return this.id;
    }
    public void setId(int valor){
        this.id = valor;
    }
    
    public String getDescripcion(){
        return this.descripcion;
    }
    public void setDescripcion(String valor){
        this.descripcion = valor;
    }
    
    public String getCategoria(){
        return this.categoria;
    }
    public void setCategoria(String valor){
        this.categoria = valor;
    }
    
    public double getPrecio(){
        return this.precio;
    }
    public void setPrecio(double valor){
        this.precio = valor;
    }
    
    //Constructores
    public Producto() {}
    public Producto(int _id, String _descripcion, String _categoria, double _precio)
    {
        this.id = _id;
        this.descripcion = _descripcion;
        this.categoria = _categoria;
        this.precio = _precio;
    }
    
    //Metodos (CRUD: CREATE-READ-UPDATE-DELETE)
    
    public Producto buscarByCodigo(int idBuscar)
    {
        //Instanciar un Producto
        Producto producto = new Producto();
        
        try
        {
            //Conectar con la BD
            Connection cnx = Conexion.conectarMySQL();
            //Preparar la sentencia SQL
            PreparedStatement ps = 
                    cnx.prepareStatement("select * from producto where id=?;");
            //Asignar valor al parametro #1
            ps.setInt(1, idBuscar);
            //Ejecutar la sentencia
            ResultSet rs = ps.executeQuery();
            //Mover el puntero y verificar si existe fila
            if(rs.next())
            {
                //Leer los valores de la fila
                producto.id = rs.getInt("id");
                producto.descripcion = rs.getString("descripcion");
                producto.categoria = rs.getString("categoria");
                producto.precio = rs.getDouble("precio");
            }else{
                producto.id = 0;
                producto.descripcion = "No existe";
                producto.categoria = "";
                producto.precio = 0.0;
            }
                    
        }catch(SQLException exp)
        {
            producto.id = 0;
            producto.descripcion = "Error";
            producto.categoria = "";
            producto.precio = 0.0;
        }
        
        //Retornar el resultado
        return producto;
    }
    public ArrayList<Producto> buscarByDescripcion(String desBuscar)
    {
        //Declarar un ArrayList para recoger cada producto
        ArrayList<Producto> productos = new ArrayList<Producto>();
        try{
            //Conectar con la BD
            Connection cnx = Conexion.conectarMySQL();
            //Preparar la sentencia SQL
            PreparedStatement ps = 
                    cnx.prepareStatement("select * from producto where descripcion like concat('%',?,'%');;");
            //Asignar valor al parametro #1
            ps.setString(1, desBuscar);
            //Ejecutar la sentencia
            ResultSet rs = ps.executeQuery(); // SELECT
            //Mover el puntero y verificar si existe fila
            while(rs.next())
            {
                //Recoger cada fila (producto)
                //Instanciar el producto
                Producto producto = new Producto();
                //Leer los valores de la fila
                producto.id = rs.getInt("id");
                producto.descripcion = rs.getString("descripcion");
                producto.categoria = rs.getString("categoria");
                producto.precio = rs.getDouble("precio");
                
                //Agregar al array list cada producto
                productos.add(producto);
                
            }
            
            
        }catch(SQLException exp)
        {
            
        }
        
        //Retornar el resultado
        return productos;
    }
    public int insertar(Producto producto)
    {
        int nuevoId;
        try
        {
            //Conectar con la BD
            Connection cnx = Conexion.conectarMySQL();
            //Preparar la sentencia SQL
            PreparedStatement ps = 
                    cnx.prepareStatement("insert into producto (descripcion,categoria,precio) "
                            + "values (?,?,?)");
            //Asignar valor a los parametros
            ps.setString(1,producto.getDescripcion());
            ps.setString(2,producto.getCategoria());
            ps.setDouble(3,producto.getPrecio());
            //Ejecutar la sentencia SQL
            ps.executeUpdate(); // UPDATE - INSERT - DELETE
            
            //Recuperar el nuevo ID generado
            ps = cnx.prepareStatement("select max(id) as nuevoId from producto "
                    + "where descripcion=?;");
            //Asignar valor a los parametros
            ps.setString(1,producto.getDescripcion());
            //Ejecutar la sentencia SQL
            ResultSet rs = ps.executeQuery();
            //Mover el puntero
            if(rs.next())
            {
                //Si existe fila
                nuevoId = rs.getInt("nuevoId");
            }else{
                //Si no existe fila
                nuevoId = 0;
            }
            
        }catch(SQLException exp)
        {
            //Si existio error de excepcion
            nuevoId = -1;
        }
        //Retornar el nuevo ID
        return nuevoId;
    }
    public int actualizar(Producto producto)
    {
        int estado = 0;
        try{
            Connection cnx = Conexion.conectarMySQL();
            PreparedStatement ps = 
                    cnx.prepareStatement("update producto set descripcion=?,categoria=?,precio=? where id=?");

            ps.setString(1,producto.getDescripcion());
            ps.setString(2,producto.getCategoria());
            ps.setDouble(3,producto.getPrecio());
            ps.setInt(4,producto.getId());
            
            estado = ps.executeUpdate();
            
        }catch(SQLException exp){
            
        }
        
        return estado;
    }
    public int eliminar(int id)
    {
        int resultado = 0;
        try{
            Connection cnx = Conexion.conectarMySQL();
            PreparedStatement ps = 
                    cnx.prepareStatement("delete from producto where id="+id);
            
            resultado = ps.executeUpdate();
            
        }catch(SQLException exp){
            
        }      
        return resultado;        
    }
}

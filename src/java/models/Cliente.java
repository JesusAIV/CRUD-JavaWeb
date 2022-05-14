package models;

import java.util.ArrayList;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Cliente {
    
    //Propiedades
    private int id;
    private String nombre;
    private String numruc;
    private String direccion;
    private String telefono;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNumruc() {
        return numruc;
    }

    public void setNumruc(String numruc) {
        this.numruc = numruc;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    public Cliente(){}
    
    public Cliente(int id, String nombre, String numruc, String direccion, String telefono) {
        this.id = id;
        this.nombre = nombre;
        this.numruc = numruc;
        this.direccion = direccion;
        this.telefono = telefono;
    }
    
    public Cliente buscarByCodigo(int idBuscar)
    {
        Cliente cliente = new Cliente();
        
        try
        {
            //Conectar con la BD
            Connection cnx = Conexion.conectarMySQL();
            //Preparar la sentencia SQL
            PreparedStatement ps = 
                    cnx.prepareStatement("select * from cliente where id=?;");
            //Asignar valor al parametro #1
            ps.setInt(1, idBuscar);
            //Ejecutar la sentencia
            ResultSet rs = ps.executeQuery();
            //Mover el puntero y verificar si existe fila
            if(rs.next())
            {
                //Leer los valores de la fila
                cliente.id = rs.getInt("id");
                cliente.nombre = rs.getString("nombre");
                cliente.numruc = rs.getString("numruc");
                cliente.direccion = rs.getString("direccion");
                cliente.telefono = rs.getString("telefono");
            }else{
                cliente.id = 0;
                cliente.nombre = "No existe";
                cliente.numruc = "";
                cliente.direccion = "";
                cliente.telefono = "";
            }
                    
        }catch(SQLException exp)
        {
            cliente.id = 0;
            cliente.nombre = "Error";
            cliente.numruc = "";
            cliente.direccion = "";
            cliente.telefono = "";
        }
        
        //Retornar el resultado
        return cliente;
    }
    public ArrayList<Cliente> buscarByDescripcion(String desBuscar)
    {
        ArrayList<Cliente> clientes = new ArrayList<Cliente>();
        try{
            //Conectar con la BD
            Connection cnx = Conexion.conectarMySQL();
            //Preparar la sentencia SQL
            PreparedStatement ps = 
                    cnx.prepareStatement("select * from cliente where nombre like concat('%',?,'%');;");
            //Asignar valor al parametro #1
            ps.setString(1, desBuscar);
            //Ejecutar la sentencia
            ResultSet rs = ps.executeQuery(); // SELECT
            //Mover el puntero y verificar si existe fila
            while(rs.next())
            {

                Cliente cliente = new Cliente();
                //Leer los valores de la fila
                cliente.id = rs.getInt("id");
                cliente.nombre = rs.getString("nombre");
                cliente.numruc = rs.getString("numruc");
                cliente.direccion = rs.getString("direccion");
                cliente.telefono = rs.getString("telefono");
                
                //Agregar al array list cada producto
                clientes.add(cliente);
                
            }
            
            
        }catch(SQLException exp)
        {
            
        }
        
        //Retornar el resultado
        return clientes;
    }
    public int insertar(Cliente cliente)
    {
        int nuevoId;
        try
        {
            //Conectar con la BD
            Connection cnx = Conexion.conectarMySQL();
            //Preparar la sentencia SQL
            PreparedStatement ps = 
                    cnx.prepareStatement("insert into cliente (nombre, numruc, direccion, telefono)"
                            + "values (?,?,?,?)");
            //Asignar valor a los parametros
            ps.setString(1, cliente.getNombre());
            ps.setString(2, cliente.getNumruc());
            ps.setString(3, cliente.getDireccion());
            ps.setString(4, cliente.getTelefono());
            //Ejecutar la sentencia SQL
            ps.executeUpdate(); // UPDATE - INSERT - DELETE
            
            //Recuperar el nuevo ID generado
            ps = cnx.prepareStatement("select max(id) as nuevoId from cliente "
                    + "where nombre=?;");
            //Asignar valor a los parametros
            ps.setString(1, cliente.getNombre());
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
    public int actualizar(Cliente cliente)
    {
        int estado = 0;
        try{
            Connection cnx = Conexion.conectarMySQL();
            PreparedStatement ps = 
                    cnx.prepareStatement("update cliente set nombre=?, numruc=?, direccion=?, telefono=? where id=?");

            ps.setString(1, cliente.getNombre());
            ps.setString(2, cliente.getNumruc());
            ps.setString(3, cliente.getDireccion());
            ps.setString(4, cliente.getTelefono());
            ps.setInt(5, cliente.getId());
            
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
                    cnx.prepareStatement("delete from cliente where id="+id);
            
            resultado = ps.executeUpdate();
            
        }catch(SQLException exp){
            
        }      
        return resultado;        
    }
    
}

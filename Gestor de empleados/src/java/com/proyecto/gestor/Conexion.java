package com.proyecto.gestor;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Trabajo
 */
public class Conexion {

    private final String baseDatos = "gestionempleado";
    private final String servidor = "jdbc:mysql://localhost/" + baseDatos;
    private final String usuario = "root";
    private final String clave = "David%2006";
    
    public Connection conectar(){
        Connection cn = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(servidor, usuario, clave);
        }catch(Exception e){
            System.out.println("Error al conectar" + e.getMessage());
        }
        return cn;
    }
            
}


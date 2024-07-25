/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.proyecto.gestor;

/**
 *
 * @author Trabajo
 */
public class Comprobar {
    public static void main(String[] args){
        Conexion c = new Conexion();
        if(c.conectar()!= null){
            System.out.println("conexion es correcta");
        }else{
            System.out.println("conexion erronea");
        }
    }
}

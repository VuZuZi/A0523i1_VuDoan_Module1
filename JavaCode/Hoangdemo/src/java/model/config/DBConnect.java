/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public interface DBConnect {
    public static String serverName = "localhost"; 
    public static String dbName = "wish_1";
    public static String portNumber = "1433";
    public static String userID = "sa";
    public static String password = "sa"; 
    
    public static Connection getConnection(){
        try {
            String url = "jdbc:sqlserver://"+serverName+":"+portNumber +";databaseName="+dbName;        
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(url, userID, password);
        } catch (Exception e) {
            Logger.getLogger(DBConnect.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }   
    
//    Test connection
    public static void main(String[] args) {
        try{
            if(DBConnect.getConnection()!=null) System.out.println("Connect successfully!");
            else System.out.println("Connect failed!");
        } catch (Exception ex) {
            System.out.println(ex); 
            System.out.println("Error at model.DBContext.DBContext().getConnertion()");
        }        
    }
}
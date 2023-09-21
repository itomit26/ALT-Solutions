/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.group11.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionPool {
    static Connection conn;
    
    public static Connection getConnection()throws SQLException, ClassNotFoundException {
        try{
            String driver = "com.mysql.cj.jdbc.Driver";
            Class.forName(driver);
            
            String url = "jdbc:mysql://localhost:3306/estore?serverTimezone=UTC";
            conn = (Connection) DriverManager.getConnection(url,"root","Itomit@26");
        
        } catch (SQLException e) {
            System.out.println("SQLException" + e.getMessage());
            
        }
        
        return conn;
    }
    
}

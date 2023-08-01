/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author dinhv
 */
public class Product {
    private String id;
    private String name;
    private String unit;
    private double price;

    public Product() {
    }

    public Product(String id, String name, String unit, double price) {
        this.id = id;
        this.name = name;
        this.unit = unit;
        this.price = price;
    }
    
    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public void newProduct(Product p) {
        String sql = "INSERT INTO Product_YourID (ProductID, ProductName, Unit, Price) VALUES (?, ?, ?, ?)";

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/PRJ321_YourID", "username", "password");
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            
            stmt.setString(1, p.getProductID());
            stmt.setString(2, p.getProductName());
            stmt.setString(3, p.getUnit());
            stmt.setDouble(4, p.getPrice());

            stmt.executeUpdate();
            System.out.println("Product inserted successfully.");
        } catch (SQLException e) {
            System.out.println("Error inserting product: " + e.getMessage());
        }
    }

    // Getter and Setter methods

    // ...

    private String getProductID() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getProductName() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getProductId() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}







    
    
}

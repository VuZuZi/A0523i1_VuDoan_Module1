/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Account;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author dinhv
 */
public class loginDAO {
     // load dữ liệu từ db lên
    Connection conn = null; // kết nối với sql server 
    PreparedStatement ps = null; // ném câu lệnh query sang sql
    ResultSet rs = null; // nhận kq trả về 
    
    public static void main(String[] args) {
        loginDAO ld = new loginDAO();
        
        System.out.println(ld.checkLogin("admin", "admin"));
    }
    
    public Account checkLogin(String user, String pass){
    try {
        String query = "select * from Account where Username = ? and Password = ?";
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, user);
        ps.setString(2, pass);
        rs = ps.executeQuery(); // Thực thi câu lệnh và gán kết quả vào rs
        
        while(rs.next()){
            Account a = new Account(rs.getString(1), rs.getString(2));
            return a; // Trả về đối tượng Account khi tìm thấy kết quả
        }
                rs.close();
            
                ps.close();
            
                conn.close();
    } catch (Exception e) {
        System.out.println(e);
        System.out.println("loi login dao");
    }
//    } finally {
//        // Đóng các đối tượng Connection, PreparedStatement và ResultSet
//        try {
//            if (rs != null) {
//                rs.close();
//            }
//            if (ps != null) {
//                ps.close();
//            }
//            if (conn != null) {
//                conn.close();
//            }
//        } catch (Exception ex) {
//            System.out.println(ex);
//        }
//    }
    return null; // Trả về null nếu không tìm thấy kết quả
}

}

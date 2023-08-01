package dao;

/**
 * @author dinhvu
 */
import context.DBContext;
import entity.Employee;
import entity.NguoiThan;
import entity.Room;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO {

    // load dữ liệu từ db lên
    static Connection conn = null; // kết nối với sql server 
    static PreparedStatement ps = null; // ném câu lệnh query sang sql
    static ResultSet rs = null; // nhận kq trả về 
    
//    public void deleteEmployee(String id){
////        String query = "delete from Employee " +
////"where ID = ?";
////        try {
////            conn = new DBContext().getConnection();// mở kết nối với sql
////            ps = conn.prepareCall(query);
////            ps.setString(1, id);
////            ps.executeUpdate();
////        } catch (Exception e) {
////        }
//        
//    }
    
    public List<Room> getInforRoom(){
        List<Room> listR = new ArrayList<>();
        
        String query = "select * from Room";
        try {
            conn = new DBContext().getConnection();// mở kết nối với sql
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while (rs.next()) {
            listR.add(new Room(
                    rs.getInt(1),//idr
                    rs.getString(2),//name
                    rs.getInt(3))//idTP
            );
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("---Loi getInforR tuwf DAO get Room-----");
        }
        return listR;
    }
    public List<Employee> getAllEmployee() {
        List<Employee> list = new ArrayList<>();
        String query = "select * from Employee";
        try {
            conn = new DBContext().getConnection();// mở kết nối với sql
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while (rs.next()) {
//                [ID]   ,[Name]  ,[Gender] ,[Phone]   ,[Email]    ,[Address]  ,[BirthDay] ,[StartDate],[IdR]     ,[IdP]
//int id, String name, String gender, String phone, String mail, String address, Date birth, Date startDate, /int idRoom, int idPeople, String img
            list.add(new Employee(
                        rs.getInt(1),//id
                        rs.getString(2),//name
                        rs.getString(3),//gender
                        rs.getString(4),//phone
                        rs.getString(5),//phone
                        rs.getString(6),//phone
                        rs.getDate(7),//phone
                        rs.getDate(8),//phone
                        rs.getInt(9),//phone
                        rs.getInt(10),//phone
                        rs.getString(11)));
            }
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("---Loi getInfor tuwf DAO-----");
        }
        return list;
    }
public NguoiThan getNguoiThanbyId(String idP) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        NguoiThan p = null;

        try {
            conn = DBContext.getConnection();
            String query = "SELECT * FROM NguoiThan as p\n" +
"WHERE p.IdP = ?";
            ps = conn.prepareStatement(query);
            ps.setString(1, idP);
            rs = ps.executeQuery();

            if (rs.next()) {
                int id = rs.getInt("IdP");
                String name = rs.getString("Name");
                String phone = rs.getString("Phone");
                String add = rs.getString("Address");
                
                p = new NguoiThan(id, name, phone, add);
            }
        } catch (Exception e) {
            System.out.println(e);
        } finally {
            // Đóng tất cả các kết nối, statement và resultset
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }

        return p;
}
    public static void update(Employee ep) {
         String query = "UPDATE [Employee]\n" +
"SET [Name] = ?,\n" +
"    [Gender] = ?,\n" +
"    [Phone] = ?,\n" +
"    [Email] = ?,\n" +
"    [Address] = ?,\n" +
"    [BirthDay] = ?,\n" +
"    [StartDate] = ?,\n" +
"    [IdR] = ?,\n" +
"    [idP] = ?,\n" +
"    [img] = ?\n" +
"WHERE [ID] = ?;";
        try {
            Connection conn = DBContext.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, ep.getName());
            ps.setString(2, ep.getGender());
            ps.setString(3, ep.getPhone());
            ps.setString(4, ep.getMail());
            ps.setString(5, ep.getAddress());
            ps.setDate(6, ep.getBirth());
            ps.setDate(7, ep.getStartDate());
            ps.setInt(8, ep.getIdRoom());
            ps.setInt(9, ep.getIdPeople());
            ps.setString(10, ep.getImg());
            ps.setInt(11, ep.getId());
            ps.executeUpdate();
            conn.close();
            ps.close();
            
        } catch (Exception e) {
        }
        
        
    }

    public static void createEmp(Employee ep) {
        try (Connection conn = DBContext.getConnection()) {
            String query = "Insert into Employee (ID, Name, Gender, Phone,"
                    + " Email, Address, BirthDay, StartDate, IdR, IdP , img) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, ep.getId());
            ps.setString(2, ep.getName());
            ps.setString(3, ep.getGender());
            ps.setString(4, ep.getPhone());
            ps.setString(5, ep.getMail());
            ps.setString(6, ep.getAddress());
            ps.setDate(7,ep.getBirth());
            ps.setDate(8, ep.getStartDate());
            ps.setInt(9, ep.getIdRoom());
            ps.setInt(10, ep.getIdPeople());
            ps.setString(11, ep.getImg());
            ps.executeUpdate();
            conn.close();
            ps.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("---Loi getEm tu DAO-----");
        }
    }
    

    public static void deleteEmp(String id) {
        try (
            Connection conn = DBContext.getConnection()) {
            String query = "Delete from Employee where ID = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
//            conn.close();
//            ps.close();
        } catch (Exception e) {
            System.out.println(e);
            System.out.println("---Loi delete tu DAO-----");
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Employee> list = dao.getAllEmployee();
        for (Employee e : list) {
            System.out.println(e);
        }
        dao.deleteEmp("115");
        for (Employee e : list) {
            System.out.println(e);
        }
    }
}

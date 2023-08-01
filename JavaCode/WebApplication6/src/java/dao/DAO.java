
package dao;
/**
 * @author dinhvu
 */
import context.DBContext;
import entity.Employee;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
public class DAO {
    // load dữ liệu từ db lên
    Connection conn = null; // kết nối với sql server 
    PreparedStatement ps = null; // ném câu lệnh query sang sql
    ResultSet rs = null; // nhận kq trả về 
    
    public List<Employee> getAllEmployee(){  //${dao.allEmployee} // <jsp:useBean id="dao" class="dao.DAO" scope="request"></jsp:useBean>
        List<Employee> list = new ArrayList<>();
        String query = "select * from Employee";
        try {
            conn = new DBContext().getConnection();// mở kết nối với sql
            ps = conn.prepareCall(query);
            rs = ps.executeQuery();
            while(rs.next()){
//                [ID]   ,[Name]  ,[Gender] ,[Phone]   ,[Email]    ,[Address]  ,[BirthDay] ,[StartDate],[IdR]     ,[IdP]
//int id, String name, String gender, String phone, String mail, String address, Date birth, Date startDate, /int idRoom, int idPeople, String img
                list.add(new Employee(
                                    rs.getInt(1),//id
                                    rs.getString(2),//name
                                    rs.getString(3),//gender
                                    rs.getString(4),//phone
                                    rs.getString(5),//mail
                                    rs.getString(6),//add
                                    rs.getDate(7),//date
                                    rs.getDate(8),//date
                                    rs.getInt(9),
                                    rs.getInt(10),
                                    rs.getString(11))//img
//                                    rs.getString(6))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    
    
    public static String newCourse(Employee c) {
        try ( Connection con = DatabaseInfo.getConnect()) {
            PreparedStatement stmt = con.prepareStatement("Insert into Course values(?,?,?,?)");
            stmt.setString(1, c.getCourseID());
            stmt.setString(2, c.getSubjectID());
            stmt.setString(3, c.getCourseName());
            stmt.setString(4, c.getCourseGroup());

//            return c.getCourseID()+" | "+c.getSubjectID()+" | "+c.getCourseName()+" | "+c.getCourseGroup();
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return rs.getString("id");
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "er";
    }

    
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Employee> list = dao.getAllEmployee();
        for (Employee e : list) {
            System.out.println(e);
        }
    }
}

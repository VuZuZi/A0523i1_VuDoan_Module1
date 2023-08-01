
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
    
    public List<Employee> getAllEmployee(){
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
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Employee> list = dao.getAllEmployee();
        for (Employee e : list) {
            System.out.println(e);
        }
    }
}

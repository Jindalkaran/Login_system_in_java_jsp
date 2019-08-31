package bean;
import java.sql.*;

public class LoginDao {
	static String uName;
	public static boolean validate(LoginBean bean)
	{
		boolean status=false;
		try {
			Connection con=ConnectionProvider.getCon();
			PreparedStatement ps=con.prepareStatement("select * from registered_users where Email=? and Password=?");
			ps.setString(1, bean.getEmail());
			ps.setString(2, bean.getPass());
			
			
			ResultSet rs=ps.executeQuery();
			status=rs.next();
			uName=rs.getString(1);
			}catch(Exception e) {}
		
		return status;
	}

}

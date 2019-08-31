package bean;
import java.sql.*;

import static bean.Provider.*;
//class that connects with database and returs conn object by reading the database details from Provider.java
public class ConnectionProvider {
	
	static Connection con=null;
	static 
	{
		
		try
		{
		Class.forName(DRIVER);
		con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
		}catch(Exception e) {}
	}
	
	public static Connection getCon() {
		return con;
	}

}

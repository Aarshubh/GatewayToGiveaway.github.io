package portal.dbtask;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {

	private static Connection con;
	
	public static void closeConnection()
	{
		try {
			if(con!=null)
				con.close();			
		}
		
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		
		
	}
	
	
	
	
	public static Connection createConnection()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/lifelinedb","root","root");
		}
		catch(SQLException|ClassNotFoundException cse)
		{
			cse.printStackTrace();
		}
		
		return con;
	}
	
	
	
	
	
//	public static void main(String[] args)
//	{
//		Connection cn=createConnection();
//		System.out.println(cn);
//	}
	
}

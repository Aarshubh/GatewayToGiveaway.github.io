package portal.dbtask;
import java.sql.*;

import com.mysql.cj.xdevapi.Result;

public class DonorTask  {

	private static Connection con;
	private static PreparedStatement ps;
	private static ResultSet rs;
	

	public static ResultSet donor_views(String sql)
	{
		con=DbConnection.createConnection();
		try {
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			
		}
		catch(SQLException se) {
			se.printStackTrace();
		}
		return rs;
	}
	
	
	
	
	
	
	public static ResultSet getData(String sql,String id)
	{
		
		con=DbConnection.createConnection();
		
		
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, id);
			System.out.println(ps);
			rs=ps.executeQuery();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	
	
}

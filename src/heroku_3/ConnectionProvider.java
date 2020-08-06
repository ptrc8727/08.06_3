package heroku_3;
import java.sql.*;

public class ConnectionProvider {

	private static Connection con=null;  
	static{  
	try{  
	Class.forName("com.mysql.jdbc.Driver");  
	con=DriverManager.getConnection("jdbc:mysql://www.db4free.net:3306/skek_000","hjm1997","Littlefireptrc@8727");  
	}catch(Exception e){}  
	}  
	  
	public static Connection getCon(){  
	    return con;  
	}
	
}

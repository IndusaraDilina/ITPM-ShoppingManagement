package item.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class DeleteItem {

	public int deleteItem(int id) throws SQLException{
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingmanagement","root","");
		Statement st =con.createStatement();
		String query="delete from item where id ="+id;
		int rs=st.executeUpdate(query);
		return rs;	
	}
	
}

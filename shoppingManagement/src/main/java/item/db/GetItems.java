package item.db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetItems {
	public ResultSet getDetails() throws SQLException {
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingmanagement","root","");
		Statement st =con.createStatement();
		String query="select * from item;";
		ResultSet rs = st.executeQuery(query);
		return rs;
	}
	
	public ResultSet getDetails(String ids) throws SQLException {
		int id =Integer.parseInt(ids);
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingmanagement","root","");
		Statement st =con.createStatement();
		String query="select * from item where id=" + id;
		ResultSet rs = st.executeQuery(query);
		return rs;
	}
	
	public ResultSet searchResult(String text) throws SQLException {
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingmanagement","root","");
		Statement st =con.createStatement();
		String query="select * from item WHERE itemCode LIKE '%" + text + "%' OR itemName LIKE '%" + text + "d%';";
		ResultSet rs = st.executeQuery(query);
		
		return rs;
	}
	
}

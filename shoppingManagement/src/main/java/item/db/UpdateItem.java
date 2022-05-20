package item.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import items.Item;

public class UpdateItem {
	public void updateDetails(Item item,String ids) throws SQLException {
		int id = Integer.parseInt(ids);
		 String itemCode = item.getItemCode();
		 String itemName = item.getItemName();
		 String itemDescription = item.getItemDescription();
		 String price = item.getPrice();
		 String quantity = item.getQuantity();
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingmanagement","root","");
		Statement st =con.createStatement();
		String query="UPDATE item SET itemCode='"+itemCode+"',itemName='"+itemName+"',itemDescription='"+itemDescription+"',price='"+price+"',quantity='"+quantity+"' where id="+id;
		st.executeUpdate(query);
	}
}

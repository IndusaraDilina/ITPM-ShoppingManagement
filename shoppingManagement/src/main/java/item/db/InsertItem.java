package item.db;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import items.Item;

public class InsertItem {
	public int addItem(Item Item) throws SQLException, IOException {

		String itemCode = Item.getItemCode();
		String itemName = Item.getItemName();
		String itemDescription = Item.getItemDescription();
		String price = Item.getPrice();
		String quantity = Item.getQuantity();


		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppingmanagement", "root", "");
		// Statement st =con.createStatement();
		// String query="INSERT INTO item(itemCode ,itemName ,itemDescription ,price
		// ,quantity,imgae)
		// VALUES('"+itemCode+"','"+itemName+"','"+itemDescription+"','"+price+"','"+quantity+"','"+image+"');";
		// int rs=st.executeUpdate(query);
		// return rs;

		java.sql.PreparedStatement st = con.prepareStatement(
				"INSERT INTO item(itemCode ,itemName ,itemDescription ,price ,quantity) VALUES(?,?,?,?,?)");
		st.setString(1, itemCode);
		st.setString(2, itemName);
		st.setString(3, itemDescription);
		st.setString(4, price);
		st.setString(5, quantity);

		int rs = st.executeUpdate();
		return rs;

	}
}

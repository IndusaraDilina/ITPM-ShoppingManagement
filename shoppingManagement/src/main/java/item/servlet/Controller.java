package item.servlet;

import java.awt.Image;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import items.Item;
import item.db.DeleteItem;
import item.db.GetItems;
import item.db.InsertItem;
import item.db.UpdateItem;


@WebServlet("/manage")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private InsertItem insertItem = new InsertItem();
	private DeleteItem deleteItem = new DeleteItem();
	private GetItems getItems = new GetItems();
	private UpdateItem updateItem = new UpdateItem();
	private Item item = new Item();
       

    public Controller() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		
		if (request.getParameter("Add") != null) {
			
			
			String itemCode = request.getParameter("itemCode");
			String itemName = request.getParameter("itemName");
			String itemDescription = request.getParameter("itemDescription");
			String price = request.getParameter("price");
			String quantity = request.getParameter("quantity");
			
		
			item.setItemCode(itemCode);
			item.setItemName(itemName);
			item.setItemDescription(itemDescription);
			item.setPrice(price);
			item.setQuantity(quantity);
			
			
			try {
				insertItem.addItem(item);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			response.sendRedirect("AdminHome.jsp");
		}
		
		else if(request.getParameter("delete") != null) {
			try {
				int ids = Integer.parseInt(request.getParameter("id"));
				deleteItem.deleteItem(ids);
				response.sendRedirect("AdminHome.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		else if(request.getParameter("edit") != null) {
			String ids =""+request.getParameter("id");
			request.setAttribute("id",ids);
			request.getRequestDispatcher("AdmineditItem.jsp").forward(request,response);
			
		}
		
		else if(request.getParameter("Details") != null) {
			String ids =""+request.getParameter("id");
			request.setAttribute("id",ids);
			request.getRequestDispatcher("Item.jsp").forward(request,response);
			
		}
		
		else if(request.getParameter("update") != null) {
			
			String id = request.getParameter("id");
			String itemCode = request.getParameter("itemCode");
			String itemName = request.getParameter("itemName");
			String itemDescription = request.getParameter("itemDescription");
			String price = request.getParameter("price");
			String quantity = request.getParameter("quantity");
		
			item.setItemCode(itemCode);
			item.setItemName(itemName);
			item.setItemDescription(itemDescription);
			item.setPrice(price);
			item.setQuantity(quantity);
			
			try {
				updateItem.updateDetails(item, id);
				response.sendRedirect("AdminHome.jsp");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	}

}

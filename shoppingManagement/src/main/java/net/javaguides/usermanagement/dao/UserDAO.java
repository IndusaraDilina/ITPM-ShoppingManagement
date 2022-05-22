package net.javaguides.usermanagement.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import net.javaguides.usermanagement.model.User;

//dao class provide crud database operations for the table user in the database.
public class UserDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/login?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "Indusara_123";
	
	private static final String INSERT_USERS_SQL = "INSERT INTO signup"+"(uname,upwd,uemail,umobile,unic)VALUES"+"(?,?,?,?,?);";
	
	private static final String SELECT_USER_BY_ID = "select id,uname,upwd,uemail,umobile,unic from signup where id=?";
	private static final String SELECT_ALL_USERS = "select * from signup";
	private static final String DELETE_USERS_SQL = "delete from signup where id =?;";
	private static final String UPDATE_USERS_SQL = "update signup set uname=?, upwd=?, uemail=?, umobile=?, unic=?";
	
	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword );
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return connection;
		
	}
	
	public void insertUser(User user) throws SQLException {
		try(Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)){
						preparedStatement.setString(1,user.getUname());
						preparedStatement.setString(2,user.getUpwd());
						preparedStatement.setString(3,user.getUemail());
						preparedStatement.setString(4,user.getUmobile());
						preparedStatement.setString(5,user.getUnic());
						preparedStatement.executeUpdate();			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateUser(User user) throws SQLException {
		boolean rowUpdated;
		try(Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);){
						statement.setInt(1,user.getId());
						statement.setString(2,user.getUname());
						statement.setString(3,user.getUpwd());
						statement.setString(4,user.getUemail());
						statement.setString(5,user.getUmobile());
						statement.setString(6,user.getUnic());
						rowUpdated = statement.executeUpdate() >0;			
		}
		return;
	}
	
	public User selectUser(int id) {
		User user = null;
		try(Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);){
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				String uname = rs.getString("uname");
				String upwd = rs.getString("upwd");
				String uemail = rs.getString("uemail");
				String umobile = rs.getString("umobile");
				String unic = rs.getString("unic");
				user = new User(id,uname,upwd,uemail,umobile,unic);
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	
	public List<User> selectAllUsers() {
		List<User> users = new ArrayList<>();
		try(Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);){
			System.out.println(preparedStatement);
			
			ResultSet rs = preparedStatement.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("id");
				String uname = rs.getString("uname");
				String upwd = rs.getString("upwd");
				String uemail = rs.getString("uemail");
				String umobile = rs.getString("umobile");
				String unic = rs.getString("unic");
				users.add(new User(id,uname,upwd,uemail,umobile,unic));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}
	
	public boolean deleteUser(int id)throws SQLException{
		boolean rowDeleted;
		try(Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);){
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

}

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Demo {
	public static void main(String args[]) {
		try {
			//load the driver
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			//creating connection
			String url="jdbc:mysql://localhost:3306/jdbcexample";
			String username="root";
			String password="Namratak@98";
			Connection con=DriverManager.getConnection(url,username,password);
			
			//crate query
			String q="create table table1(tId int(30) primary key auto_increment,tName varchar(200) not null,tCity varchar(200) not null)";
			
			
			//create statement 
			Statement smt=con.createStatement();
			smt.executeUpdate(q);
			System.out.println("Table created successfully....");
			
			con.close();
//			if(con.isClosed()) {
//				System.out.println("Connection is closed");
//				
//			}else {
//				System.out.println("Connection created....");
//			}
//			
		} catch (Exception e) {
			e.printStackTrace();		}

	}
}

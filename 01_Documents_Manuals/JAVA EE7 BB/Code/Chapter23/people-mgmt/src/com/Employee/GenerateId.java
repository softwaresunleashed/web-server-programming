package com.Employee;
import java.sql.*;
import javax.sql.*;
public class GenerateId
{
	public int generateEmployeeId(){
	int emp_id=0;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
                Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.123:1521:"+"XE","scott","tiger");
		Statement stmt = conn.createStatement();
		String query="select max(emp_id) as emp_id from PEOPLE_EMPLOYEE ";
		ResultSet rs = null;
		rs = stmt.executeQuery(query);
		if(rs.next()){
			String id = rs.getString("emp_id");
			emp_id=Integer.parseInt(id);
		}
		emp_id = emp_id + 1;		
	    }
		catch(SQLException  ex){
			ex.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return emp_id;	
	}
}
package com.LeaveManagement;
import java.sql.*;
import javax.sql.*;
public class GenerateId
{
	public int generateRequestId(){
	int req_id=0;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
		Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.123:1521:"+"XE","scott","tiger");
		Statement stmt = conn.createStatement();
		String query="select max(req_id) as req_id from LEAVE_REQUEST ";
		ResultSet rs = null;
		rs = stmt.executeQuery(query);
		if(rs.next()){
			String id = rs.getString("req_id");
			req_id=Integer.parseInt(id);
		}
		req_id = req_id + 1;		
	    }
		catch(SQLException  ex){
			ex.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return req_id;	
	}
}
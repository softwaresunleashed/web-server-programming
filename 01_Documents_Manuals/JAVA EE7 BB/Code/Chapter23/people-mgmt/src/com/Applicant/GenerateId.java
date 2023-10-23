package com.Applicant;
import java.sql.*;
import javax.sql.*;
public class GenerateId
{
	public int generateApplicantId(){
	int applicant_id=0;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
                Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.123:1521:"+ "XE","scott","	tiger");

		Statement stmt = conn.createStatement();
		String query="select max(applicant_id) as applicant_id from PEOPLE_APPLICANT";
		ResultSet rs = null;
		rs = stmt.executeQuery(query);
		if(rs.next()){
			String id = rs.getString("applicant_id");
			applicant_id=Integer.parseInt(id);
		}
		applicant_id = applicant_id + 1;		
	    }
		catch(SQLException  ex){
			ex.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	return applicant_id;	
	}
}
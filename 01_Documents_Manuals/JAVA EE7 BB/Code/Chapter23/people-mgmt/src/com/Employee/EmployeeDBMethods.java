package com.Employee;
import java.sql.*;
import javax.servlet.http.*;
import java.util.ArrayList;


public class EmployeeDBMethods{
	public String DBUser;
	public String DBPswd;
	public String DBUrl;
	
	public EmployeeDBMethods(){ }
	public EmployeeDBMethods(String inDBUser, String inDBPswd, String inDBUrl ){
		DBUser = inDBUser ;
		DBPswd = inDBPswd;
		DBUrl  = inDBUrl;
	}
	public void initializeEmployeeDBObj(EmployeeDBObj inEmployeeDBObj ){
		inEmployeeDBObj.emp_id =  "";
		inEmployeeDBObj.emp_f_name = "";
		inEmployeeDBObj.emp_m_name = "";
		inEmployeeDBObj.emp_l_name = "";
		inEmployeeDBObj.org_id = "";
		inEmployeeDBObj.level_id = "";
		inEmployeeDBObj.dept_id= "";
		inEmployeeDBObj.dob= "";
		inEmployeeDBObj.dojoin= "";
		inEmployeeDBObj.address_1= "";
		inEmployeeDBObj.address_2= "";
		inEmployeeDBObj.city= "";
		inEmployeeDBObj.state= "";
		inEmployeeDBObj.nationality= "";
	}

	public EmployeeDBObj getRecordByPrimaryKey(String inEmpId, String inEmpFName){
		EmployeeDBObj  employeeDBObj = new EmployeeDBObj();
		java.sql.Date date;
		try{
			System.out.println("DBUser=="+DBUser+",DBPswd=="+DBPswd+",DBUrl=="+DBUrl);
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@192.168.1.123:1521:"+"XE","scott","tiger");
                        Statement stmt = conn.createStatement();
			String lSqlString =	"select * from PEOPLE_EMPLOYEE ";
			lSqlString = lSqlString + "where emp_id='"+inEmpId+"' ";
			if( inEmpFName != null && inEmpFName.length() > 0)
			lSqlString = lSqlString + "and emp_f_name='"+inEmpFName+"' ";
                        System.out.println("lSqlString====trtrt==within getRecordByPrimaryKey== "+lSqlString);
			ResultSet rs  = null;
			rs  = stmt.executeQuery(lSqlString);
			
			if( rs.next()){
				
				employeeDBObj.emp_id =  rs.getString("emp_id");
				employeeDBObj.emp_f_name = rs.getString("emp_f_name");
				employeeDBObj.emp_m_name = rs.getString("emp_m_name");
				employeeDBObj.emp_l_name = rs.getString("emp_l_name");
				employeeDBObj.org_id = rs.getString("org_id");
				employeeDBObj.level_id = rs.getString("level_id");
				employeeDBObj.dept_id = rs.getString("dept_id");
				date=rs.getDate("dob");
				employeeDBObj.dob = date.toString();
				date=rs.getDate("dojoin");
				employeeDBObj.dojoin = date.toString();
				employeeDBObj.address_1 = rs.getString("address_1");
				employeeDBObj.address_2 = rs.getString("address_2");
				employeeDBObj.city = rs.getString("city");
				employeeDBObj.state = rs.getString("state");
				employeeDBObj.nationality = rs.getString("nationality");
				System.out.println("fffff==="+rs.getString("emp_id"));
			}
			else{
				System.out.println("Record Does N't exist");
				//initializeEmployeeDBObj(employeeDBObj);
			}
			System.out.println("fffff====="+employeeDBObj.emp_id);
		}
		catch(SQLException  ex){
			ex.printStackTrace();
		}
               
		return employeeDBObj;
	}
	public int updateEmployeeByPrimaryKey(EmployeeDBObj inEmployeeDBObj){
		int recupd = 0; 
		String lQuery = "";
		lQuery = lQuery +"update PEOPLE_EMPLOYEE set emp_m_name='"+inEmployeeDBObj.emp_m_name+"'  "; 
		lQuery = lQuery +" , emp_l_name='"+inEmployeeDBObj.emp_l_name+"' ";
		lQuery = lQuery +" , org_id='"+inEmployeeDBObj.org_id+"' ";
		lQuery = lQuery +" , level_id='"+inEmployeeDBObj.level_id+"' ";
		lQuery = lQuery +" , dept_id='"+inEmployeeDBObj.dept_id+"' ";
		lQuery = lQuery +" , dob=to_date('"+inEmployeeDBObj.dob+"', 'yyyy-mm-dd') ";
		lQuery = lQuery +" , dojoin=to_date('"+inEmployeeDBObj.dojoin+"', 'yyyy-mm-dd')";
		lQuery = lQuery +" , address_1='"+inEmployeeDBObj.address_1+"' ";
		lQuery = lQuery +" , address_2='"+inEmployeeDBObj.address_2+"' ";
		lQuery = lQuery +" , city='"+inEmployeeDBObj.city+"' ";
		lQuery = lQuery +" , state='"+inEmployeeDBObj.state+"' ";
		lQuery = lQuery +" , nationality='"+inEmployeeDBObj.nationality+"' ";
		lQuery = lQuery + "where emp_id='"+inEmployeeDBObj.emp_id+"' ";
		lQuery = lQuery + "and emp_f_name='"+inEmployeeDBObj.emp_f_name+"' ";
		System.out.println("lSqlString===:"+lQuery);
		try{
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection conn= DriverManager.getConnection(DBUrl,DBUser,DBPswd);
                    	Statement stmt = conn.createStatement();
			recupd  = stmt.executeUpdate(lQuery);
		}
		catch(SQLException  ex){
			ex.printStackTrace();
		}
              
		return recupd;
	}
	public EmployeeDBObj populateEmployeeDBObjFromReq(HttpServletRequest inReq){
		EmployeeDBObj  employeeDBObj = new EmployeeDBObj();
		employeeDBObj.emp_id   =  (String)inReq.getParameter("emp_id");
		employeeDBObj.emp_f_name = (String)inReq.getParameter("emp_f_name"); 
		employeeDBObj.emp_m_name  = (String)inReq.getParameter("emp_m_name");
		employeeDBObj.emp_l_name  = (String)inReq.getParameter("emp_l_name");
		employeeDBObj.org_id = (String)inReq.getParameter("org_id");
		employeeDBObj.level_id = (String)inReq.getParameter("level_id");
		employeeDBObj.dept_id = (String)inReq.getParameter("dept_id");
		employeeDBObj.dob = (String)inReq.getParameter("dob");
		employeeDBObj.dojoin = (String)inReq.getParameter("dojoin");
		employeeDBObj.address_1 = (String)inReq.getParameter("address_1");
		employeeDBObj.address_2 = (String)inReq.getParameter("address_2");
		employeeDBObj.city = (String)inReq.getParameter("city");
		employeeDBObj.state = (String)inReq.getParameter("state");
		employeeDBObj.nationality = (String)inReq.getParameter("nationality");
		return employeeDBObj;
	}
	public ArrayList selectEmployeeByCriteria(String inCriteria){
		ArrayList employeeList = new ArrayList();
		java.util.Date date=new java.util.Date();
		try{
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection conn= DriverManager.getConnection(DBUrl,DBUser,DBPswd);
                     	Statement stmt = conn.createStatement();
			String lSqlString ="select * from PEOPLE_EMPLOYEE";
			if( inCriteria != null && inCriteria.length() > 0 ){
				lSqlString = lSqlString +" "+inCriteria ;
			}
			ResultSet rs  = null;
			lSqlString = lSqlString +" ORDER BY emp_id" ;
			rs  = stmt.executeQuery(lSqlString);
			while( rs.next()){
				EmployeeDBObj  employeeDBObj = new EmployeeDBObj();
				employeeDBObj.emp_id =  rs.getString("emp_id");
				employeeDBObj.emp_f_name = rs.getString("emp_f_name");
				employeeDBObj.emp_l_name = rs.getString("emp_l_name");
				employeeDBObj.level_id = rs.getString("level_id");
				date=rs.getDate("dob");
				if(date!=null)
				employeeDBObj.dob = date.toString();
				employeeDBObj.emp_m_name = rs.getString("emp_m_name");
				employeeDBObj.org_id = rs.getString("org_id");
				employeeDBObj.dept_id  = rs.getString("dept_id");
				employeeDBObj.dojoin = rs.getString("dojoin");
				employeeDBObj.address_1 = rs.getString("address_1");
				employeeDBObj.address_2  = rs.getString("address_2");
				employeeDBObj.city  = rs.getString("city");
				employeeDBObj.state  = rs.getString("state");
				employeeDBObj.nationality  = rs.getString("nationality");
				employeeList.add(employeeDBObj);
			}
		}
		catch(SQLException  ex){
			ex.printStackTrace();
		}
               
		return employeeList;
	}
	public int insertEmployee(EmployeeDBObj inEmployeeDBObj){
		int recupd = 0; 
		String lQuery = "";
		lQuery = lQuery +"insert into PEOPLE_EMPLOYEE  values ( ";
		lQuery = lQuery +" '"+inEmployeeDBObj.emp_id+"'  ";
		lQuery = lQuery +" , '"+inEmployeeDBObj.emp_f_name+"'  ";
		lQuery = lQuery +" , '"+inEmployeeDBObj.emp_m_name+"'  "; 
		lQuery = lQuery +" , '"+inEmployeeDBObj.emp_l_name+"' ";
		lQuery = lQuery +" , '"+inEmployeeDBObj.org_id+"' ";
		lQuery = lQuery +" , '"+inEmployeeDBObj.level_id+"' ";
		lQuery = lQuery +" , '"+inEmployeeDBObj.dept_id+"' ";
		lQuery = lQuery +" , to_date('"+inEmployeeDBObj.dob+"', 'yyyy-mm-dd')";
		lQuery = lQuery +" , to_date('"+inEmployeeDBObj.dojoin+"','yyyy-mm-dd')";
		lQuery = lQuery +" , '"+inEmployeeDBObj.address_1+"' ";
		lQuery = lQuery +" , '"+inEmployeeDBObj.address_2+"' ";
		lQuery = lQuery +" , '"+inEmployeeDBObj.city+"' ";
		lQuery = lQuery +" , '"+inEmployeeDBObj.state+"' ";
		lQuery = lQuery +" , '"+inEmployeeDBObj.nationality+"' ";
		lQuery = lQuery + " )";
	    System.out.println("lSqlString===:"+lQuery);
		try{
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection conn= DriverManager.getConnection(DBUrl,DBUser,DBPswd);
                  	Statement stmt = conn.createStatement();
			recupd  = stmt.executeUpdate(lQuery);
		}
		catch(SQLException  ex){
			ex.printStackTrace();
		}
               
		return recupd;
	}
	public void deleteEmployee(String inEmpId){
		try{
			DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
			Connection conn= DriverManager.getConnection(DBUrl,DBUser,DBPswd);
                   	Statement stmt = conn.createStatement();
			String lQuery = "";
			lQuery = lQuery +"delete from PEOPLE_EMPLOYEE "; 
			lQuery = lQuery +"where emp_id='"+ inEmpId +"' ";
			System.out.println("lSqlString===:"+lQuery);
			stmt.executeQuery(lQuery);
		}
		catch(SQLException  ex){
			ex.printStackTrace();
		}
               
	}
}
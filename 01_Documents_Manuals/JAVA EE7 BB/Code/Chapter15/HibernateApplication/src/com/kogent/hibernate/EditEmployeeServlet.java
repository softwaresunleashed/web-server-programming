package com.kogent.hibernate;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class EditEmployeeServlet extends HttpServlet 
{
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
		String employeeId = request.getParameter("employeeId");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String salary = request.getParameter("salary");
		System.out.println("dsfdsf empid  "+employeeId);
		Employee emp = new Employee();
		EmployeeData emplData = new EmployeeData();
		try
		{
			emp.setEmployeeId(Integer.parseInt(employeeId));
			emp.setName(name);
			emp.setAge(Integer.parseInt(age));
			emp.setSalary(Double.parseDouble(salary));
			
			emplData.editEmployee(emp);
			ArrayList employees = EmployeeData.getEmployees();
			HttpSession session = request.getSession(true);
			session.setAttribute("employees", employees);	
		}
		catch(Exception e) 
		{
		System.out.println("Exception caught in EditEmployeeServlet " + e);
		}
		RequestDispatcher rd=request.getRequestDispatcher("/EmployeeList.jsp");
		rd.forward(request,response);
	}
}

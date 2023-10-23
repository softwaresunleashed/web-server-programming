package com.kogent.servlets;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class Checkout extends HttpServlet 
{
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) 
 	throws ServletException, IOException 
{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Online Shop</title></head><body>");
		out.println("<h1>The onlineshop Application</h1>");
		HttpSession session = request.getSession();
		session.invalidate();
		out.println("Click close to terminate the online shopping");
		out.close();
	} 
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws 
 	ServletException, IOException 
{
		processRequest(request, response);
	} 

	@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 
 	ServletException, IOException 
{
		processRequest(request, response);
	}

	@Override
	public String getServletInfo() 
	{
		return "Short description";
	}
	// </editor-fold>
}

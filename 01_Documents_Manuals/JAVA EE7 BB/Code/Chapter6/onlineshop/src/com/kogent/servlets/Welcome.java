package com.kogent.servlets;

import java.io.*;
import javax.servlet.*;
import java.util.*;
import javax.servlet.http.*;
import com.kogent.business.Product;
import com.kogent.data.*;

public class Welcome extends HttpServlet 
{

protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
		int i = 0;
		String pass =null;
		ServletContext ctx =getServletContext();
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Online Shop</title></head><body>");
		out.println("<h1>The onlineshop Application</h1>");
		out.println("<table cellpadding=5 border=1><tr valign=bottom><td align=left><b>Description</b></td><td align=left><b>Price</b></td><td align=left></td></tr>");
		ArrayList<Product> products = new ArrayList<Product>(); 
		products = (ArrayList<Product>) ctx.getAttribute("products");
		for(i=0; i<products.size(); i++)
		{
		out.println("<tr valign=top>");
		out.println("<td>" + products.get(i).getDescription() + "</td>");
		out.println("<td>" + products.get(i).getPriceCurrencyFormat() + "</td>");
			pass = products.get(i).getCode();
		out.println("<td><a href=./cart?productCode=" + pass + ">Add To  		 		Cart</a></td></tr>");     
		}
		out.println("</table><br/>");
		out.println("<b> Email ID " + ctx.getAttribute("custServEmail") + "<br/> </b>");
		out.println("</body></html>");
		out.close();
	} 

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws 	ServletException, IOException 
	{
		processRequest(request, response);
	} 

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws 	ServletException, IOException 
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

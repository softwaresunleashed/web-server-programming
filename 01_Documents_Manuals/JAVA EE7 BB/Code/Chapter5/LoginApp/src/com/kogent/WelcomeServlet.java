package com.kogent;

import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class WelcomeServlet extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		try 
		{
			PrintWriter writer = response.getWriter();
			if (session == null || session.isNew()) 
			{
				writer.println("You are not logged in");
			}
			else 
			{
				response.setContentType("text/html");
				writer.println("<html><body style=\"font-family:verdana;font-size:10pt\">");
				writer.println("<h1>Login Application using Session Tracking</h1>");
				writer.println("<p>Thank you, you are already logged in");
				writer.println("<p>Here is the data in your session");
				
				Enumeration names = session.getAttributeNames();
				while (names.hasMoreElements()) 
				{
					String name = (String) names.nextElement();
					Object value = session.getAttribute(name);
					writer.println("<p>name=" + name + " value=" + value);
				}
			}
			
			session.invalidate();
			writer.println("<p><a href=\"index.html\">Logout" + "</a> and return to login page");
			writer.println("</body></html>");
			writer.close();
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
}

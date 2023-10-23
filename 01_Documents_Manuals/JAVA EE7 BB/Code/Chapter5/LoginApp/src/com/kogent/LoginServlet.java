package com.kogent;

import javax.servlet.http.*;
import java.io.*;

public class LoginServlet extends HttpServlet 
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)
	{
		try {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			HttpSession session = request.getSession(true);
			PrintWriter writer = response.getWriter();
			
			if (session.isNew() != true)
			{
				writer.println("<h1>Session is Active</h1>");
  				writer.println("<p><a href=\"index.html\">HomePage" + "</a> and return to login page");
			}
			else
			{
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				response.setContentType("text/html");
				writer.println("<html><body style=\"font-family:verdana;font-size:10pt\">");
				writer.println("<h1>Login Application using Session Tracking</h1>");
				writer.println("<p>Thank you, " + username + ".<p> You are now logged in");
				String newURL = response.encodeURL("WelcomeServlet");
				writer.println("Click <a href=\"" + newURL + "\">here</a> for another servlet");
				writer.println("</body></html>");
				writer.close();
			}
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
} 

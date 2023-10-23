package com.kogent ;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.*;
public class SessionLifeCycleServlet extends HttpServlet 
{
	protected void doGet (HttpServletRequest request, HttpServletResponse 			response) throws ServletException, IOException 
	{
		String action = request.getParameter("action");
		if (action != null && action.equals("invalidate")) 
		{
			HttpSession session = request.getSession();
			session.invalidate();
			response.setContentType("text/html");
			PrintWriter prnwriter = response.getWriter();
			prnwriter.println("<html>");
			prnwriter.println("<head> <title> Session 							LifeCycle</title></head>");
			prnwriter.println("<body>");
			prnwriter.println("<p> Your session has been invalidated. 					</p>");
			String lifeCycleURL = "/HandleSession/SessionLifeCycleServlet";
			prnwriter.println("<a href=\"" + lifeCycleURL + 						"?action=newSession\">");
			prnwriter.println("Create new session</a>");
			prnwriter.println("</body></html>");
		}
		else 
		{
			HttpSession session = request.getSession();
			response.setContentType("text/html");
			PrintWriter prnwriter = response.getWriter();
			prnwriter.println("<html>");
			prnwriter.println("<meta http-equiv=\"Pragma\" 						content=\"no-cache\">");
			prnwriter.println("<head><title>Session 							LifeCycle</title></head>");
			prnwriter.println("<body bgcolor=\"#FFFFFF\">");
			prnwriter.println("<h1><center>Session 							LifeCycle</center></h1>");
			prnwriter.println("<br>Session Status:");
			if (session.isNew()) 
			{
				prnwriter.println("New Session");
			} 
			else 
			{
				prnwriter.println("Old Session");
			}
			prnwriter.println("<br>Session ID:");
			prnwriter.println(session.getId());
			prnwriter.println("<br>Creation Time:");
			prnwriter.println(new Date(session.getCreationTime()));
			prnwriter.println("<br>Last Accessed Time:");
			prnwriter.println(new Date(session.getLastAccessedTime()));
			prnwriter.println("<br>Maximum Inactive Interval 						(seconds):");
			prnwriter.println(session.getMaxInactiveInterval());
			String lifeCycleURL = "/HandleSession/SessionLifeCycleServlet";
			prnwriter.println("<br><a href =\"" + lifeCycleURL + 					"?action=invalidate\">");
			prnwriter.println("Invalidate the session</a>");
			prnwriter.println("<br><a href =\"" + lifeCycleURL + 					"\">");
			prnwriter.println("Reload this page</a>");
			prnwriter.println("</body></html>");
			prnwriter.close();
		}
	}
}

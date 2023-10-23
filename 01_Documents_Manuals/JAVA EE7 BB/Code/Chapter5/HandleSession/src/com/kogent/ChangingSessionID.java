package com.kogent ;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Date;

public class ChangingSessionID extends HttpServlet 
{ 

  	public void doGet (HttpServletRequest req, HttpServletResponse res)
     	throws ServletException, IOException 
	{
    		res.setContentType("text/html;charset=UTF-8");
		PrintWriter out = res.getWriter();
		HttpSession session = req.getSession();

    		
	    	

try
{
out.println("<!DOCTYPE html>");

out.println("<html>");

out.println("<head>");

out.println("<title>Servlet SessionIdTest</title>");

out.println("</head>");

out.println("<body>");

out.println("<h1>Servlet SessionIdTest at " + req.getContextPath() + "</h1>");

out.println("<p>The current session ID is : " + session.getId());
req.changeSessionId();
out.println("<p>The current session ID after change is : " + session.getId());

out.println("</body>");

out.println("</html>");


}
finally
{
out.close();
}

    		
  	}

  	
}


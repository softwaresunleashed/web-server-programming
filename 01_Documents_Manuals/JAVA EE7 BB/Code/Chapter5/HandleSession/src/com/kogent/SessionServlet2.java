package com.kogent ;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Date;

public class SessionServlet extends HttpServlet 
{ 

  	public void doGet (HttpServletRequest req, HttpServletResponse res)
     	throws ServletException, IOException 
	{
    		// Get the session object. Create a new one if it doesn't exist.
		HttpSession session = req.getSession(true);

    		res.setContentType("text/html");
	    	PrintWriter prnwriter = res.getWriter();

    		prnwriter.println("<head><title> " + "SessionServlet Output " + "</title></head><body>");
    		prnwriter.println("<h1> SessionServlet Output </h1>");

    		// Set up a session hit counter. "sessionservlet.counter" is just 
		// the conventional way to create a key for the value to be stored 
		// in the session object "dictionary".
	    	Integer ival = (Integer) session.getAttribute("sessionservlet.counter");
    		if (ival == null) 
		{
	      		ival = new Integer(1);
    		}
    		else 
		{
      		ival = new Integer(ival.intValue() + 1);
    		}

    		// Save the counter value.
    		session.setAttribute("sessionservlet.counter", ival);

    		// Report the counter value. 
    		prnwriter.println(" You have hit this page <b>" + 
         	ival + "</b> times.<p>");

    		// This statement provides a target that the user can click
    		// to activate URL rewriting. It is not done by default.
    		prnwriter.println("Click <a href=" + 
          	res.encodeURL(HttpUtils.getRequestURL(req).toString()) + 
        	">here</a>");
    		prnwriter.println(" to ensure that session tracking is working even 			" + "if cookies aren't supported.<br>");
	    	prnwriter.println("Note that by default URL rewriting is not 				enabled" + " due to its large overhead.");

    		// Report data from request.
    		prnwriter.println("<h3>Request and Session Data</h3>");
    		prnwriter.println("Session ID in Request: " +
             req.getRequestedSessionId());
    		prnwriter.println("<br>Session ID in Request is from a Cookie: " +
             req.isRequestedSessionIdFromCookie());
    		prnwriter.println("<br>Session ID in Request is from the URL: " +
             req.isRequestedSessionIdFromURL());
	    	prnwriter.println("<br>Valid Session ID: " +
             req.isRequestedSessionIdValid());

    		// Report data from the session object.
    		prnwriter.println("<h3>Session Data</h3>");
    		prnwriter.println("New Session: " + session.isNew());
    		prnwriter.println("<br> Session ID: " + session.getId());
    		prnwriter.println("<br> Creation Time: " + new 						Date(session.getCreationTime()));
    		prnwriter.println("<br>Last Accessed Time: " +
             new Date(session.getLastAccessedTime()));

    		prnwriter.println("</body>");
    		prnwriter.close();
  	}

  	public String getServletInfo() 
	{
    		return "A simple session servlet";
  	}
}


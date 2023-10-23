package com.kogent ;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
public class SessionTracker extends HttpServlet 
{
  	public void doGet(HttpServletRequest req, HttpServletResponse res)
	throws ServletException, IOException 
	{
    		res.setContentType("text/html");
    		PrintWriter prnwriter = res.getWriter();

    		// Get the current session object, create one if necessary
    		HttpSession session = req.getSession(true);

    		// Increment the hit cnt for this page. The value is saved
    		// in this client's session under the name "tracker.cnt".
    		Integer cnt = (Integer)session.getAttribute("tracker.cnt");
    		if (cnt == null)
      		cnt = new Integer(1);
    		else
      		cnt = new Integer(cnt.intValue() + 1);
    		session.setAttribute("tracker.cnt", cnt);
    		prnwriter.println("<HTML><HEAD><TITLE>SessionTracker</TITLE></HEAD>");
    		prnwriter.println("<BODY><H1>Session Tracking Demo</H1>");
    		// Display the hit cnt for this page
    		prnwriter.println("You have visited this page " + cnt + ((cnt.intValue() == 1) ? " time." : " times."));

    		prnwriter.println("<P>");

    		prnwriter.println("<H2>Here's your session data:</H2>");
    		Enumeration names = session.getAttributeNames();
    		while(names.hasMoreElements())
		{
                String name = (String) names.nextElement();
     		prnwriter.println(name + " : " + session.getAttribute("tracker.cnt") + "<BR>");
   		}
    		prnwriter.println("</BODY></HTML>");
  	}
}

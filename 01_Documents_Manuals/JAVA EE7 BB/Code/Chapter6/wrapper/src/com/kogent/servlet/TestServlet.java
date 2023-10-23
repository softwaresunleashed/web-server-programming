package com.kogent.servlet;

import javax.servlet.*;
import java.io.*;

public class TestServlet extends GenericServlet 
{
	public void service (ServletRequest req, ServletResponse res) 
	throws ServletException, IOException 
	{
		String testparam=req.getParameter("myparam");
		res.setContentType ("text/xml");

		//These methods is invoked just to test 
		//whether the wrapper functionality is working or not
		PrintWriter out=res.getWriter ();
		out.println ("<html><body><b>");
		out.println ("Parameter value is "+ testparam);
		out.println ("</b></body></html>");
	}//service
}//class

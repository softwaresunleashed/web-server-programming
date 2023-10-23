package com.kogent.servlet;

import javax.servlet.*;
import java.io.*;
import com.kogent.mywrappers.*;

public class WrapperTestServlet extends GenericServlet 
{
	public void service (ServletRequest req, ServletResponse res) 
	throws ServletException, IOException 
	{
		MyRequestWrapper mreq = new MyRequestWrapper(req);
		MyResponseWrapper mres = new MyResponseWrapper(res);

		String testparam=mreq.getParameter("myparam");
		mres.setContentType ("text/xml");

		//These methods is invoked just to test 
		//whether the wrapper functionality is working or not
		PrintWriter out=res.getWriter ();
		out.println ("<html><body><b>");
		out.println ("Parameter value is "+ testparam);
		out.println ("</b></body></html>");
	}//service
}//class	

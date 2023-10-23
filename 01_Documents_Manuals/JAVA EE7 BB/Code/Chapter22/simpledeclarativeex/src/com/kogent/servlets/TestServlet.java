package com.kogent.servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import java.security.*;
import java.io.*;

public class TestServlet extends HttpServlet 
{
	public void service(HttpServletRequest req, HttpServletResponse res) 
	throws ServletException,IOException 
	{
			Principal p=req.getUserPrincipal();
		String principal_name="UnAuthenticated";
		if (p!=null)
			principal_name=p.getName();
		PrintWriter out=res.getWriter();
out.println("User <b>"+principal_name+"</b> has requested for TestServlet");
	}// end service
}// end class

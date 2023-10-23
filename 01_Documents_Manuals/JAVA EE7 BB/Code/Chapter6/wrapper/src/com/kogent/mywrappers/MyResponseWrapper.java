package com.kogent.mywrappers;

import javax.servlet.*;

public class MyResponseWrapper extends ServletResponseWrapper 
{
	public MyResponseWrapper (ServletResponse res)
	{
		super(res);
	}

	public void setContentType(String s)
	{
		if (!s.equals("text/html"))
			s="text/html";
		/*
		  Here we consider that our application is designed intelligent 
		  to provide only html response content 
		  If we want different types also to be allowed then we need 
		  to check accordingly
		*/

		super.setContentType(s);
	}//setContentType
}//class

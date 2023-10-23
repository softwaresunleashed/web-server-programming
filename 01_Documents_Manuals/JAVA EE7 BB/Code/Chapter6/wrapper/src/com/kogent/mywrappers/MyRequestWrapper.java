package com.kogent.mywrappers;

import javax.servlet.*;

public class MyRequestWrapper extends ServletRequestWrapper 
{
	public MyRequestWrapper (ServletRequest req) 
	{
		super(req);
	}

	public String getParameter(String s) 
	{
		String s1=super.getParameter(s);
		if(s1==null)
			s1="None";
		return s1;
	}//getParameter
}//class

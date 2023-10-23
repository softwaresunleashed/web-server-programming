package com.kogent.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import com.opensymphony.xwork2.Action;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.ServletRequestAware;


import com.kogent.User;
public class GetUserAction implements 
	Action, ServletRequestAware, ApplicationAware {

	HttpServletRequest request;
	Map application;
	
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public void setApplication(Map application) {
		this.application = application;
	}

	public String execute() throws Exception {
		String username=request.getParameter("username");
		ArrayList users=(ArrayList)application.get("users");
		User user;
		if(users!=null){
			Iterator it=users.iterator();
			while(it.hasNext()){
				user=(User)it.next();
				if(username.equals(user.getUsername())){
					request.setAttribute("user", user);					
					break;
				}
			}			
		}
		return SUCCESS;
	}
}

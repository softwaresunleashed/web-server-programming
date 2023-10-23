package com.kogent.action;

import com.opensymphony.xwork2.Action;

public class HelloAction implements Action {

	String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String execute() throws Exception {
		setMessage("Hello From Struts!");
		return SUCCESS;
	}
}

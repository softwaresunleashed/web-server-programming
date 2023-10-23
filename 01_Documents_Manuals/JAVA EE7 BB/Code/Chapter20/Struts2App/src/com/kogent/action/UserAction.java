package com.kogent.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;

import com.kogent.User;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport implements ApplicationAware{
	
	String username;
	String password;
	String city;
	String email;
	String type;
	
	Map application;
	
	public void setApplication(Map application) {
		this.application=application;		
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String execute() throws Exception {
		ArrayList users=(ArrayList)application.get("users");
		if(users==null){
			users=new ArrayList();
		}		
		if(getUser(username)==null){
			users.add(buildUser());
			application.put("users", users);
		}else{
			this.addActionError("User Name is in use.");
			return ERROR;
		}	
		return SUCCESS;
	}
	
	public String edit() throws Exception{
		ArrayList users=(ArrayList)application.get("users");
		User user=null;
		int index=0;
		Iterator it=users.iterator();
		while(it.hasNext()){
			user=(User)it.next();
			if(user.getUsername().equals(username)){
				break;
			}
			index++;
		}		
		User newuser=buildUser();
		users.set(index, newuser);
		application.put("users", users);	
		return SUCCESS;
	}
	public String deleteUser() throws Exception{
		
		ArrayList users=(ArrayList)application.get("users");
		User user=null;
		int index=0;
		Iterator it=users.iterator();
		while(it.hasNext()){
			user=(User)it.next();
			if(user.getUsername().equals(username)){
				break;
			}
			index++;
		}
		users.remove(index);
		application.put("users", users);	
		return SUCCESS;
	}	
	public User buildUser(){
		User user=new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setCity(city);
		user.setEmail(email);
		user.setType(type);
		return user;
	}
	public User getUser(String username){
		User user=new User();
		boolean found=false;
		ArrayList users=(ArrayList)application.get("users");
		if(users!=null){
			Iterator it=users.iterator();
			while(it.hasNext()){
				user=(User)it.next();
				if(username.equals(user.getUsername())){
					found=true;					
					break;
				}
			}
			if(found){
				return user;
			}
		}
		return null;		
	}
	public void validate() {
		if ( (username == null ) || (username.length() == 0) ) {
			this.addFieldError("username", getText("app.username.blank"));
		}
		if ( (password == null ) || (password.length() == 0) ) {
			this.addFieldError("password", getText("app.password.blank"));
		}
		if ( (email == null ) || (email.length() == 0) ) {
			this.addFieldError("email", getText("app.email.blank"));
		}
	}	
}

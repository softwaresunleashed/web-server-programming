package com.kogent.login;
import java.io.Serializable;
public class User implements Serializable {
	private String username;
	private String password;
	private String[] roles;
	public User() {
	}
	public User(String name, String pwd, String[] assignedRoles) {
		username  = name;
		password  = pwd;
		roles=assignedRoles;
	}
	public String getUsername() {
		return username;
	}
	boolean passwordMatch(String pwd) {
		return password.equals(pwd);
	}
	public boolean hasRole(String role) {
		if (roles.length > 0) {
			for (int i=0; i<roles.length; i++) {
				if (role.equals(roles[i])) 
				return true; }
		}
		return false;
	}
	public boolean isAdministrator() {
		return hasRole("administrator");
	}	
}

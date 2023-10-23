package com.kogent.login;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class Login 
{
	private Map users;
	private static final String ADMIN_ROLE = "administrator";
	private static final String CLERK_ROLE = "clerk";
	public Login(){
		users = new HashMap();
users.put("manager", new User("manager","manager",new String[] {ADMIN_ROLE, CLERK_ROLE}));
users.put("clerk", new User("clerk", "clerk", new String[] {CLERK_ROLE}));
	}
public boolean authenticate(String username, String password)throws IOException
	{
		User user = (User) users.get(username);
		boolean passwordIsValid = user.passwordMatch(password);
		if(user != null && !passwordIsValid )
		{
			return false;
		}
		else
		{
			return true;
		}
	}
	public boolean authorize(String username) throws IOException
	{
		User user = (User) users.get(username);
		boolean role = user.isAdministrator();
		if (!role)
		{
			return false;
		}

		else
		{
			return true;
		}
	}
}

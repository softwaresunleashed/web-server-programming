import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.annotation.*;
import com.UserLogin.UserLoginDBMethods;
import com.UserLogin.UserLoginDBObj;
@WebServlet(name="people_user_login", urlPatterns="/servlet/people_user_login")
public class people_user_login extends HttpServlet
{
	String lDBUser  = "";
	String lDBPswd  = "";
	String lDBUrl   = "";
	/**Initialize global variables*/
      @Override
	public void init(ServletConfig config) throws ServletException 
	{
		System.out.println("initializing controller servlet.");
		ServletContext context = config.getServletContext();
		lDBUser = "scott";
		lDBPswd = "tiger";
		lDBUrl  = "jdbc:oracle:thin:@localhost:1521:"+"orcl";
		super.init(config);
	}
	/**Process the HTTP Get request*/
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		doPost(request, response);
	}
	/**Process the HTTP Post request*/
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException
	{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		session.setAttribute("lErrorMsg",null);
		String target = "/jsp/people_user_login.jsp";
		String action = request.getParameter("action");
		String action_submit = request.getParameter("action_submit");
		String action_chngpswd = request.getParameter("action_chngpswd");
		System.out.println("action_submit=="+action);
		if ( action_submit != null || action_chngpswd != null )
		{
                    
			if ( request.getParameter("submit").equals("Submit") )
			{
				System.out.println("in the  Submit");
				if ( action_submit.equals("people_user_login_submit") )
				{
				System.out.println("in the people_user_login_submit");
					action = "people_user_login_submit";
				}
				else
				if (action_submit.equals("login_pswd_change_submit"))
				{
					action = "login_pswd_change_submit";
				}
			}
			else 
			if (request.getParameter("submit").equals("ChangePassword") )
			{
                            
			if (action_chngpswd.equals("people_change_pswd_submit") )
				action = "people_change_pswd_submit";
			}  
                        
		}
		if (action!=null) 
		{
			System.out.println("in the  "+action);
			if (action.equals("people_user_login_submit"))
			{
				String lUserId = "";
				String lUserName = "";
				String lUserPswd = "";
				lUserId = (String)request.getParameter("user_id");
				lUserName = (String)request.getParameter("user_name");
				lUserPswd = (String)request.getParameter("user_pswd");
				UserLoginDBObj userLoginDBObj = new UserLoginDBObj();
				UserLoginDBMethods userLoginDBMethods = new UserLoginDBMethods(lDBUser,lDBPswd,lDBUrl);
				userLoginDBObj=(UserLoginDBObj)userLoginDBMethods.getRecordByPrimaryKey(lUserId,lUserName,lUserPswd);
				if ( userLoginDBObj != null && (userLoginDBObj.user_id !=null && (userLoginDBObj.user_id).length() > 0) )
				{
					target = "/jsp/people_default.jsp";
				}
				else
				{
					String lErrorMsg = "User Does Not Exist!!"; 
					session.setAttribute("lErrorMsg",lErrorMsg);
					target = "/jsp/people_user_login.jsp";
				}	
			}
			else
			if (action.equals("people_change_pswd_submit"))
			{
				target = "/jsp/people_user_login_pswd_change.jsp";
			}
			else
			if (action.equals("login_pswd_change_submit"))
			{ 
				UserLoginDBObj popUserLoginDBObj = new	UserLoginDBObj();
				UserLoginDBMethods userLoginDBMethods = new UserLoginDBMethods(lDBUser,lDBPswd,lDBUrl);
				String lUserId = "";
				String lUserName = "";
				String lCurPswd = "";
				String lNewPswd = "";
				String lRetypePswd = "";
				popUserLoginDBObj =(UserLoginDBObj)userLoginDBMethods.populateUserLoginDBObjFromReq(request);  
				lRetypePswd =(String)request.getParameter("retype_pswd");
				if ((popUserLoginDBObj.new_pswd).equals(lRetypePswd))
				{
				UserLoginDBObj userLoginDBObj = new
 					UserLoginDBObj();
				userLoginDBObj = 
 					(UserLoginDBObj)userLoginDBMethods.getRecordByPrimaryKey(popUserLoginDBObj.user_id,popUserLoginDBObj.user_name,popUserLoginDBObj.old_pswd);
				if ( userLoginDBObj != null && (userLoginDBObj.user_id != null && (userLoginDBObj.user_id).length() > 0) )
					{
					int rval =userLoginDBMethods.updateUserLoginByPrimaryKey(popUserLoginDBObj);
						if ( rval > 0 )
						{
							target ="/jsp/people_user_login.jsp";
						}
						else
						{
							target ="/jsp/people_user_login_pswd_change.jsp";
						}
					}
					else
					{
					String lErrorMsg = "User Does Not Exist!!"; 
					session.setAttribute("lErrorMsg",lErrorMsg);
					target = "/jsp/people_user_login_pswd_change.jsp";
					}
				} 
				else
				{
					String lErrorMsg = "Retype Correct Password!!"; 
					session.setAttribute("lErrorMsg",lErrorMsg);
					target = "/jsp/people_user_login_pswd_change.jsp";
				}
			}
		} 
		// (action== null )
		/* forwarding the request/response to the targeted view */
		RequestDispatcher requestDispatcher =
 			getServletContext().getRequestDispatcher(target);
		requestDispatcher.forward(request, response);
	} 
	// doPost closed
	/* write the methods that are used in class  */
}
// class closed

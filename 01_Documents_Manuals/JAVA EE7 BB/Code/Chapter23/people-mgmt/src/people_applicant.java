

import javax.servlet.*;
import javax.servlet.http.*;
import java.util.ArrayList;
import java.io.*;
import java.util.*;
import java.sql.*;
import com.Applicant.*;
import javax.servlet.annotation.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(name="people_applicant", urlPatterns="/servlet/people_applicant")
public class people_applicant extends HttpServlet{
	String lDBUser  = "";
	String lDBPswd  = "";
	String lDBUrl   = "";
	
	/**Initialize global variables*/
	@Override
	public void init(ServletConfig config) throws ServletException{
		System.out.println("initializing controller servlet.");
		ServletContext context = config.getServletContext();
		lDBUser = "scott";
		lDBPswd = "tiger";
		lDBUrl  = "jdbc:oracle:thin:@192.168.1.123:1521:"+"XE";

		super.init(config);
	}
	/**Process the HTTP Get request*/
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		doPost(request, response);
	}
	/**Process the HTTP Post request*/
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		session.setAttribute("lErrorMsg",null);
		String target = "";
		String action = request.getParameter("action");
		String lDBOpr = "";
		lDBOpr = (String)request.getParameter("dbopr");
		session.setAttribute("dbopr",lDBOpr);
		if( (lDBOpr != null && lDBOpr.length() > 0) && (lDBOpr.equals("register")) ){
			target = "/jsp/applicant_register.jsp";
		}
		else
		if( (lDBOpr != null && lDBOpr.length() > 0) && (lDBOpr.equals("edit")) ){
			action = "people_applicant_edit";
		}
		else
		if( (lDBOpr != null && lDBOpr.length() > 0) && (lDBOpr.equals("delete")) ){
			action = "people_applicant_delete";
		}
		else
		if( (lDBOpr != null && lDBOpr.length() > 0) && (lDBOpr.equals("detail")) ){
			action = "people_applicant_detail";
		}
		else{
			action = "people_applicant_select";
		}
		String action_submit = request.getParameter("action_submit");
		String action_edit = request.getParameter("action_edit");
		System.out.println("action_submit=="+action_submit);
		
		if ( action_submit != null || action_edit != null ){
			if ( request.getParameter("submit").equals("Submit") ){
				System.out.println("in the  Submit");
				if ( action_submit.equals("people_applicant_register_submit") ){
					System.out.println("in the people_applicant_register_submit ");
					action = "people_applicant_register_submit";
				}
				else
				if (action_submit.equals("people_applicant_search_submit")){
					action = "people_applicant_search_submit";
				}
			}
			else 
			if ( request.getParameter("submit").equals("Update") ){
				if ( action_edit.equals("people_applicant_edit_submit") )
					action = "people_applicant_edit_submit";
			}  
		}
		
		if (action!=null){
			System.out.println("in the  "+action);
			if (action.equals("people_change_pswd_submit")){
				target = "/jsp/people_user_login_pswd_change.jsp";
			}
			else
			if (action.equals("people_applicant_register_submit")){
				ApplicantDBObj popApplicantDBObj = new ApplicantDBObj(); 
				ApplicantDBMethods applicantDBMethods = new ApplicantDBMethods(lDBUser,lDBPswd,lDBUrl);
				popApplicantDBObj = (ApplicantDBObj)applicantDBMethods.populateApplicantDBObjFromReq(request);
				ApplicantDBObj applicantDBObj = new ApplicantDBObj();
				applicantDBObj = (ApplicantDBObj)applicantDBMethods.getRecordByPrimaryKey(popApplicantDBObj.applicant_id);
				if ( ( (popApplicantDBObj.applicant_id) != null && (applicantDBObj.applicant_id) != null) && (popApplicantDBObj.applicant_id).equals(applicantDBObj.applicant_id) ){
					String lErrorMsg = "Applicant Already Exist!!"; 
					session.setAttribute("lErrorMsg",lErrorMsg);
					target = "/jsp/applicant_register.jsp";
				}
				else{
					int rval =  applicantDBMethods.insertApplicant(popApplicantDBObj);
					ArrayList ApplicantList = new ArrayList();
					String criteria = "";
					ApplicantList = (ArrayList)applicantDBMethods.selectApplicantByCriteria(criteria);
					session.setAttribute("ApplicantList",ApplicantList);
					target = "/jsp/applicant_list.jsp";
				}
			}
			else
			if (action.equals("people_applicant_select")){        
				ApplicantDBMethods applicantDBMethods = new ApplicantDBMethods(lDBUser,lDBPswd,lDBUrl);
				ArrayList ApplicantList = new ArrayList();
				String criteria = "";
				ApplicantList = (ArrayList)applicantDBMethods.selectApplicantByCriteria(criteria);
				session.setAttribute("ApplicantList",ApplicantList);
				target = "/jsp/applicant_list.jsp";
			}
			else
			if (action.equals("people_applicant_edit")){ 
				String lApplicantId= "";
				lApplicantId = (String)request.getParameter("applicant_id");
				ApplicantDBMethods applicantDBMethods = new ApplicantDBMethods(lDBUser,lDBPswd,lDBUrl);
				ApplicantDBObj applicantDBObj = new ApplicantDBObj();
				applicantDBObj = (ApplicantDBObj)applicantDBMethods.getRecordByPrimaryKey(lApplicantId);
				if ( applicantDBObj != null && ( applicantDBObj.applicant_id != null && applicantDBObj.applicant_id.length() > 0 ) ){
					session.setAttribute("applicantDBObj",applicantDBObj);
					target = "/jsp/applicant_edit.jsp";
				}
				else{
					target = "/jsp/applicant_list.jsp";
				}
			}
			else
			if (action.equals("people_applicant_edit_submit")){
				ApplicantDBObj popApplicantDBObj = new ApplicantDBObj(); 
				ApplicantDBMethods applicantDBMethods = new ApplicantDBMethods(lDBUser,lDBPswd,lDBUrl);
				popApplicantDBObj = (ApplicantDBObj)applicantDBMethods.populateApplicantDBObjFromReq(request);
				ApplicantDBObj applicantDBObj = new ApplicantDBObj();
				int rval =  applicantDBMethods.updateApplicant(popApplicantDBObj);
				applicantDBObj = (ApplicantDBObj)applicantDBMethods.getRecordByPrimaryKey(popApplicantDBObj.applicant_id);
				session.setAttribute("applicantDBObj",applicantDBObj);
				String criteria = "";
				ArrayList ApplicantList = new ArrayList();
				ApplicantList = (ArrayList)applicantDBMethods.selectApplicantByCriteria(criteria);
				session.setAttribute("ApplicantList",ApplicantList);
				target = "/jsp/applicant_list.jsp";
			}   
			else
			if (action.equals("people_applicant_delete")){        
				String lApplicationId = "";
				lApplicationId = (String)request.getParameter("applicant_id");
				ApplicantDBMethods applicantDBMethods = new ApplicantDBMethods(lDBUser,lDBPswd,lDBUrl);
				applicantDBMethods.deleteApplicant(lApplicationId);
				ArrayList ApplicantList = new ArrayList();
				String criteria = "";
				ApplicantList = (ArrayList)applicantDBMethods.selectApplicantByCriteria(criteria);
				session.setAttribute("ApplicantList",ApplicantList);
				target = "/jsp/applicant_list.jsp";
			}else
			if (action.equals("people_applicant_detail")){        
				String lApplicationId = "";
				lApplicationId = (String)request.getParameter("applicant_id");
				ApplicantDBMethods applicantDBMethods = new ApplicantDBMethods(lDBUser,lDBPswd,lDBUrl);
				ApplicantDBObj applicantDBObj = new ApplicantDBObj();
				applicantDBObj = (ApplicantDBObj)applicantDBMethods.getRecordByPrimaryKey(lApplicationId);
				session.setAttribute("applicantDBObj",applicantDBObj);
				target = "/jsp/applicant_edit.jsp";
			}   
		} // (action== null )
			/* forwarding the request/response to the targeted view */
			RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(target);
			requestDispatcher.forward(request, response);
	} // doPost closed
}// class closed
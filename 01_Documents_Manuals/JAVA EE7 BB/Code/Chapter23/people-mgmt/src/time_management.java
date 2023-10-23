

import javax.servlet.*;
import javax.servlet.http.*;
import java.util.ArrayList;
import java.io.*;
import javax.servlet.annotation.WebServlet;
import com.Employee.EmployeeDBMethods;
import com.Employee.EmployeeDBObj;
import com.TimeManagement.*;

@WebServlet(name="time_management", urlPatterns="/servlet/time_management")
public class time_management extends HttpServlet{
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
		
		if( (lDBOpr != null && lDBOpr.length() > 0) && (lDBOpr.equals("daily_attendance_entry")) ){
			target = "/jsp/employee_search.jsp";
		}
		else
			if( (lDBOpr != null && lDBOpr.length() > 0) && (lDBOpr.equals("daily_attendance_summary")) ){
				action = "daily_attendance_summary";
			}
			else
				if( (lDBOpr != null && lDBOpr.length() > 0) && (lDBOpr.equals("edit")) ){
					action = "daily_attendance_summary_edit";
				}
		String action_submit = request.getParameter("action_submit");
		String action_edit = request.getParameter("action_edit");
		System.out.println("action_submit=="+action_submit);
		if ( action_submit != null || action_edit != null ){
			if ( request.getParameter("submit").equals("Submit") ){
				System.out.println("in the  Submit");
				if ( action_submit.equals("people_employee_search_submit") ){
					System.out.println("in the people_employee_insert_submit ");
					action = "people_employee_search_submit";
				}
			}
			else 
				if ( request.getParameter("submit").equals("Submit Detail") ){
					if ( action_submit.equals("emp_daily_att_dtl_submit") )
						action = "emp_daily_att_dtl_submit";
				}  
		}
		if (action!=null){
			System.out.println("in the  "+action);
			if (action.equals("people_employee_search_submit")){
				String lEmpId = "";
				String lEmpFName = "";
				lEmpId = (String)request.getParameter("emp_id");
				lEmpFName = (String)request.getParameter("emp_f_name");
				TimeManagementDBMethods timeManagementDBMethods  = new TimeManagementDBMethods(lDBUser,lDBPswd,lDBUrl);
				DateYearMonthDayDBObj dateYearMonthDayDBObj = new DateYearMonthDayDBObj();
				dateYearMonthDayDBObj = (DateYearMonthDayDBObj)timeManagementDBMethods.getCurDateYearMonthDayDBObj();
				session.setAttribute("dateYearMonthDayDBObj",dateYearMonthDayDBObj);
				EmployeeDBObj employeeDBObj = new EmployeeDBObj();
				EmployeeDBMethods employeeDBMethods = new EmployeeDBMethods(lDBUser,lDBPswd,lDBUrl);
				employeeDBObj = (EmployeeDBObj)employeeDBMethods.getRecordByPrimaryKey(lEmpId,lEmpFName);
				EmpDailyAttendanceDBObj empDailyAttendanceDBObj = new EmpDailyAttendanceDBObj();
				empDailyAttendanceDBObj = (EmpDailyAttendanceDBObj)timeManagementDBMethods.getRecordByPrimaryKey(lEmpId,dateYearMonthDayDBObj.today_date);
				System.out.println("iiiii="+employeeDBObj.emp_id+"ffff="+employeeDBObj.emp_f_name);
				if ( (employeeDBObj.emp_id != null && employeeDBObj.emp_f_name.equals(lEmpFName)  ) ){
					session.setAttribute("empDailyAttendanceDBObj",empDailyAttendanceDBObj);
					session.setAttribute("employeeDBObj",employeeDBObj);
					target = "/jsp/employee_daily_attendance.jsp";
				}
				else{
					String lErrorMsg = "Employee doesn't Exist"; 
					session.setAttribute("lErrorMsg",lErrorMsg);
					target = "/jsp/people_default.jsp";
				}
			}   
			else
			if (action.equals("daily_attendance_summary_edit")){
				String lEmpId = "";
				String lTodayDate = "";
				String lEmpFName = "";
				lEmpId = (String)request.getParameter("emp_id");
				lTodayDate = (String)request.getParameter("today_date");
				TimeManagementDBMethods timeManagementDBMethods  = new TimeManagementDBMethods(lDBUser,lDBPswd,lDBUrl);
				DateYearMonthDayDBObj dateYearMonthDayDBObj = new DateYearMonthDayDBObj();
				dateYearMonthDayDBObj = (DateYearMonthDayDBObj)timeManagementDBMethods.getCurDateYearMonthDayDBObj();
				EmployeeDBObj employeeDBObj = new EmployeeDBObj();
				EmployeeDBMethods employeeDBMethods = new EmployeeDBMethods(lDBUser,lDBPswd,lDBUrl);
				employeeDBObj = (EmployeeDBObj)employeeDBMethods.getRecordByPrimaryKey(lEmpId,lEmpFName);
				EmpDailyAttendanceDBObj empDailyAttendanceDBObj = new EmpDailyAttendanceDBObj();
				empDailyAttendanceDBObj = (EmpDailyAttendanceDBObj)timeManagementDBMethods.getRecordByPrimaryKey(lEmpId,lTodayDate);
				session.setAttribute("empDailyAttendanceDBObj",empDailyAttendanceDBObj);
				session.setAttribute("employeeDBObj",employeeDBObj);
				session.setAttribute("dateYearMonthDayDBObj",dateYearMonthDayDBObj);
				target = "/jsp/employee_daily_attendance.jsp";
			}   
			else
			if (action.equals("daily_attendance_summary")){
				TimeManagementDBMethods timeManagementDBMethods  = new TimeManagementDBMethods(lDBUser,lDBPswd,lDBUrl);
				DateYearMonthDayDBObj dateYearMonthDayDBObj = new DateYearMonthDayDBObj();
				dateYearMonthDayDBObj = (DateYearMonthDayDBObj)timeManagementDBMethods.getCurDateYearMonthDayDBObj();
				session.setAttribute("dateYearMonthDayDBObj",dateYearMonthDayDBObj);
				ArrayList empDailyAttendanceList = new ArrayList();
				String criteria = "";
				criteria = " where today_date='"+dateYearMonthDayDBObj.today_date+"'";
				empDailyAttendanceList = ( ArrayList)timeManagementDBMethods.selectEmpDailyAttendanceByCriteria(criteria);
				session.setAttribute("empDailyAttendanceList",empDailyAttendanceList);
				System.out.println("empDailyAttendanceList.size()"+empDailyAttendanceList.size());
				target = "/jsp/employee_daily_attendance_summary.jsp";
			}   
			else
			if (action.equals("emp_daily_att_dtl_submit")){
				EmpDailyAttendanceDBObj  popEmpDailyAttendanceDBObj = new EmpDailyAttendanceDBObj();
				TimeManagementDBMethods timeManagementDBMethods  = new TimeManagementDBMethods(lDBUser,lDBPswd,lDBUrl);
				popEmpDailyAttendanceDBObj = ( EmpDailyAttendanceDBObj)timeManagementDBMethods.populateEmpDailyAttendanceDBObjFromReq(request);
				System.out.println("popEmpDailyAttendanceDBObj.emp_id"+popEmpDailyAttendanceDBObj.emp_id);
				EmpDailyAttendanceDBObj  empDailyAttendanceDBObj = new EmpDailyAttendanceDBObj();
// Added on 29th june
	//			int rval = timeManagementDBMethods.updateEmpDailyAttendanceDBObjByPrimaryKey(popEmpDailyAttendanceDBObj);
				empDailyAttendanceDBObj = (EmpDailyAttendanceDBObj)timeManagementDBMethods.getRecordByPrimaryKey(popEmpDailyAttendanceDBObj.emp_id,popEmpDailyAttendanceDBObj.today_date);
	//			DateYearMonthDayDBObj dateYearMonthDayDBObj = new DateYearMonthDayDBObj();
	//			dateYearMonthDayDBObj = (DateYearMonthDayDBObj)timeManagementDBMethods.getCurDateYearMonthDayDBObj();
	//			session.setAttribute("dateYearMonthDayDBObj",dateYearMonthDayDBObj);
	//			ArrayList empDailyAttendanceList = new ArrayList();
	//			String criteria = "";
	//			criteria = " where today_date='"+dateYearMonthDayDBObj.today_date+"'";
	//			empDailyAttendanceList = ( ArrayList)timeManagementDBMethods.selectEmpDailyAttendanceByCriteria(criteria);
	//			session.setAttribute("empDailyAttendanceList",empDailyAttendanceList);
// till here
				//empDailyAttendanceDBObj = (EmpDailyAttendanceDBObj)timeManagementDBMethods.getRecordByPrimaryKey(popEmpDailyAttendanceDBObj.emp_id,popEmpDailyAttendanceDBObj.today_date);
				//System.out.println("empDailyAttendanceDBObj.emp_id"+empDailyAttendanceDBObj.emp_id);
// qouted on 29 th		
				if ( ( empDailyAttendanceDBObj.emp_id != null && (popEmpDailyAttendanceDBObj.emp_id).equals(empDailyAttendanceDBObj.emp_id)) && (popEmpDailyAttendanceDBObj.today_date).equals(empDailyAttendanceDBObj.today_date) ){
					int rval = timeManagementDBMethods.updateEmpDailyAttendanceDBObjByPrimaryKey(popEmpDailyAttendanceDBObj);
					empDailyAttendanceDBObj = (EmpDailyAttendanceDBObj)timeManagementDBMethods.getRecordByPrimaryKey(popEmpDailyAttendanceDBObj.emp_id,popEmpDailyAttendanceDBObj.today_date);
					session.setAttribute("empDailyAttendanceDBObj",empDailyAttendanceDBObj);
					//target = "/jsp/employee_daily_attendance_summary.jsp";
				}
				else{
					int rval =  timeManagementDBMethods.insertEmpDailyAttendanceDBObj(popEmpDailyAttendanceDBObj); //added on 29th
					empDailyAttendanceDBObj = (EmpDailyAttendanceDBObj)timeManagementDBMethods.getRecordByPrimaryKey(popEmpDailyAttendanceDBObj.emp_id,popEmpDailyAttendanceDBObj.today_date);
					session.setAttribute("empDailyAttendanceDBObj",empDailyAttendanceDBObj);
					
					 //till here
					//target = "/jsp/employee_daily_attendance_summary.jsp";
				} 
				DateYearMonthDayDBObj dateYearMonthDayDBObj = new DateYearMonthDayDBObj();
				dateYearMonthDayDBObj = (DateYearMonthDayDBObj)timeManagementDBMethods.getCurDateYearMonthDayDBObj();
				session.setAttribute("dateYearMonthDayDBObj",dateYearMonthDayDBObj);
				ArrayList empDailyAttendanceList = new ArrayList();
				String criteria = "";
				criteria = " where today_date='"+dateYearMonthDayDBObj.today_date+"'";
				empDailyAttendanceList = ( ArrayList)timeManagementDBMethods.selectEmpDailyAttendanceByCriteria(criteria);
				session.setAttribute("empDailyAttendanceList",empDailyAttendanceList);
				target = "/jsp/employee_daily_attendance_summary.jsp";
			}
						
    	} // (action== null )
		/* forwarding the request/response to the targeted view */
		RequestDispatcher requestDispatcher = getServletContext().getRequestDispatcher(target);
		requestDispatcher.forward(request, response);
	}// doPost closed
}// class closed
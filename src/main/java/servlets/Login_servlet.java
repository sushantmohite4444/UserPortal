package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database_dao.Employee_data_set;
import entitityclasses.Employee;
import helperclasses.Dbconnection;

/**
 * Servlet implementation class Login_servlet
 */
public class Login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email=request.getParameter("Email");
		String password=request.getParameter("Password");
		
		System.out.println("from login_servlet " +email+password);
		
		Connection conn = Dbconnection.getconnection();
		
		Employee_data_set empset =new Employee_data_set(conn);
		
		
		Employee emp=empset.getBbdata(email , password);
		
		System.out.println("form loging servlet" +emp);
		
		
		String st ="";
		if(emp==null) {	
			st="no value";
			HttpSession s =request.getSession();
			s.setAttribute("st", st);
			
		response.sendRedirect("login.jsp");
		}else {
			HttpSession s =request.getSession();
			s.setAttribute("empprop", emp);
			response.sendRedirect("Profile.jsp");
		}
		
	}

}

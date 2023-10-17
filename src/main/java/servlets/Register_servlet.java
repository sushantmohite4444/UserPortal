package servlets;

import java.io.IOException;
import java.util.jar.Attributes.Name;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database_dao.Employee_data_set;
import entitityclasses.Employee;
import helperclasses.Dbconnection;


public class Register_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Register_servlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String id =request.getParameter("Id");
				String Name =	request.getParameter("Name");
		String LastName =request.getParameter("LastName");
		String Email =request.getParameter("Email");
		String Password =request.getParameter("Password");
		String MobNo = request.getParameter("MobNo");
		String Gender =request.getParameter("Gender");
		

	long i = Long.parseLong(MobNo);
	int ID= Integer.parseInt(id);
		
		Employee emp = new Employee(ID, Name, LastName, Gender,  Email, i, Password);
		
		Employee_data_set ed=new Employee_data_set(Dbconnection.getconnection());
		
		 boolean o =ed.Save(emp);
		 
		 if(o==false) {
			 
			 HttpSession hs = request.getSession();
			 String s= "used";
			 hs.setAttribute("error", s);
			 response.sendRedirect("Register.jsp");
		 }else {
			 
			 
			 response.sendRedirect("login.jsp");
			 
		 }
		 
		 
		 
		
		System.out.println(Name+LastName+Email+Password+MobNo+Gender);
		
	}
	

}

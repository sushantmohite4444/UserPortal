package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import database_dao.Employee_data_set;
import entitityclasses.Employee;
import helperclasses.Dbconnection;
import helperclasses.SaveDeleteprofpic;

@MultipartConfig
public class Update_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("from update servlet start sushant");
	   
	   String id =request.getParameter("id");
		String Name =	request.getParameter("Name");
		String LastName =request.getParameter("LastName");
		String Email =request.getParameter("Email");
		String Password =request.getParameter("Password");
		String MobNo = request.getParameter("MobNumb");
		String Gender =request.getParameter("Gender");
		
		System.out.println("from update servlet before file sccess ");
		
		
		
		 Part part = request.getPart("Nprof");
		
		System.out.println("from update servlet before file sccess"+part);
		
		String Pname = part.getSubmittedFileName();
		
		System.out.println(Name+LastName+Email+Password+MobNo+Gender+Pname+"sushant");
		
       long i = Long.parseLong(MobNo);
       int Id = Integer.parseInt(id);
       


       HttpSession s = request.getSession();
      Employee emp = (Employee) s.getAttribute("empprop");
      
       emp.setId(Id);
       emp.setName(Name);
       emp.setLastName(LastName);
       emp.setGender(Gender);
       emp.setEmail(Email);
       emp.setMobno(i);
       emp.setPassword(Password);
       String oldProp= emp.getProfilepic();
       emp.setProfilepic(Pname);
       
       
       
       
       
         
        Employee_data_set ed=new Employee_data_set(Dbconnection.getconnection());
		
		 boolean o =ed.change(emp);
		 
		 PrintWriter pw = response.getWriter();
		 
		 
		  String path = getServletContext().getRealPath("/" + "ProfilePics" + File.separator + emp.getProfilepic());
		  
		  System.out.println(path);
         //start of photo work
         //delete code
         String proppath = getServletContext().getRealPath("/" + "ProfilePics" + File.separator + oldProp);
		 
		 System.out.println(proppath);
		 
         if (! oldProp.equals("Defaultpro.png")) {
             SaveDeleteprofpic.delete(proppath);
         }
         
         
         HttpSession hs = request.getSession();
		 String st= "";
         if (SaveDeleteprofpic.save(part.getInputStream(), path)) {	
        	 
        	 st="okk";
			 hs.setAttribute("saveprof", st);
			 response.sendRedirect("Profile.jsp");
         } else {
        	 
      
			 hs.setAttribute("saveprof", st);
			 response.sendRedirect("Profile.jsp");
            
         }

         
     } 

    

	}



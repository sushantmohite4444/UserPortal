package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Logout_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Logout_servlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String st ="";
		
			st="Logout";
	HttpSession he=	request.getSession();
	
	he.removeAttribute("empprop");
	
	he.setAttribute("st", st);
	
	response.sendRedirect("login.jsp");
	
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}

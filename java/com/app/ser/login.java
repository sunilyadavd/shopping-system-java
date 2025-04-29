 package com.app.ser;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.app.DAO.customerDAO;
import com.app.DTO.customerDTO;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public login() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		customerDTO dto=new customerDTO();
		String user=request.getParameter("unm");
		String pass=request.getParameter("pw");
		
	    dto.setUnm(request.getParameter("unm"));
	    dto.setPw(request.getParameter("pw"));
	    if(user.equalsIgnoreCase("sunil") && pass.equalsIgnoreCase("12345"))
	    {
	    	response.sendRedirect("admin\\index.jsp");
	    }
	    else {
	    	
	    	customerDAO dao=new customerDAO();	
	    	List lst= dao.checkLogin(dto);
	   		if(lst.isEmpty())
	   		{
	   			response.sendRedirect("login.jsp");
	   		}else
	   		{
	   			HttpSession hs= request.getSession(true);
	   			hs.setAttribute("user", lst);
	   			response.sendRedirect("index.jsp");
	   }
	   }
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

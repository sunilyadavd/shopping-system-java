package com.app.ser;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.app.DAO.customerDAO;
import com.app.DTO.customerDTO;


/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		customerDTO dto=new customerDTO();
		dto.setCnm(request.getParameter("cname"));
		dto.setEmail(request.getParameter("email"));
		dto.setCadd(request.getParameter("cadd"));
	dto.setMob(Integer.parseInt(request.getParameter("mob")));
	    dto.setUnm(request.getParameter("unm"));
	    dto.setPw(request.getParameter("pw"));
	    customerDAO dao=new customerDAO();
	   int x= dao.insert(dto);
	   if(x==1)
	   {
		   HttpSession session1= request.getSession();
		   session1.setAttribute("msg","registration succesfil");
		   response.sendRedirect("login.jsp");
		   return;
		}else {
		response.sendRedirect("registration.jsp");	
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package com.app.ser;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.app.DAO.customerDAO;

/**
 * Servlet implementation class Changestatus
 */
@WebServlet("/Changestatus")
public class Changestatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Changestatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pid =Integer.parseInt(request.getParameter("productId"));
		int status =Integer.parseInt(request.getParameter("prostatus"));
		//System.out.println(pid);
		customerDAO dao=new customerDAO();
		int x= dao.changestatus(pid,status);
		if(x==1)
		{
		System.out.println("status updated ");
		response.sendRedirect("admin/gallery.jsp");
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

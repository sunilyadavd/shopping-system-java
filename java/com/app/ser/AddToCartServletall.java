package com.app.ser;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/AddToCartServletall")
public class AddToCartServletall extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartServletall() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String productId = request.getParameter("productId");
	        String productName = request.getParameter("productName");
	        double price = Double.parseDouble(request.getParameter("price"));

	        HttpSession session = request.getSession();
	  
	        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");

	        if (cart == null) {
	            cart = new ArrayList<>();
	        }

	        boolean found = false;
	        for (Map<String, Object> item : cart) 
	        {
	            if (item.get("productId").equals(productId))
	            {
	                int quantity = (int) item.get("quantity");
	                item.put("quantity", quantity + 1);
	                found = true;
	                break;
	            }
	        }

	        if (!found)
	        {
	            Map<String, Object> newItem = new HashMap<>();
	            newItem.put("productId", productId);
	            newItem.put("productName", productName);
	            newItem.put("price", price);
	            newItem.put("quantity", 1);
	            cart.add(newItem);
	        }

	        session.setAttribute("cart", cart);
	        response.sendRedirect("products.jsp");
	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

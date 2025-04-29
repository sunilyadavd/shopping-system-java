<%@ page import="java.util.*" %>
<%@ page session="true" %>
<html>
<head><title>Your Cart</title></head>
<body>
    <h2>Shopping Cart</h2>
    <% 
    	String nm="";
    	String add="";
    	String email="";
    	int mob=0;
    	List lst=(List) session.getAttribute("user");
   	    if(lst==null || lst.isEmpty())
     	{
  	   		response.sendRedirect("login.jsp");
     	}else
     	{
  			 nm=(String)lst.get(1);
  			 add=(String)lst.get(2);
  			 email=(String)lst.get(3);
  			 mob=(int)lst.get(4);
  			
     	}
		//user details ends
	
        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
        if (cart == null || cart.isEmpty()) {
            out.println("<p>Your cart is empty.</p>");
        } else {
            double grandTotal = 0;
    %>
    <table border="1">
        <tr>
            <th>Product</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
        <% for (Map<String, Object> item : cart) {
            String name = (String) item.get("productName");
            double price = (double) item.get("price");
            int quantity = (int) item.get("quantity");
            double total = price * quantity;
            grandTotal += total;
        %>
        <tr>
            <td><%= name %></td>
            <td>&#8377; <%= String.format("%.2f", price) %></td>
            <td><%= quantity %></td>
            <td>&#8377; <%= String.format("%.2f", total) %></td>
        </tr>
        <% } %>
        <tr>
            <td colspan="3" align="right"><strong>Grand Total:</strong></td>
            <td><strong>&#8377; <%= String.format("%.2f", grandTotal) %></strong></td>
        </tr>
    </table>
    <% } %>
    <table border="1">
        <tr>
            <th>Customer Name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        <tr>
        	<td><%=nm  %></td>
        	<td><%=add  %></td>
        	<td><%=email  %></td>
        	<td><%=mob  %></td>
        </tr>
    </table>
    <br><a href="index.jsp">Continue Shopping</a>
</body>
</html>

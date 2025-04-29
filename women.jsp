<!DOCTYPE html>
<%@page import="java.util.Vector"%>
<%@page import="com.app.DAO.customerDAO"%>
<%@page import="java.util.List"%>
<html lang="en">
<% String nm=""; 
  List lst=(List) session.getAttribute("user");
   if(lst==null || lst.isEmpty())
   {
	   response.sendRedirect("login.jsp");
   }else{
	nm=(String)lst.get(1);   
   }

%>
<%@ include file="header.jsp" %>
      
      <script type="text/javascript" src="cart.js"></script>
    <!-- ***** Main Banner Area Start ***** -->
    <div class="page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>Women's Collection</h2>
                        <span>Awesome &amp;Latest Designs</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->


    <!-- ***** Products Area Starts ***** -->
    <section class="section" id="products">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>Our Latest Products</h2>
                        <span>Check out all of our products.</span>
                    </div>
                </div>
            </div>
        </div>
  
        
        
        <div class="container">
            <div class="row">
           		 <%
           		 customerDAO dao=new customerDAO();
              	 List lt1=dao.getwomenImage();	
				for(int i=0;i<lt1.size();i++)
				{
					Vector v1=(Vector)lt1.get(i);
				%>
                <div class="col-lg-4">
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <ul>
                                    <li><a href="assets/images/<%=v1.get(1) %>"><i class="fa fa-eye"></i></a></li>
                                    <li><a href="AddToCartServlet?productId=<%=v1.get(0) %>&productName=<%=v1.get(1) %>&price=<%=v1.get(2) %>"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <img src="assets/images/<%=v1.get(1) %>" alt="">
                        </div>
                        <div class="down-content">
                            <h4><%=v1.get(1) %></h4>
                            <span><%=v1.get(2)+" Rs" %></span>
                            <ul class="stars">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
          		<% } %>
     
                </div>
                <div class="col-lg-12">
                    <div class="pagination">
                        <ul>
                            <li>
                                <a href="#">1</a>
                            </li>
                            <li class="active">
                                <a href="#">2</a>
                            </li>
                            <li>
                                <a href="#">3</a>
                            </li>
                            <li>
                                <a href="#">4</a>
                            </li>
                            <li>
                                <a href="#">></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
    </section>
    <!-- ***** Products Area Ends ***** -->
    
<%@ include file="footer.jsp" %>




  </body>

</html>

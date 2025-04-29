<!DOCTYPE html>
<%@page import="java.util.Vector"%>
<%@page import="java.util.List"%>
<%@page import="com.app.DAO.customerDAO"%>
<html lang="en">
     <%@ include file="header.jsp" %>   
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
   <%@ include file="sidebar.jsp" %>
      <!-- **********************************************************************************************************************************************************
      
      
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      
      <% customerDAO dao=new customerDAO();
      	 List lst=dao.getAllImage();	
      	 
      
      %>
      
      
      <section id="main-content">
          <section class="wrapper site-min-height">
          	<h3><i class="fa fa-angle-right"></i> Gallery</h3>
          	<hr>
				<div class="row mt">
				
				<%
				for(int i=0;i<lst.size();i++)
				{
					Vector v1=(Vector)lst.get(i);
					System.out.println(v1.get(1));
				%>
				
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
		                    <div class="project">
		                        <div class="photo-wrapper">
		                            <div class="photo">
		                            	<a class="fancybox" href="../assets/images/<%=v1.get(1) %>"><img class="img-responsive" src="../assets/images/<%=v1.get(1) %>" alt=""></a>
		                            </div>
		                            <div class="overlay"></div>
		                        </div>
		                    </div>
		                </div>
		                <%
		                	int status=(int)v1.get(4);
		                	if(status==0)
		                	{
		                		%>
		                		<label>showing</label>
		                		<a href="../Changestatus?productId=<%=v1.get(0) %>&prostatus=<%=0%>"><button type="button" style="color:red">Disable</button></a>
		                		
		               		 <%}else{%>
		                		<label>Disabled</label>
		                		<a href="../Changestatus?productId=<%=v1.get(0) %>&prostatus=<%=1%>"><button type="button" style="color:green">Show</button></a>
		                	
		                	<%}%>
		                	
		                
		                
		                
		                <label></label>
					</div><!-- col-lg-4 -->
					
					<% } %>
					
				</div><!-- /row -->

				

		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="gallery.jsp#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
	<script src="../assets1/js/fancybox/jquery.fancybox.js"></script>    
    <script src="../assets1/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="../assets1/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="../assets1/js/jquery.scrollTo.min.js"></script>
    <script src="../assets1/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="../assets1/js/common-scripts.js"></script>

    <!--script for this page-->
  
  <script type="text/javascript">
      $(function() {
        //    fancybox
          jQuery(".fancybox").fancybox();
      });

  </script>
  
  <script>
      //custom select box

      $(function(){
          $("select.styled").customSelect();
      });

  </script>

  </body>
</html>

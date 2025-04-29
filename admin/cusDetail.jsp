<!DOCTYPE html>
<%@page import="com.app.DAO.customerDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Vector"%>
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
      <section id="main-content">
          <section class="wrapper">


              <div class="row mt">
                  <div class="col-md-12">
                      <div class="content-panel">
                          <table class="table table-striped table-advance table-hover">
	                  	  	  <h4><i class="fa fa-angle-right"></i> Advanced Table</h4>
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th> Customer Id</th>
                                  <th> Name</th>
                                  <th> Address</th>
                                  <th> Email</th>
                                  <th> Phone</th>
                                  <th> Username</th>
                                  <th></th>
                              </tr>
                              </thead>
                              <%
                              	customerDAO dao=new customerDAO();
                      			List lst=dao.getAllData();
								for(int i=0;i<lst.size();i++)
								{
									Vector v1=(Vector)lst.get(i);
	
								%>
                              <tbody>
                              <tr>
                                  <td><%= v1.get(0)  %></td>
                                  <td><%= v1.get(1)  %></td>
                                  <td><%= v1.get(2)  %></td>
                                  <td><%= v1.get(3)  %></td>
                                  <td><%= v1.get(4)  %></td>
                                  <td><%= v1.get(5)  %></td>
                                  <td><button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                                      <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button></td>
                                      
                              </tr>
                              </tbody>
                              <%} %>
                          </table>
                      </div><!-- /content-panel -->
                  </div><!-- /col-md-12 -->
              </div><!-- /row -->

		</section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="basic_table.jsp#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="../assets1/js/jquery.js"></script>
    <script src="../assets1/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="../assets1/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="../assets1/js/jquery.scrollTo.min.js"></script>
    <script src="../assets1/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="../assets1/js/common-scripts.js"></script>

    <!--script for this page-->
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>

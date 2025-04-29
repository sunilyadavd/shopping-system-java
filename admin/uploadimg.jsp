<!DOCTYPE html>
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
          	<h3><i class="fa fa-angle-right"></i> Upload Image</h3>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i> Image Details</h4>
                      <form class="form-horizontal style-form" method="post" action="../ImageServlet" 
           enctype="multipart/form-data">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Price</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="price">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Type</label>
                              <div class="col-sm-10">
                                  <select id="cars" name="type">
  									 <option value="men">men</option>
 	 	  							 <option value="women">women</option>
   									 <option value="kid">kid</option>
   									 <option value="acc">accessories</option>
								 </select>
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Image File</label>
                              <div class="col-sm-3">
                                  <input type="file" name="photo" >
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label"></label>
                              <div class="col-sm-5">
                                  <input  type="submit" >
                              </div>
                          </div>
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
          	<%-- <div>
          		<h1><% if(request.getAttribute("msg")!=null)
          			{
          				out.print(request.getAttribute("msg"));
          			}%></h1>
          	</div> --%>
          	      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="uploadimg.jsp#" class="go-top">
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
    <script src="../assets1/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="../assets1/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="../assets1/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="../assets1/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="../assets1/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="../assets1/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="../assets1/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="../assets1/js/form-component.js"></script>    
    
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>

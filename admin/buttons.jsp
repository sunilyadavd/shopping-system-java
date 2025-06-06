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
      		<div class="row mt">
      			<div class="col-lg-6 col-md-6 col-sm-12">
      				<! -- BASIC BUTTONS -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Basic Buttons</h4>
						<button type="button" class="btn btn-default">Default</button>
						<button type="button" class="btn btn-primary">Primary</button>
						<button type="button" class="btn btn-success">Success</button>
						<button type="button" class="btn btn-info">Info</button>
						<button type="button" class="btn btn-warning">Warning</button>
						<button type="button" class="btn btn-danger">Danger</button>
      				</div><!-- /showback -->
      				
      				<! -- BUTTONS ROUND -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Buttons Round</h4>
						<button type="button" class="btn btn-round btn-default">Default</button>
						<button type="button" class="btn btn-round btn-primary">Primary</button>
						<button type="button" class="btn btn-round btn-success">Success</button>
						<button type="button" class="btn btn-round btn-info">Info</button>
						<button type="button" class="btn btn-round btn-warning">Warning</button>
						<button type="button" class="btn btn-round btn-danger">Danger</button>
      				</div><!-- /showback -->
      				
      				<! -- THEME BUTTONS -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Theme Buttons</h4>
						<!-- Standard button -->
						<button type="button" class="btn btn-theme">Theme</button>
						<button type="button" class="btn btn-theme02">Theme 02</button>
						<button type="button" class="btn btn-theme03">Theme 03</button>
						<button type="button" class="btn btn-theme04">Theme 04</button>
      				</div><!-- /showback -->
      				
      				<! -- BUTTONS GROUP -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Buttons Group</h4>
						<div class="btn-group">
						  <button type="button" class="btn btn-default">Left</button>
						  <button type="button" class="btn btn-default">Middle</button>
						  <button type="button" class="btn btn-default">Right</button>
						</div>      				
      				</div><!-- /showback -->
      				
      				<! -- BUTTONS NESTING -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Button Nesting</h4>
						<div class="btn-group">
						  <button type="button" class="btn btn-default">1</button>
						  <button type="button" class="btn btn-default">2</button>
						
						  <div class="btn-group">
						    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						      Dropdown
						      <span class="caret"></span>
						    </button>
						    <ul class="dropdown-menu">
						      <li><a href="#">Dropdown link</a></li>
						      <li><a href="#">Dropdown link</a></li>
						    </ul>
						  </div>
						</div>      					
      				</div><!-- /showback -->    				
      				<! -- SPLIT BUTTONS -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Split Buttons</h4>
						<!-- Split button -->
						<div class="btn-group">
						  <button type="button" class="btn btn-theme03">Action</button>
						  <button type="button" class="btn btn-theme03 dropdown-toggle" data-toggle="dropdown">
						    <span class="caret"></span>
						    <span class="sr-only">Toggle Dropdown</span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="#">Action</a></li>
						    <li><a href="#">Another action</a></li>
						    <li><a href="#">Something else here</a></li>
						    <li class="divider"></li>
						    <li><a href="#">Separated link</a></li>
						  </ul>
						</div>      				
      				
      				</div><!-- /showback -->
      				
      			</div><! --/col-lg-6 -->
      			
      			
      			<div class="col-lg-6 col-md-6 col-sm-12">
      				<! -- BUTTONS SIZES -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Buttons Sizes</h4>
						<p>
						  <button type="button" class="btn btn-primary btn-lg">Large button</button>
						  <button type="button" class="btn btn-default btn-lg">Large button</button>
						</p>
						<p>
						  <button type="button" class="btn btn-primary">Default button</button>
						  <button type="button" class="btn btn-default">Default button</button>
						</p>
						<p>
						  <button type="button" class="btn btn-primary btn-sm">Small button</button>
						  <button type="button" class="btn btn-default btn-sm">Small button</button>
						</p>
						<p>
						  <button type="button" class="btn btn-primary btn-xs">Extra small button</button>
						  <button type="button" class="btn btn-default btn-xs">Extra small button</button>
						</p>      					
      				</div><!-- /showback -->
      				
      				<!-- BUTTON BLOCK -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Block Buttons</h4>
						<button type="button" class="btn btn-primary btn-lg btn-block">Block level button</button>
						<button type="button" class="btn btn-default btn-lg btn-block">Block level button</button>
      				</div><!--/showback -->
      				
      				<!-- JUSTIFIED BUTTONS -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Justified Buttons</h4>
						<div class="btn-group btn-group-justified">
						  <div class="btn-group">
						    <button type="button" class="btn btn-theme">Left</button>
						  </div>
						  <div class="btn-group">
						    <button type="button" class="btn btn-theme">Middle</button>
						  </div>
						  <div class="btn-group">
						    <button type="button" class="btn btn-theme">Right</button>
						  </div>
						</div>      				
      				</div><!--/showback -->
      				
      				<!-- DROPDOWN BUTTONS -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Dropdown Buttons</h4>
      					<!-- Single button -->
						<div class="btn-group">
						  <button type="button" class="btn btn-theme dropdown-toggle" data-toggle="dropdown">
						    Action <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="#">Action</a></li>
						    <li><a href="#">Another action</a></li>
						    <li><a href="#">Something else here</a></li>
						    <li class="divider"></li>
						    <li><a href="#">Separated link</a></li>
						  </ul>
						</div>
      					<!-- Single button -->
						<div class="btn-group">
						  <button type="button" class="btn btn-theme04 dropdown-toggle" data-toggle="dropdown">
						    Action <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						    <li><a href="#">Action</a></li>
						    <li><a href="#">Another action</a></li>
						    <li><a href="#">Something else here</a></li>
						    <li class="divider"></li>
						    <li><a href="#">Separated link</a></li>
						  </ul>
						</div>
      				</div><!-- /showback -->
      				
      				<!-- BUTTONS WITH ICONS -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Buttons With Icons</h4>
						<button type="button" class="btn btn-theme"><i class="fa fa-cog"></i> Button</button>
						<button type="button" class="btn btn-theme02"><i class="fa fa-check"></i> Button</button>
						<button type="button" class="btn btn-theme04"><i class="fa fa-heart"></i> Button</button>
      				</div><!-- /showback -->
      			
      			</div><!-- /col-lg-6 -->
      			
      		</div><!--/ row -->
          </section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="buttons.jsp#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="../assets1/js/jquery.js"></script>
    <script src="../assets1/js/jjquery-1.8.3.min.js"></script>
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

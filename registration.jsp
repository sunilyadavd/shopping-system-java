<!DOCTYPE html>
<html lang="en">
<% HttpSession hs= request.getSession(false);
    if(hs!=null)
    {
    hs.invalidate();
    }
%>
 <%@ include file="header.jsp" %>

    <!-- ***** Main Banner Area Start ***** -->
    <div class="page-heading about-page-heading" id="top">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner-content">
                        <h2>Sign Up</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Contact Area Starts ***** -->
    <div class="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div id="map">
                      <iframe src="https://www.google.com/maps/embed?pb=!1m26!1m12!1m3!1d460.01000287004223!2d75.8776029548518!3d22.72526685052683!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m11!3e6!4m3!3m2!1d22.7253278!2d75.8776638!4m5!1s0x3962fd400a8df843%3A0x5410c632114a974e!2sAbhay%20Prashal%20Building%2C%20B-WING%2C%20Race%20Course%20Rd%2C%20opp.%20IDA%20Building%2C%20Race%20Course%20Road%2C%20Indore%2C%20Madhya%20Pradesh%20452003!3m2!1d22.7253388!2d75.87789479999999!5e0!3m2!1sen!2sin!4v1744650654193!5m2!1sen!2sin" width="500" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                      <!-- You can simply copy and paste "Embed a map" code from Google Maps for any location. -->
                      
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h2>User Sign Up</h2>
                    </div>
                    <form id="contact" action=registration method="post">
                        <div class="row">
                          <div class="col-lg-6">
                            <fieldset>
                              <input name="cname" type="text" id="name" placeholder="your name" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-6">
                            <fieldset>
                              <input name="email" type="text" id="email" placeholder="email address" required="">
                            </fieldset>
                          </div>
                           <div class="col-lg-6">
                            <fieldset>
                              <input name="cadd" type="text" id="name" placeholder="address" required="">
                            </fieldset>
                          </div>
                           <div class="col-lg-6">
                            <fieldset>
                              <input name="mob" type="text" id="name" placeholder="mobile" required="">
                            </fieldset>
                          </div>
                           <div class="col-lg-6">
                            <fieldset>
                              <input name="unm" type="text" id="name" placeholder="username" required="">
                            </fieldset>
                          </div>
                           <div class="col-lg-6">
                            <fieldset>
                              <input name="pw" type="text" id="name" placeholder="password" required="">
                            </fieldset>
                          </div>
         
                          <div class="col-lg-12">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
                          </div>
                        </div>
                      </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Contact Area Ends ***** -->

    <!-- ***** Subscribe Area Starts ***** -->
    <div class="subscribe">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="section-heading">
                        <h2>By Subscribing To Our Newsletter You Can Get 30% Off</h2>
                        <span>Details to details is what makes Hexashop different from the other themes.</span>
                    </div>
                    <form id="subscribe" action="" method="get">
                        <div class="row">
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="name" type="text" id="name" placeholder="Your Name" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-5">
                            <fieldset>
                              <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email Address" required="">
                            </fieldset>
                          </div>
                          <div class="col-lg-2">
                            <fieldset>
                              <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
                            </fieldset>
                          </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-4">
                    <div class="row">
                        <div class="col-6">
                            <ul>
                                <li>Store Location:<br><span>Sunny Isles Beach, FL 33160, United States</span></li>
                                <li>Phone:<br><span>010-020-0340</span></li>
                                <li>Office Location:<br><span>North Miami Beach</span></li>
                            </ul>
                        </div>
                        <div class="col-6">
                            <ul>
                                <li>Work Hours:<br><span>07:30 AM - 9:30 PM Daily</span></li>
                                <li>Email:<br><span>info@company.com</span></li>
                                <li>Social Media:<br><span><a href="#">Facebook</a>, <a href="#">Instagram</a>, <a href="#">Behance</a>, <a href="#">Linkedin</a></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Subscribe Area Ends ***** -->

<%@ include file="footer.jsp" %>

  </body>

</html>

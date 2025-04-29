  <head>
<% HttpSession hs1= request.getSession(false);
%>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Hexashop Ecommerce HTML CSS Template</title>


    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">

    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--

TemplateMo 571 Hexashop

https://templatemo.com/tm-571-hexashop

-->
    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="index.jsp" class="logo">
                            <img src="assets/images/logo.png">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#men">Men's</a></li>
                            <li class="scroll-to-section"><a href="#women">Women's</a></li>
                            <li class="scroll-to-section"><a href="#kids">Kid's</a></li>
                            <li class="submenu">
                                <a href="javascript:;">Product</a>
                                <ul>
                                    
                                    <li><a href="products.jsp">All Products</a></li>
                                     <li><a href="men.jsp">Men's Products</a></li>
                                    <li><a href="women.jsp">Women's Product</a></li>
                                    <li><a href="kid.jsp">kid's Product</a></li>
                                    <li><a href="access.jsp">Accessories</a></li>
                                    <li><a href="single-product.jsp">Single Product</a></li>
                                </ul>
                            </li> 
                            <li><a href="about.jsp">About Us</a></li>
                            <li><a href="contact.jsp">Contact Us</a></li>
                           <% if(hs1==null){ %>
                            <li class="scroll-to-section"><a href="registration.jsp">Sign-Up</a></li>
                            <li class="scroll-to-section"><a href="login.jsp">Login</a></li>
                            <%  }else{ %>
                            <li class="scroll-to-section"><a href="login.jsp">Logout</a></li>
                            <li class="scroll-to-section"><a href="cart.jsp"><i class="fa fa-shopping-cart"  style="font-size: 32px; height:45px; width:40px; " ><span class="cart-item" style="font-size: 25px;">(0)</span></i></a></li>
                             <% } %>
                             
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
        <!-- ***** Header Area End ***** -->
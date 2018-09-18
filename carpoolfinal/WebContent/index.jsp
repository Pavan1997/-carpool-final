<!DOCTYPE html>
<!--[if IE 7]>                  <html class="ie7 no-js" lang="en">     <![endif]-->
<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->
    <head>

        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>My ride</title>
        <meta name="description" content="">
        <meta name="author" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Specific Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Styles -->

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Forms -->
        <link href="css/jquery.idealforms.css" rel="stylesheet">
        <!-- Select  -->
        <link href="css/jquery.idealselect.css" rel="stylesheet">
        <!-- Slicknav  -->
        <link href="css/slicknav.css" rel="stylesheet">
        <!-- Main style -->
        <link href="css/style.css" rel="stylesheet">

        <!-- Modernizr -->
        <script src="js/modernizr.js"></script>

        <!-- Fonts -->
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href='http://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
		
		<%
	response.setHeader("cache-control", "no-cachel, np-stroe, must=revalidate");

	%>		
			
		
        <header class="header">

            <div class="top-menu">

                <section class="container">
                    <div class="row">

                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="user-log">

                                <a data-toggle="modal" data-target="#loginModal">
                                    Log in
                                </a> /
                                <a data-toggle="modal" data-target="#regModal">
                                    Sign up
                                </a>

                            </div><!-- end .user-log -->
                        </div><!-- end .col-sm-4 -->

                      

                    </div><!-- end .row -->
                </section><!-- end .container -->

            </div><!-- end .top-menu -->

            <div class="main-baner">

                <div class="fullscreen background parallax clearfix" style="background-image:url('img/tumblr_n7yhhvUQtx1st5lhmo1_1280.jpg');" data-img-width="1600" data-img-height="1064">

                    <div class="main-parallax-content">

                        <div class="second-parallax-content">

                            <section class="container">

                                <div class="row">

                                    <div class="main-header-container clearfix">

                                        <div class="col-md-4 col-sm-12 col-xs-12">

                                            <div class="logo">
                                                <h1>My ride</h1>
                                                <%String error=(String) request.getAttribute("ErrorMsg");
                                                	if(error!=null)	
                                                	out.println("<center><font color=red size=4px>"+"please login"+"</font></center>");
                                                	%>
                                            </div><!-- end .logo -->

                                        </div><!-- end .col-sm-4 -->

                                        <div class="col-md-8 col-sm-8 col-xs-12">

                                            <nav id="nav" class="main-navigation">

                                                <ul class="navigation">
                                                    <li>
                                                        <a href="index.jsp">Home</a>
                                                    </li>
                                                    <li>
                                                        <a href="rides.jsp">History</a>
                                                    </li>
                                                    <li>
                                                        <a href="add-ride.jsp">Add Ride</a>
                                                    </li>
                                                   
                                                
                                                    <li>
                                                        <a href="contact-page.jsp">Contact</a>
                                                    </li>
                                                </ul>

                                            </nav><!-- end .main-navigation -->

                                        </div><!-- end .col-md-8 -->

                                    </div><!-- end .main-header-container -->

                                </div><!-- end .row -->

                            </section><!-- end .container -->

                        </div><!-- end .second-parallax-content -->

                    </div><!-- end .main-parallax-content -->

                </div><!-- end .background .parallax -->

            </div><!-- end .main-baner -->

        </header><!-- end .header -->

        <section class="main-content">

            <div class="container">
                <div class="row">

                    <div class="page-content">

                        <div class="services clearfix">

                            <div class="col-md-12 col-sm-12 col-xs-12">

                                <div class="page-sub-title textcenter">
                                    <h2>Services</h2>
                                    <div class="line"></div>
                                </div><!-- end .page-sub-title -->

                            </div><!-- end .col-md-12 col-sm-12 col-xs-12 -->

                            <div class="col-md-4 col-sm-4 col-xs-12">

                                <article class="service">

                                    <i class="fa fa-car"></i>

                                    <h3>Share your ride</h3>
                                    <p>Are you getting sick of traveling alone and spent so much money on gas? Share your ride today,and forget about this problems.</p>


                                </article><!-- end .service -->

                            </div><!-- end .col-md-4 -->

                            <div class="col-md-4 col-sm-4 col-xs-12">

                                <article class="service">

                                    <i class="fa fa-users"></i>

                                    <h3>Find new friends</h3>
                                    <p>Finding new friends is easier than ever,nothing makes better friendship than spending few hours casually chatting with some interesting people.</p>

                                </article><!-- end .service -->

                            </div><!-- end .col-md-4 -->

                            <div class="col-md-4 col-sm-4 col-xs-12">

                                <article class="service">

                                    <i class="fa fa-map-marker"></i>

                                    <h3>Go to new places</h3>
                                    <p> Find some new favourite place to chill out,you have no longer got excuse for not travelling and discovering. </p>

                                </article><!-- end .service -->

                            </div><!-- end .col-md-4 -->

                        </div><!-- end .services -->

                        <div class="clearfix"></div>

                        <div class="col-md-12 col-sm-12 col-xs-12">

                            <div class="background parallax" style="background-image:url('img/XWBIL5.jpg');" data-img-width="1600" data-img-height="1064">

                                <div class="main-parallax-content">

                                    <div class="second-parallax-content">

                                        <div class="parallax-content clearfix">

                                            <div class="col-md-4 col-sm-4 col-xs-12">
                                                <div class="site-stat">
                                                    <span class="counter">5,000</span>
                                                    <span>Happy users</span>
                                                </div>
                                            </div>

                                            <div class="col-md-4 col-sm-4 col-xs-12">
                                                <div class="site-stat">
                                                    <span class="counter">7,000</span>
                                                    <span>Successful rides</span>
                                                </div>
                                            </div>

                                            <div class="col-md-4 col-sm-4 col-xs-12">
                                                <div class="site-stat">
                                                    <span class="counter">600,000</span>
                                                    <span>Miles traveled in a good company</span>
                                                </div>
                                            </div>

                                        </div><!-- end .parallax-content -->

                                    </div><!-- end .main-parallax-content -->

                                </div><!-- end .paralax -->

                            </div><!-- end .fullscreen .background .parallax -->

                        </div><!-- end .col-md-12 -->

                       

                            

                    </div><!-- end .page-content -->

                </div><!-- end .row -->
            </div><!-- end .container -->

        </section><!-- end .main-content -->

        <footer id="footer">

            <div class="footer-copyright">

                <div class="container">
                    <div class="row">

                        <div class="col-md-12 col-sm-12 col-xs-12">
                            Copyright by My ride
                        </div>

                    </div><!-- end .row -->
                </div><!-- end .container -->

            </div><!-- end .footer-copyright -->

        </footer><!-- end #footer -->

        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div><!-- end .modal-header -->

                    <div class="modal-body">
                        <form action="login" method="post" novalidate autocomplete="off" class="idealforms login">

                            <div class="log-header">
                                <span class="log-in">Log in</span>
                            </div>

                            <div class="field">
                                <input name="Email" type="text" placeholder="Email">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input type="password" name="password" placeholder="Password">
                                <span class="error"></span>
                            </div>

                            <div class="field buttons">
                                <button type="submit" class="submit btn green-color">Log in</button>
                            </div>

                         

                            <div class="clearfix"></div>

                        </form><!-- end .login -->
                    </div><!-- end .modal-body -->

                </div><!-- end .modal-content -->
            </div><!-- end .modal-dialog -->
        </div><!-- end .modal -->

        <div class="modal fade" id="regModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">

                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>

                    <div class="modal-body">
                        <form action="register" method="post" novalidate autocomplete="off" class="idealforms reg">

                            <div class="log-header">
                                <span class="log-in">Sign up</span>
                            </div>

                            <div class="field">
                                <input name="firstname" type="text" placeholder="First Name">
                                <span class="error"></span>
                            </div>
                            <div class="field">
                                <input name="lastname" type="text"  placeholder="Last Name">
                                <span class="error"></span>
                            </div>
                            
                            <div class="field">
                                <input name="gender" type="text"  placeholder="Gender">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input name="email" type="email"  placeholder="E-Mail">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input type="password" name="password" placeholder="Password">
                                <span class="error"></span>
                            </div>

                            <div class="field">
                                <input name="confirmpass" type="password"  placeholder="Password">
                                <span class="error"></span>
                            </div>
                            
                            <div class="field">
                                <input name="phonenumber" type="text"  placeholder="Phone Number">
                                <span class="error"></span>
                            </div>
                            
                            <div class="field">
                                <input name="UserType" type="text"  placeholder="User Type">
                                <span class="error"></span>
                            </div>
                            

                            <div class="field buttons">
                                <button type="submit" class="submit btn green-color">Sign up</button>
                            </div>

                            <div class="clearfix"></div>

                        </form><!-- end .reg -->
                    </div><!-- end .modal-body -->

                </div><!-- end .modal-content -->
            </div><!-- end .modal-dialog -->
        </div><!-- end .modal -->

        <!-- Javascript -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- Main jQuery -->
        <script type="text/javascript" src="js/jquery.main.js"></script>
        <!-- Form -->
        <script type="text/javascript" src="js/jquery.idealforms.min.js"></script>
        <script type="text/javascript" src="js/jquery.idealselect.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.10.4.custom.min.js"></script>
        <!-- Menu -->
        <script type="text/javascript" src="js/hoverIntent.js"></script>
        <script type="text/javascript" src="js/superfish.js"></script>
        <!-- Counter-Up  -->
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
        <script type="text/javascript" src="js/jquery.counterup.min.js"></script>
        <!-- Rating  -->
        <script type="text/javascript" src="js/bootstrap-rating-input.min.js"></script>
        <!-- Slicknav  -->
        <script type="text/javascript" src="js/jquery.slicknav.min.js"></script>

    </body>
</html>

<!DOCTYPE html>
<!--[if IE 7]>                  <html class="ie7 no-js" lang="en">     <![endif]-->
<!--[if lte IE 8]>              <html class="ie8 no-js" lang="en">     <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html class="not-ie no-js" lang="en">  <!--<![endif]-->
    <head>

        <!-- Basic Page Needs -->
        <meta charset="utf-8">
        <title>My ride - Rides</title>
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
	if(session.getAttribute("EmailID")==null)
		response.sendRedirect("index.jsp");
%>		

        <header class="header">

           <div class="top-menu">

                <section class="container">
                    <div class="row">

                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="user-log">

                                <a data-toggle="modal" >
                                   <a href="index.jsp">Log out</a>
                               
                                </a>

                            </div><!-- end .user-log -->
                        </div><!-- end .col-sm-4 -->

                        <div class="col-md-8 col-sm-8 col-xs-12">

                            <ul class="social-icons">
                                <li>
                                    <a class="facebook" href="#">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li>
                                    <a class="twitter" href="#">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a class="google" href="#">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </li>
                            </ul>

                   

                    </div><!-- end .row -->
                   
                </section><!-- end .container -->

            </div><!-- end .top-menu -->

            <div class="main-baner">

                <div class="background parallax clearfix" style="background-image:url('img/tumblr_n7yhhvUQtx1st5lhmo1_1280.jpg');" data-img-width="1600" data-img-height="1064">

                    <div class="main-parallax-content">

                        <div class="second-parallax-content">

                            <section class="container">

                                <div class="row">

                                    <div class="main-header-container clearfix">

                                        <div class="col-md-4 col-sm-12 col-xs-12">

                                            <div class="logo">
                                                <h1>My ride</h1>
                                            </div><!-- end .logo -->

                                        </div><!-- end .col-sm-4 -->

                                        <div class="col-md-8 col-sm-8 col-xs-12">

                                            <nav id="nav" class="main-navigation">

                                                <ul class="navigation">
                                                    <li>
                                                        <a href="home.jsp">Home</a>
                                                    </li>
                                                    <li>
                                                        <a href="rides.jsp">rides</a>
                                                    </li>
                                                    <li>
                                                        <a href="add-ride.jsp">Submit</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Pages</a>
                                                        <ul class="sub-menu">
                                                            <li>
                                                                <a href="events.jsp">Events</a>
                                                            </li>
                                                            <li>
                                                                <a href="single-post.jsp">Single post</a>
                                                            </li>
                                                            <li>
                                                                <a href="single-article.jsp">Single article</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li>
                                                        <a href="blog.jsp">Blog</a>
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

                            <div class="col-md-12 col-sm-12 col-xs-12">

                                <div class="search-content">

                                    <form action="RideHistoryServlet" method= "post" novalidate autocomplete="off" class="idealforms searchtours">

                                        <div class="row">

                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <div class="field">
                                                    <select id="from" name="from">
                                                        <option value="default">From</option>
                                                        <option>uppal</option>
                                        <option>Secunderabad</option>
                                        <option>warangal</option>
                                        <option>medchal</option>
                                        <option>kukatpally</option>
                                        <option>Miyapur</option>
                                        <option>basheerbagh</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                    <select id="to" name="to">
                                                        <option value="default">To</option>
                                                        <option>Secunderabad</option>
														<option>vanasthalipuram</option>
														<option>Nagole</option>
														<option>Bandlaguda</option>
														<option>narayanguda</option>
														<option>Himayatnagar</option>
														<option>Liberty</option>
                                                    </select>
                                                </div>

                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                    <input name="event" type="text" placeholder="Date" class="datepicker">
                                                </div>


                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                    <select id="seats" name="seats">
                                                        <option value="default">Number of seats</option>
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                    </select>
                                                </div>

                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field buttons">
                                                    <button type="submit" class="btn btn-lg green-color">Search</button>
                                                </div>

                                            </div>

                                        </div>


                                    </form>
                                </div><!-- end .search-content -->

                            </div><!-- end .col-sm-12 -->

                        </div><!-- end .second-parallax-content -->

                    </div><!-- end .main-parallax-content -->

                </div><!-- end .background .parallax -->

            </div><!-- end .main-baner -->

        </header><!-- end .header -->

        <section class="main-content">

            <div class="container">
                <div class="row">

                    <div class="col-md-12 col-sm-12 col-xs-12">

                        <div class="page-sub-title textcenter">
                            <h2>All rides</h2>
                            <div class="line"></div>
                        </div><!-- end .page-sub-title -->

                    </div><!-- end .col-md-12 col-sm-12 col-xs-12 -->

                    <div class="col-md-12 col-sm-12 col-xs-12">

                        <div class="page-content">

                            <div class="rides-list">
							<tr>
				<td> <%= request.getAttribute("From") %></td>
				<td> <%= request.getAttribute("To") %></td>
				<td> <%= request.getAttribute("date") %></td>
				<td> <%= request.getAttribute("seats") %></td>
			<%
				
				 
			request.setAttribute("eemailid", session.getAttribute("EmailID"));
			%>
			 
				</tr>

                                <article class="ride-box clearfix">
								

                                    <div class="ride-content">
                                        <h3><a href="#">From Plovdiv to Sofia</a></h3>ride by <a href="#">Stefan Valkov</a>
                                    </div>

                                    <ul class="ride-meta">

                                        <li class="ride-date">
                                            <a href="#" class="tooltip-link" data-original-title="Date" data-toggle="tooltip">
                                                <i class="fa fa-calendar"></i>
                                                July 20, 2014 at 19:00 PM
                                            </a>
                                        </li><!-- end .ride-date -->

                                        <li class="ride-people">
                                            <a href="#" class="tooltip-link" data-original-title="Number of seats" data-toggle="tooltip">
                                                <i class="fa fa-user"></i>
                                                1
                                            </a>
                                        </li><!-- end .ride-people -->

                                        <li>
                                            <a href="#">
                                                <i class="fa fa-file"></i>
                                                Read more
                                            </a>
                                        </li>

                                    </ul><!-- end .ride-meta -->

                                </article><!-- end .ride-box -->

                                <article class="ride-box clearfix">

                                    <div class="ride-content">
                                        <h3><a href="#">From Milano to Rome</a></h3>ride by <a href="#">Carlo Corti</a>
                                    </div>

                                    <ul class="ride-meta">

                                        <li class="ride-date">
                                            <a href="#" class="tooltip-link" data-original-title="Date" data-toggle="tooltip">
                                                <i class="fa fa-calendar"></i>
                                                July 18, 2014 at 06:00 AM
                                            </a>
                                        </li><!-- end .ride-date -->

                                        <li class="ride-people">
                                            <a href="#" class="tooltip-link" data-original-title="Number of seats" data-toggle="tooltip">
                                                <i class="fa fa-user"></i>
                                                4
                                            </a>
                                        </li><!-- end .ride-people -->

                                        <li>
                                            <a href="#">
                                                <i class="fa fa-file"></i>
                                                Read more
                                            </a>
                                        </li>

                                    </ul><!-- end .ride-meta -->

                                </article><!-- end .ride-box -->

                                <article class="ride-box clearfix">

                                    <div class="ride-content">
                                        <h3><a href="#">From Lyon to Paris</a></h3>ride by <a href="#">Antoine Bonnet</a>
                                    </div>

                                    <ul class="ride-meta">

                                        <li class="ride-date">
                                            <a href="#" class="tooltip-link" data-original-title="Date" data-toggle="tooltip">
                                                <i class="fa fa-calendar"></i>
                                                July 15, 2014 at 20:00 PM
                                            </a>
                                        </li><!-- end .ride-date -->

                                        <li class="ride-people">
                                            <a href="#" class="tooltip-link" data-original-title="Number of seats" data-toggle="tooltip">
                                                <i class="fa fa-user"></i>
                                                3
                                            </a>
                                        </li><!-- end .ride-people -->

                                        <li>
                                            <a href="#">
                                                <i class="fa fa-file"></i>
                                                Read more
                                            </a>
                                        </li>

                                    </ul><!-- end .ride-meta -->

                                </article><!-- end .ride-box -->

                                <article class="ride-box clearfix">

                                    <div class="ride-content">
                                        <h3><a href="#">From Barcelona to Madrid</a></h3>ride by <a href="#">Adriana Bello</a>
                                    </div>

                                    <ul class="ride-meta">

                                        <li class="ride-date">
                                            <a href="#" class="tooltip-link" data-original-title="Date" data-toggle="tooltip">
                                                <i class="fa fa-calendar"></i>
                                                July 10, 2014 at 09:00 AM
                                            </a>
                                        </li><!-- end .ride-date -->

                                        <li class="ride-people">
                                            <a href="#" class="tooltip-link" data-original-title="Number of seats" data-toggle="tooltip">
                                                <i class="fa fa-user"></i>
                                                2
                                            </a>
                                        </li><!-- end .ride-people -->

                                        <li>
                                            <a href="#">
                                                <i class="fa fa-file"></i>
                                                Read more
                                            </a>
                                        </li>
                                    </ul><!-- end .ride-meta -->

                                </article><!-- end .ride-box -->

                                <article class="ride-box clearfix">

                                    <div class="ride-content">
                                        <h3><a href="#">From Munich to Berlin</a></h3>ride by <a href="#">Albert Becker</a>
                                    </div>

                                    <ul class="ride-meta">

                                        <li class="ride-date">
                                            <a href="#" class="tooltip-link" data-original-title="Date" data-toggle="tooltip">
                                                <i class="fa fa-calendar"></i>
                                                July 08, 2014 at 22:00 PM
                                            </a>
                                        </li><!-- end .ride-date -->

                                        <li class="ride-people">
                                            <a href="#" class="tooltip-link" data-original-title="Number of seats" data-toggle="tooltip">
                                                <i class="fa fa-user"></i>
                                                1
                                            </a>
                                        </li><!-- end .ride-people -->

                                        <li>
                                            <a href="#">
                                                <i class="fa fa-file"></i>
                                                Read more
                                            </a>
                                        </li>

                                    </ul><!-- end .ride-meta -->

                                </article><!-- end .ride-box -->

                                <div class="clearfix"></div>

                                <div class="post-pagination pagination-margin clearfix">

                                    <div class="next pull-right">
                                        <a href="#">
                                            Next
                                            <i class="fa fa-chevron-right"></i>
                                        </a>
                                    </div>

                                </div><!-- end .post-pagination -->

                            </div><!-- end .events-list -->

                        </div><!-- end .page-content -->

                    </div><!-- end .col-md-12 col-sm-12 col-xs-12 -->

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

       

        <!-- Javascript -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- Main jQuery -->
        <script type="text/javascript" src="js/jquery.main.js"></script>
        <!-- Form -->
        <script type="text/javascript" src="js/jquery.idealforms.min.js"></script>
        <script type="text/javascript" src="js/jquery.idealselect.min.js"></script>
        <script type="text/javascript" src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
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

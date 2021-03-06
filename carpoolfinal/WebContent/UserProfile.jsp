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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script>
     



        // this is for jquery:
        $(document).ready(function () {
        	$("#submitbutton").css("display","none");
            $("#editbutton").click(function () {
            	$(this).css("display","none");
                $("#form").find(":input").each(function (index, value) {
                    value.removeAttribute("readonly");
                })
                
                $("#submitbutton").css("display","block");
            })
        }) 
    </script>

    </head>

    <body>
    <%
	//response.setHeader("cache-control", "no-cachel, np-stroe, must=revalidate");
	//if(session.getAttribute("EmailID")==null)
		//response.sendRedirect("index.jsp");
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
                                                        <a href="rides.jsp">History</a>
                                                    </li>
                                                    <li>
                                                        <a href="add-ride.jsp">Add ride</a>
                                                    </li>
                                                      <li>
                                                        <a href="profilepage">profile</a>
                                                    </li>
                                                   

                                            </nav><!-- end .main-navigation -->

                                        </div><!-- end .col-md-8 -->

                                    </div><!-- end .main-header-container -->

                                </div><!-- end .row -->

                            </section><!-- end .container -->

                            <div class="col-md-12 col-sm-12 col-xs-12">

                                <div class="search-content">

                                    <form action="updateuser" method= "post" novalidate autocomplete="off" class="idealforms searchtours">

                                        <div class="row">

                                            <div class="col-md-3 col-sm-3 col-xs-12">
                                                <div class="field">
                                                <h2>First name</h2>
                                                   <input type="text" name="firstname" value="${displayuser.firstname}">
                                                </div>
                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                <h2>Last Name</h2>
                                                   <input type="text" name="lastname" value="${displayuser.lastname}">
                                                </div>

                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                <h2>gender</h2>
                                                   <input type="text" name ="gender" value="${displayuser.gender}">
                                                </div>


                                            </div>
                                              <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                <h2>Mobile number</h2>
                                                  <input type="text" name="mobileno" value="${displayuser.mobileno}" >
                                                </div>


                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field">
                                                <h2>Email ID</h2>
                                                  <input type="text" name="mail" value="${displayuser.emailId}" readonly>
                                                </div>

                                            </div>

                                            <div class="col-md-3 col-sm-3 col-xs-12">

                                                <div class="field buttons">
                                                <br>
                                                 <br>
                                                  
                                                    <button id="editbutton"  class="btn btn-lg green-color" type="button">Edit</button>
                   									 <button id="submitbutton" class="btn btn-lg green-color" type="submit">Update</button>
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
                                        <h3><a href="#">From <%= request.getAttribute("From") %> to <%= request.getAttribute("To") %></a></h3>
                                    </div>

                                    <ul class="ride-meta">

                                        <li class="ride-date">
                                            <a href="#" class="tooltip-link" data-original-title="Date" data-toggle="tooltip">
                                                <i class="fa fa-calendar"></i>
                                               <%= request.getAttribute("date") %>
                                            </a>
                                        </li><!-- end .ride-date -->

                                        <li class="ride-people">
                                            <a href="#" class="tooltip-link" data-original-title="Number of seats" data-toggle="tooltip">
                                                <i class="fa fa-user"></i>
                                              <%= request.getAttribute("seats") %>
                                            </a>
                                        </li><!-- end .ride-people -->

                                      

                                    </ul><!-- end .ride-meta -->

                                </article><!-- end .ride-box -->

                              

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

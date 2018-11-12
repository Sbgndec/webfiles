<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Events!</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/atharva/css/bootstrap.min.css">
    <link rel="shortcut icon" href="/atharva/images/atharva.jpg" />
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="/atharva/css/fontawesome-all.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="/atharva/css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="/atharva/style.css">
</head>

<body class="elements-page">
    <header class="site-header">
        <div class="header-bar">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-10 col-lg-4">
                        <h1 class="site-branding flex">
                            <a href="/atharva/">Atharva</a>
                        </h1>
                    </div>

                    <div class="col-2 col-lg-8">
                        <nav class="site-navigation">
                            <div class="hamburger-menu d-lg-none">
                                <span></span>
                                <span></span>
                                <span></span>
                                <span></span>
                            </div><!-- .hamburger-menu -->

                            <ul>
                                <li><a href="/atharva/">HOME</a></li>
                                <li><a href="#">Atharva 2018</a></li>
                                <li><a href="/atharva/register.html">Register</a></li>
                                <li><a href="/atharva/about-us.html">About Us</a></li>
                                <li><a href="/atharva/contact.html">Contact</a></li>
                                <li><a href="#"><i class="fas fa-search"></i></a></li>
                            </ul><!-- flex -->
                        </nav><!-- .site-navigation -->
                    </div><!-- .col-12 -->
                </div><!-- .row -->
            </div><!-- container-fluid -->
        </div><!-- header-bar -->
    </header><!-- .site-header -->

    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="entry-header">
                        <h2 class="entry-title">Events</h2>

                        <ul class="breadcrumbs flex align-items-center">
                            <li><a href="#">Home</a></li>
                            <li>Events</li>
                        </ul><!-- .breadcrumbs -->
                    </div><!-- .entry-header -->
                </div><!-- .col-12 -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .page-header -->

    <div class="main-content">
        <div class="container">
            <div class="row elements-wrap">
                <div class="col-12 buttons-wrap">
                    <div class="entry-header">
                        <h2 class="entry-title"><?php
                                 include 'db.in.php';
                                $id=mysqli_real_escape_string($conn,$_GET['id']);
                                if($id>=1&&$id<=20)
                                 {
                                     $esql="SELECT * FROM events WHERE event_id = '$id' ";
                                    $tasks = mysqli_query($conn,$esql);
                                    $row = mysqli_fetch_array($tasks);   
                                    echo $row['name'];
                                 }
                                 else{
                                    header ('LOCATION: ../events');
                                 }  
                            ?></h2>
                            <p class="entry-content flex" ><?php echo $row['about']?></p>
                    </div><!-- entry-header -->
                            <div class="col-12"><br><br><br></div>
                    <div class="entry-content flex">
                        <div class="elements-form">
                            <form action="/atharva/es.php" method="POST">
                                <div class="row">
                                    <div class="col-12 col-lg-6">
                                        <input type="text" name="reid" placeholder="Your Registeration Id">
                                    </div>
                                    <div class="col-lg-1"><input type="hidden" name="evid" value="<?php echo $id;?>" ></div>
                                    <div class="col-12 col-lg-5 submit flex justify-content-center">
                                        <input type="submit" name="submit" value="Participate" class="btn gradient">
                                    </div>
                                    
                                </div><!-- row -->
                            </form>
                        </div><!-- elemments-form -->
                    </div><!-- entry-content -->
                </div><!-- col-12 -->
            </div><!-- row elements-wrap -->

            <div class="row elements-wrap">
                <div class="col-12 accordion-and-tabs-wrap">
                    <div class="entry-header">
                        <h2 class="entry-title">Assistance & tabs</h2>
                    </div><!-- entry-header -->

                    <div class="entry-content">
                        <div class="row">
                            <div class="col-12 col-lg-5">
                                <div class="accordion-wrap type-accordion">
                                    <h3 class="entry-title active flex justify-content-between">Can I Participate?<span class="arrow-r"></span></h3>

                                    <div class="entry-content">
                                        <p>Yes, Any Student can participate provided he/she pays the registeration fees on the day of the Event to the respective head.</p>
                                    </div>

                                    <h3 class="entry-title flex justify-content-between">Do I have to register for the event?<span class="arrow-r"></span></h3>

                                    <div class="entry-content">
                                        <p>Yes, You must Register. Provide your Registeration id in the above mentioned blank and click on Participate.</p>
                                    </div>

                                    <h3 class="entry-title flex justify-content-between">Do I need a prerequisite?<span class="arrow-r"></span></h3>

                                    <div class="entry-content">
                                        <p>Anything required in or during the event is mentioned in the details tab of the event. You must go through that before participating.</p>
                                    </div>
                                </div>
                            </div><!-- col-5 -->

                            <div class="col-12 col-lg-7 mt-5 mt-lg-0">
                                <div class="tabs">
                                    <ul class="tabs-nav flex">
                                        <li class="tab-nav flex justify-content-center align-items-center active"
                                            data-target="#tab_details">Details</li>
                                        <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_venue">Venue</li>
                                        <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_organizers">Rules & Regulations</li>
                                    </ul><!-- tabs-nav -->

                                    <div class="tabs-container">
                                        <div id="tab_details" class="tab-content" >
                                            <p class="entry-content"><?php
                                            echo $row['details']?></p>
                                        </div>

                                        <div id="tab_venue" class="tab-content">
                                             <p class="entry-content"><?php
                                            echo $row['venue']?></p>
                                        </div>

                                        <div id="tab_organizers" class="tab-content">
                                           <p class="entry-content"><?php
                                            echo $row['rar']?></p>
                                        </div>

                                       
                                    </div>
                                </div>
                            </div><!-- col-7 -->
                        </div><!-- row -->
                    </div><!-- entry-content -->
                </div><!-- col-12 -->
            </div><!-- row elements-wrap -->

            
        </div><!-- container -->
    </div><!-- main-content -->

    <footer class="site-footer">
        <div class="footer-cover-title flex justify-content-center align-items-center">
            <h2>Atharva</h2>
        </div><!-- .site-footer -->

        <div class="footer-content-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="entry-title">
                            <a href="#">Atharva</a>
                        </div><!-- entry-title -->

                        <div class="entry-mail">
                            <a href="#">atharva2k18@gmail.com</a>
                        </div><!-- .entry-mail -->



                        <div class="footer-social">
                            <ul class="flex justify-content-center align-items-center">
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                            </ul>
                        </div><!-- footer-social -->
                    </div><!-- col -->
                </div><!-- row -->
            </div><!-- container -->
        </div><!-- footer-content-wrapper -->
    </footer><!-- site-footer -->

    <script type='text/javascript' src='/atharva/js/jquery.js'></script>
    <script type='text/javascript' src='/atharva/js/masonry.pkgd.min.js'></script>
    <script type='text/javascript' src='/atharva/js/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='/atharva/js/swiper.min.js'></script>
    <script type='text/javascript' src='/atharva/js/jquery.countdown.min.js'></script>
    <script type='text/javascript' src='/atharva/js/circle-progress.min.js'></script>
    <script type='text/javascript' src='/atharva/js/jquery.countTo.min.js'></script>
    <script type='text/javascript' src='/atharva/js/custom.js'></script>
</body>

</html>
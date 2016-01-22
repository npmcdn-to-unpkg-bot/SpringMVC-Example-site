<!DOCTYPE HTML>
<html>
<head>
    <title>Chat</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Learn Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="assets/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- Custom Theme files -->
    <link href="assets/css/style.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="assets/css/jquery.countdown.css"/>
    <link href='${pageContext.request.contextPath}//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700'
          rel='stylesheet' type='text/css'>
    <!----font-Awesome----->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!----font-Awesome----->
    <script>
        $(document).ready(function () {
            $(".dropdown").hover(
                    function () {
                        $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                        $(this).toggleClass('open');
                    },
                    function () {
                        $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                        $(this).toggleClass('open');
                    }
            );
        });
    </script>
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Chat</a>
        </div>
        <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="login"><i class="fa fa-user"></i><span>Admin</span></a>
                </li>

                <li class="dropdown">
                    <a href="login"><i class="fa fa-user"></i><span>Login</span></a>
                </li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="fa fa-globe"></i><span>English</span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#"><span><i class="flags us"></i><span>English</span></span></a></li>
                        <li><a href="#"><span><i class="flags newzland"></i><span>Uzbek</span></span></a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                            class="fa fa-search"></i><span>Search</span></a>
                    <ul class="dropdown-menu search-form">
                        <form>
                            <input type="text" class="search-text" name="s" placeholder="Search...">
                            <button type="submit" class="search-submit"><i class="fa fa-search"></i></button>
                        </form>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
</nav>
<nav class="navbar nav_bottom" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header nav_2">
            <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse"
                    data-target="#bs-megadropdown-tabs">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
            <ul class="nav navbar-nav nav_1">
                <li><a href="/">Home</a></li>
                <li class="dropdown mega-dropdown active">
                    <div class="dropdown-menu mega-dropdown-menu">
                        <div class="container-fluid">
                            <!-- Tab panes -->
                            <div class="tab-content">

                                <div class="tab-pane" id="women">
                                    <ul class="nav-list list-inline">
                                        <li><a href="admission.html"><img src="assets/images/t1.jpg"
                                                                          class="img-responsive"
                                                                          alt=""/></a></li>
                                        <li><a href="admission.html"><img src="assets/images/t2.jpg"
                                                                          class="img-responsive"
                                                                          alt=""/></a></li>
                                        <li><a href="admission.html"><img src="assets/images/t3.jpg"
                                                                          class="img-responsive"
                                                                          alt=""/></a></li>
                                        <li><a href="admission.html"><img src="assets/images/t4.jpg"
                                                                          class="img-responsive"
                                                                          alt=""/></a></li>
                                        <li><a href="admission.html"><img src="assets/images/t5.jpg"
                                                                          class="img-responsive"
                                                                          alt=""/></a></li>
                                        <li><a href="admission.html"><img src="assets/images/t6.jpg"
                                                                          class="img-responsive"
                                                                          alt=""/></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="active"><a href="#men" role="tab" data-toggle="tab">School</a></li>
                            <li><a href="#women" role="tab" data-toggle="tab">College</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="/translate">Translate</a></li>
                <li><a href="/bookStory">Book Story</a></li>
                <li><a href="/contact">Contacts</a></li>
                <li class="last"><a href="/chat"> Online Chat</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div>
</nav>

<!-- banner -->
<div class="courses_banner">
    <div class="container">
        <h3>Chat</h3>

        <p class="description">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer lorem quam, adipiscing condimentum
            tristique vel, eleifend sed turpis. Pellentesque cursus arcu id magna euismod in elementum purus molestie.
        </p>

        <div class="breadcrumb1">
            <ul>
                <li class="icon6"><a href="/">Home</a></li>
                <li class="current-page">Chat</li>
            </ul>
        </div>
    </div>
</div>
<!-- //banner -->
<div class="features">
    <div class="container">
        <form class="contact_form">
            <h2>Chat</h2>

            <div class="col-md-6 grid_6">
                <input type="text" class="text" value="Name" placeholder="name" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Name';}" name="name" id="name">
                <input type="text" class="text" value="Email" placeholder="email" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Email';}" name="email" id="email">
                <input type="text" class="text" value="Phone" placeholder="phone" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Phone';}" name="phone" id="phone">
            </div>

            <div class="col-md-6 grid_6">
                <textarea value="Message" placeholder="message" onfocus="this.value = '';"
                          onblur="if (this.value == '') {this.value = 'Message';}" name="message"
                          id="message">Message</textarea>
            </div>
            <div class="clearfix"></div>
            <div class="btn_3">
                <a class="more_btn" data-type="submit" onclick="redFunction()" style="cursor: pointer">Send message</a>
            </div>
        </form>


    </div>
</div>
<div class="footer">
    <div class="container">
        <div class="col-md-3 grid_4">
            <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                ex ea commodo consequat.."</p>
            <ul class="social-nav icons_2 clearfix">
                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                <li><a href="#" class="facebook"> <i class="fa fa-facebook"></i></a></li>
                <li><a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a></li>
            </ul>
        </div>
        <div class="col-md-3 grid_4">
            <h3>Quick Links</h3>
            <ul class="footer_list">
                <li><a href="#">- PRIOR LEARNING ASSESSMENT </a></li>
                <li><a href="#">- INTERNATIONAL STUDENTS</a></li>
                <li><a href="#">- CAREER OPPORTUNITIES</a></li>
                <li><a href="#">- NEW STUDENT ORIENTATION</a></li>
                <li><a href="#">- NEW CLASSROOM TECHNOLOGY</a></li>
            </ul>
        </div>
        <div class="col-md-3 grid_4">
            <h3>Chat</h3>
            <address>
                <strong>Contrary to popular belief</strong>
                <br>
                <span>4877 It is a long established</span>
                <br><br>
                <span>Contrary to popular , 15089</span>
                <br>
                <abbr>Telephone : </abbr> +1 (734) 123-4567
                <br>
                <abbr>Email : </abbr> <a href="mailto@example.com">info(at)Learn.com</a>
            </address>
        </div>
        <div class="col-md-3 grid_4">
            <h3>Working Hours</h3>
            <table class="table_working_hours">
                <tbody>
                <tr class="opened_1">
                    <td class="day_label">monday</td>
                    <td class="day_value">9:30 am - 6.00 pm</td>
                </tr>
                <tr class="opened">
                    <td class="day_label">tuesday</td>
                    <td class="day_value">9:30 am - 6.00 pm</td>
                </tr>
                <tr class="opened">
                    <td class="day_label">wednesday</td>
                    <td class="day_value">9:30 am - 6.00 pm</td>
                </tr>
                <tr class="opened">
                    <td class="day_label">thursday</td>
                    <td class="day_value">9:30 am - 6.00 pm</td>
                </tr>
                <tr class="opened">
                    <td class="day_label">friday</td>
                    <td class="day_value">9:30 am - 3.00 pm</td>
                </tr>
                <tr class="closed">
                    <td class="day_label">saturday</td>
                    <td class="day_value closed"><span>Closed</span></td>
                </tr>
                <tr class="closed">
                    <td class="day_label">sunday</td>
                    <td class="day_value closed"><span>Closed</span></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="clearfix"></div>
        <div class="copy">
            <p>Copyright © 2015 Learn . All Rights Reserved | Design by <a href="http://w3layouts.com/" target="_blank">W3layouts</a>
            </p>
        </div>
    </div>
</div>
<script>
//    function redFunction() {
//        var name = $('#name').val();
//        var email = $('#email').val();
//        var phone = $('#phone').val();
//        var message = $('#message').val();
//        $.ajax({
//            url: 'contact/message',
//            data: {
//                name: name,
//                email: email,
//                phone: phone,
//                message: message
//            }, success: function (success) {
//                alert('success');
//            },
//            error: function (error) {
//                alert('error');
//            }
//        });
//    }
</script>
</body>
</html>
<%--suppress ALL --%>
<!DOCTYPE HTML>
<html>
<head>
    <link href="assets/css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css'/>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <link href="assets/css/style.css" rel='stylesheet' type='text/css'/>
    <link rel="stylesheet" href="assets/css/jquery.countdown.css"/>
    <link rel="stylesheet" href="assets/css/flexslider.css"/>
    <link rel="stylesheet" href="assets/css/clndr.css"/>
    <link href='${pageContext.request.contextPath}//fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700'
          rel='stylesheet' type='text/css'>
    <link href="assets/css/font-awesome.css" rel="stylesheet">
</head>
<body>

<form class="form-group" style="padding-left: 600px; padding-top: 50px;" method="POST" action="/book/upload" enctype="multipart/form-data">
    <h2>Book story</h2>
    <b>Remember file type must be doc, pdf, djvu</b>
    <br>
    <br>
   <span> File name <input type="text" class="form-control" name="fname" placeholder="Input file name" style="width: 200px"> </span>
    <br>
   <span> <input type="file" placeholder="upload file" class="fa-upload" name="fileName">  </span>
    <br>
    <input type="submit" class="btn" value="Ok" style="width:66px;">
</form>
</body>
</html>	
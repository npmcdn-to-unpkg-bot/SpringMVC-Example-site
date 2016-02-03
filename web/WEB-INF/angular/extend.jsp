<%--
  Created by IntelliJ IDEA.
  User: dexter
  Date: 1/31/16
  Time: 1:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Extend</title>
    <script src="bower_components/angularjs/angular.js"></script>
</head>
<body>
<script>
    var src = {foo: "bar", baz : "test"};
    var dst = {};
    dst.test = "dasd";
    angular.extend(src, dst);
    console.log(src);
    console.log(dst);
</script>
</body>
</html>

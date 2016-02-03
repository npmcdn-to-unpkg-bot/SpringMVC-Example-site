<%--
  Created by IntelliJ IDEA.
  User: dexter
  Date: 2/1/16
  Time: 11:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>FromJson</title>
    <script src="bower_components/angularjs/angular.js"></script>
</head>
<body>

<script>
    var sourceAry = [1,2,3,4,5,6];
    var str = "www.techstrikers.com";
    var strJSON= '{"name":"Jimi","age":30,"address":"12-13/A10"}';
    console.log(angular.fromJson(strJSON));
    console.log(angular.isArray(sourceAry));
    console.log(angular.isArray(strJSON));
</script>
</body>
</html>

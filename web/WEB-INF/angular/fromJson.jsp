<%--
  Created by IntelliJ IDEA.
  User: dexter
  Date: 2/1/16
  Time: 10:32 PM
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
    var strJSON= '{"name":"Jimi","age":30,"address":12-13/A10}';
      console.log(strJSON);
     console.log(angular.fromJson(strJSON));
</script>
</body>
</html>

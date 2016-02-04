<%--
  Created by IntelliJ IDEA.
  User: dexter
  Date: 2/3/16
  Time: 11:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ng-switch</title>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
<test></test>

<div class="test1"></div>
<script>
    var app = angular.module('app', []);
    app.directive('test', function () {
        return {
            template: "<h1> Made by directive </h1>"
        };
    });

    var app1 = angular.module('app', []);
    app1.directive('test1', function () {
        return {
            restrict: "C",
            template: "<h1> Salom world</h1>"
        }
    });
    angular.bootstrap(document.body, ['app']);
</script>
</body>
</html>

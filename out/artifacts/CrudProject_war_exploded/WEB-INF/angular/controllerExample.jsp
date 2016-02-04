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
    <title>Controller</title>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body>
<div ng-controller="test">
    <input type="text" ng-model="in">
    <input type="button" ng-click="uzb(in)" value="uzb">
    <input type="button" ng-click="en(in)" value="en">
    <pre>
               {{text}}
    </pre>
</div>
<script>
    angular.module('app', []).controller('test', function ($scope) {
        $scope.text = "text";

        $scope.uzb = function (elem) {
            $scope.text = "Men uzbekman " + elem;
        };

        $scope.en = function (elem) {
            $scope.text = "I am Uzbek " + elem;
        };
    });
    angular.bootstrap(document.body, ['app']);
</script>
</body>
</html>

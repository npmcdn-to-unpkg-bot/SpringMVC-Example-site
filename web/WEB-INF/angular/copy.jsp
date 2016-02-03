<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Angular Copy</title>
    <script src="${pageContext.request.contextPath}/bower_components/angularjs/angular.js"></script>
</head>
<body>
<div ng-controller="testController">
    Name : <input type="text" ng-model="user.name">
    <br>
    email : <input type="text" ng-model="user.email">
    <br>
    <input type="button" ng-click="reset()" value="Reset">
    <input type="button" ng-click="update(user)" value="Save">
    <br>
    <pre>form : {{master | json}}</pre>
</div>
<script>
    var app = angular.module('myapp', []).controller('testController', function($scope){
        $scope.master = {};

        $scope.update = function (user) {
            $scope.master = angular.copy(user);
        };
        $scope.reset = function(){
            alert('func');
        };
    });
    angular.bootstrap(document.body, ['myapp']);
</script>
</body>
</html>
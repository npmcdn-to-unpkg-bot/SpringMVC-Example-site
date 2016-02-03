<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Angular Bootstrap</title>
</head>
<body>

<div  ng-controller="testController">
    <input type="text" ng-model="test" class="form-group">
    <br>
    {{greeting}} Bahodir Boydedayev
    <br>
    <input type="button" value="click me" class="btn">
</div>

<script src="assets/bower_components/angularjs/angular.js"></script>
<script>
    var app = angular.module('test', []).controller('testController', function ($scope) {
        $scope.greeting = 'Welcome';
    });
    angular.bootstrap(document, ['test']);
</script>
</body>
</html>
<%--du -hs /path/to/directory -> get file size
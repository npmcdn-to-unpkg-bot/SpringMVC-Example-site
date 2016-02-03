<%--
  Created by IntelliJ IDEA.
  User: dexter
  Date: 2/1/16
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forEach</title>
    <script src="bower_components/angularjs/angular.js"></script>
</head>
<body>
<div ng-controller="testController">
<ol>
    <li ng-repeat="student in students">

    </li>
</ol>
</div>

<script>
    angular.module('app', []).controller('testController', function ($scope) {
        var obj = [
            {id: '1', name: 'Bahodir', age: '21'},
            {id: '2', name: 'Javohir', age: '17'},
            {id: '4', name: 'Zafar', age: '18'},
            {id: '5', name: 'Bekzod', age: '15'},
            {id: '3', name: 'Eldor', age: '21'}
        ];
        $scope.students = [];
        angular.forEach(obj, function(key, value){
            $scope.students.push(key);
          console.log(key, value);
        });
    });

    angular.bootstrap(document.body, ['app']);
</script>
</body>
</html>

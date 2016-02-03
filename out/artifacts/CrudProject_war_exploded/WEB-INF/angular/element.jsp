<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Element</title>
    <script src="bower_components/angularjs/angular.js"></script>
</head>
<body>

<div ng-controller="test">
<span id="ttt">salom</span>
</div>
<script>
    angular.module("myApp", []).controller('test', function ($scope) {
      var app = angular.element(document.querySelector('#ttt'));
        alert(app.text());
    });
    angular.bootstrap(document, ['myApp']);
</script>
</body>
</html>

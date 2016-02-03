<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>isDAte</title>
    <script src="bower_components/angularjs/angular.js"></script>
</head>
<body>

<div ng-controller="test">
</div>
<script>
    angular.module('app', []).controller('test', function ($scope) {
        var date = new Data();
        date = "12/12/2012";
        console.log(angular.isDate(date));
    });
    angular.bootstrap(document.body, ['app']);
</script>
</body>
</html>
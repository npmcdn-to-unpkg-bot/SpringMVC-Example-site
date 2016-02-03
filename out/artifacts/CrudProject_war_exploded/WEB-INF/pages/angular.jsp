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
    <script src="assets/bower_components/angularjs/angular.js"></script>
</head>
<body>
<div ng-app="" ng-init="page=one">
    <ol>
        <li>
            <a href="#" ng-click="page = 'one'">Page one</a>
        </li>
        <li>
            <a href="#" ng-click="page = 'two'">Page two</a>
        </li>
    </ol>

    <div ng-switch on = "page">
        <div ng-switch-when = "one">
            <h2><strong>Page one</strong></h2>
        </div>
        <div ng-switch-when = "two">
            <h2><strong>Page two</strong></h2>
        </div>
        <div ng-switch-default>
            <h2><strong>Page default</strong></h2>
        </div>
    </div>

</div>
</body>
</html>

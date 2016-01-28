<!DOCTYPE HTML>
<html>
<head>
    <title>Angular Tutorial</title>
    <%--<script src="assets/js/angular.js"></script>--%>
    <script src="assets/bower_components/angularjs/angular.min.js"></script>
    <script src="assets/bower_components/angularjs/angular.js"></script>
    <title>Angular JS Includes</title>
    <style>
        table, th , td {
            border: 1px solid grey;
            border-collapse: collapse;
            padding: 5px;
        }
        table tr:nth-child(odd) {
            background-color: #f2f2f2;
        }
        table tr:nth-child(even) {
            background-color: #ffffff;
        }
    </style>
</head>

<body  ng-app = "myapp" ng-init="countries = [{locale : 'en-USA', name : 'United States America'},
{locale : 'uz-UZ', name : 'Uzbekistan'}, {locale: 'fr-FR', name : 'France'}]">

<div ng-controller="HelloController">
    <%--<h2>Welcome {{hello.title | uppercase}} to the world</h2>--%>
    <%--<h2>Favourite book is {{hello.book | lowercase}}</h2>--%>
    <%--<h2>Test {{counter | lowercase}}</h2>--%>
    <%--<h2>Expense on Book {{hello.cost * hello.quantity | currency}}</h2>--%>
    <%--<p>Enter name: <input type="text" ng-model="name"></p>--%>
    <%--<p>Hello <span ng-bind="name"> !</span></p>--%>
    <%--<ol>--%>
        <%--<li ng-repeat="country in countries | filter: name | orderBy : 'locale'">--%>
            <%--{{'Country: ' + country.name + ' , Locale: ' + country.locale}}--%>
        <%--</li>--%>
    <%--</ol>--%>
    <%--<input type="button" ng-click="hello.book = 'salom'" ng-mouseenter="hello.title = 'Javohir'"--%>
           <%--ng-mouseleave="hello.title = 'Bahodir Boydedayev'" ng-dbl-click="hello.book = 'Java'" value="click me">--%>
    <%--<input type="text" ng-keyup="counter = counter + 1">--%>
    <%--<div ng-include="'assets/test1.jsp'"></div>--%>
    <%--<div ng-include="'assets/test2.jsp'"></div>--%>
        <table>
            <tr>
                <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>State</th>
            </tr>
            <tr ng-repeat="employee in employees">
                <td>{{ employee.id }}</td>
                <td>{{ employee.firstName }}</td>
                <td>{{ employee.lastName }}</td>
                <td>{{ employee.email }}</td>
                <td>{{ employee.mobile }}</td>
                <td>{{ employee.state }}</td>
            </tr>
        </table>
</div>

<script>
    angular.module("myapp",[]).controller("HelloController", function ($scope, $http) {
//        $scope.hello = [];
//        $scope.hello.title = "Bahodir Boydedayev";
//        $scope.hello.book = "Java";
//        $scope.hello.cost = 15;
//        $scope.hello.quantity = 5;
        var url1 = "assets/data.txt";
        var url2 = "/employee/urlListEmployee";
        $http.get(url2).success(function (response) {
            $scope.employees = response;
            console.log(response);
        })
    });
</script>
</body>
</html>
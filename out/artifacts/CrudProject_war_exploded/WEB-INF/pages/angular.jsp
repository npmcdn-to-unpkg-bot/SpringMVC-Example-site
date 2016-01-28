<!DOCTYPE HTML>
<html>
<head>
    <title>Angular Tutorial</title>
    <script src="assets/js/angular.js"></script>
</head>

<body  ng-app = "myapp" ng-init="countries = [{locale : 'en-USA', name : 'United States America'},
{locale : 'uz-UZ', name : 'Uzbekistan'}, {locale: 'fr-FR', name : 'France'}]">

<div ng-controller="HelloController">
    <h2>Welcome {{hello.title | uppercase}} to the world</h2>
    <h2>Favourite book is {{hello.book | lowercase}}</h2>
    <h2>Test {{counter | lowercase}}</h2>
    <h2>Expense on Book {{hello.cost * hello.quantity | currency}}</h2>
    <p>Enter name: <input type="text" ng-model="name"></p>
    <p>Hello <span ng-bind="name"> !</span></p>
    <ol>
        <li ng-repeat="country in countries | filter: name | orderBy : 'locale'">
            {{'Country: ' + country.name + ' , Locale: ' + country.locale}}
        </li>
    </ol>
    <input type="button" ng-click="hello.book = 'salom'" ng-mouseenter="hello.title = 'Javohir'"
           ng-mouseleave="hello.title = 'Bahodir Boydedayev'" ng-dbl-click="hello.book = 'Java'" value="click me">
    <input type="text" ng-keyup="counter = counter + 1">
    <div ng-include="WEB-INF/pages/test/test1.jsp"></div>
    <div ng-include="WEB-INF/pages/test/test2.jsp"></div>
</div>

<script>
    angular.module("myapp",[]).controller("HelloController", function ($scope) {
        $scope.hello = [];
        $scope.hello.title = "Bahodir Boydedayev";
        $scope.hello.book = "Java";
        $scope.hello.cost = 15;
        $scope.hello.quantity = 5;
    });

</script>
</body>
</html>
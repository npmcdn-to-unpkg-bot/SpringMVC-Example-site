<!DOCTYPE HTML>
<html>
<head>
    <script src="assets/js/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script>
    <title>Angular Tutorial</title>
</head>

<body  ng-app = "myapp" ng-init="countries = [{locale : 'en-USA', name : 'United States America'},
{locale : 'uz-UZ', name : 'Uzbekistan'}, {locale: 'fr-FR', name : 'France'}]">

<div ng-controller="HelloController">

    <h2>Welcome {{hello.title}} to the world</h2>
    <h2>Favourite book is {{hello.book}}</h2>
    <p>Enter name: <input type="text" ng-model="name"></p>
    <p>Hello <span ng-bind="name"> !</span></p>

    <ol>
        <li ng-repeat="country in countries | filter: name">
            {{'Country: ' + country.name + ' , Locale: ' + country.locale}}
        </li>
    </ol>

</div>


<script>

    angular.module("myapp",[]).controller("HelloController", function ($scope) {
        $scope.hello = [];
        $scope.hello.title = "Bahodir Boydedayev";
        $scope.hello.book = "Java";
    });

</script>
</body>
</html>
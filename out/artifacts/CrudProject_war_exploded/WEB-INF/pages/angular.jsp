<!DOCTYPE HTML>
<html>
<head>
    <title>Angular Tutorial</title>
    <script src="assets/js/angular.js"></script>
    <script src="assets/js/angular.min.js"></script>
    <script src="assets/js/testAngular/mainApp.js"></script>
    <script src="assets/js/testAngular/studentController.js"></script>
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

<div ng-app="">
    <input type="checkbox" ng-model="enableDisableButton" ng-model="test"> Disable button
    <input type="button" ng-disabled="enableDisableButton" value="Hi world">
           <br>
    <input type="checkbox" ng-model="showHide1"> hide
    <input type="button" ng-show="showHide1" value="show">
    <br>
    <input type="button" ng-hide="showHide1" value="hide">
    <p> Total click : {{clickCounter }} </p>
    <input type="button" ng-click="clickCounter = clickCounter + 1" value="Click me">
    <br>
    <input type="button"  value="Test click">
</div>

<div ng-app="mainApp" ng-controller="studentController">

</div>

<script>
    angular.module("myapp",[]).controller("HelloController", function ($scope) {
        $scope.hello = [];
        $scope.hello.title = "Bahodir Boydedayev";
        $scope.hello.book = "Java";
    });

//    function studentController($scope, $http){
//        var url = "/employee/urlListEmployee";
//        $http.get(url).success(function (response) {
//            var obj = JSON.parse(response);
//            alert(obj);
//        })
//    }
</script>
</body>
</html>
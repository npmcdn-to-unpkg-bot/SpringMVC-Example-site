<!DOCTYPE html>
<html>
<head>
    <title>My first AngularJS code</title>
    <script SRC="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.13/angular.js">
    </script>
</head>
<body>
<div ng-controller="CalculatorController">
    Enter a number :
    <input type="number" ng-model="number">
    <button ng-click="doSquare()">X <sup>2</sup></button>
    <button ng-click="doCube()">X <sup>3</sup></button>
    Answer : {{answer}}
</div>

<script>
    var app = angular.module('app', []);
    app.service('MathService', function () {
        this.qosh = function (a, b) {
            return a + b;
        };

        this.ayir = function (a, b) {
            return a - b;
        };

        this.kopaytir = function (a, b) {
            return a * b;
        };

        this.bol = function (a, b) {
            return a / b;
        };
    });

    app.service('CalcService', function (MathService) {
        this.kvadrat = function (a) {
            return MathService.kopaytir(a, a);
        };
        this.cube =   function(a){
            return MathService.kopaytir(a, MathService.kopaytir(a, a));
        };
    });

    app.controller('CalculatorController', function ($scope, CalcService, MathService) {
        $scope.doSquare = function () {
            $scope.answer = CalcService.kvadrat($scope.number);
        };

        $scope.doCube = function () {
            $scope.answer = MathService.kopaytir($scope.number, MathService.kopaytir($scope.number, $scope.number));
        }
    });
    angular.bootstrap(document, ['app']);
</script>
</body>
</html>
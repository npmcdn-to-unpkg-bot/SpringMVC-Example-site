<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
 <title>Element</title>
 <script src="bower_components/angularjs/angular.js"></script>
</head>
<body>
<div ng-init="names = ['Bahodir', 'Javohir', 'Zafar']">
 <ol>
  <li ng-repeat="name in  names">
   {{name}}
  </li>
 </ol>
</div>

<div ng-controller="test">
 <span id="ttt">salom</span>

 <p ng-show="myVar">text</p>

 <button ng-click="myclick()">click me</button>
</div>


<script>
 angular.module("myApp", []).controller('test', function ($scope) {
//        var app = angular.element(document.querySelector('#ttt'));
//        alert(app.text());
  $scope.myclick = function () {
   $scope.myVar = !$scope.myVar;
   var a = {
    key1: 'a',
    key2: 'b',
    key3: 'c'
   };

   var b = {
    key3: 'c',
    key2: 'b',
    key1: 'a'
   };
   var eq = angular.equals(a, b);
   console.log(eq);
  };
 });
 angular.bootstrap(document, ['myApp']);
</script>
</body>
</html>
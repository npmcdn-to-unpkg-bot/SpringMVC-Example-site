<!DOCTYPE HTML>
<html>
<head>
    <title>Angular Tutorial</title>
    <script src="assets/js/angular.js"></script>
    <script src="assets/js/angular.min.js"></script>
    <script src="assets/js/angular1.js"></script>
    <script src="assets/js/jquery.lib.js"></script>
    <%--<script src="assets/js/bootstrap.js" type="application/javascript"></script>--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap-theme.css" rel="stylesheet"/>
    <script src="assets/js/bootstrap.min.js" type="application/javascript"></script>
    <script src="assets/js/npm.js" type="application/javascript"></script>
    <link href="assets/css/bootstrap-theme.css" rel="stylesheet">
    <link href="assets/css/bootstrap-theme.css.map" rel="stylesheet">
    <link href="assets/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap-theme.min.css.map" rel="stylesheet">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/bootstrap.min.css.map" rel="stylesheet">
    <link href="assets/css/bootstrap-3.1.1.min.css" rel="stylesheet">
    <script src="assets/js/boot.js"></script>
    <script src="assets/js/bootbox.js"></script>
    <script src="assets/js/bootbox.min.js"></script>
</head>

<body  ng-app = "myapp" ng-init="countries = [{locale : 'en-USA', name : 'United States America'},
{locale : 'uz-UZ', name : 'Uzbekistan'}, {locale: 'fr-FR', name : 'France'}]">

<div ng-controller="HelloController">
    <h2>Welcome {{hello.title}} to the world</h2>
    <h2>Favourite book is {{hello.book}}</h2>
    <h2>For the test {{test.a}</h2>
    <p>Enter name: <input type="text" ng-model="name"></p>
    <p>Hello <span ng-bind="name"> !</span></p>

    <ol>
        <li ng-repeat="country in countries | filter: name">
            {{'Country: ' + country.name + ' , Locale: ' + country.locale}}
        </li>
    </ol>

</div>

<div ng-app="" ng-controller="testController">
    <%--<input type="button" value="Click me" name="button" class="btn" id="myBtn" onclick="testClick()">--%>
    <input type="button" ng-model="enableDisableButton" value="Hi world">
</div>

<script>

    angular.module("myapp",[]).controller("HelloController", function ($scope) {
        $scope.hello = [];
        $scope.hello.title = "Bahodir Boydedayev";
        $scope.hello.book = "Java";
    });

    function testClick(){
        alert('as');
    }

</script>
</body>
</html>
<!DOCTYPE HTML>
<html>
<head>
    <title>Angular Tutorial</title>
    <%--<script src="assets/js/angular.js"></script>--%>
    <script src="assets/bower_components/angularjs/angular.js"></script>
    <script src="assets/bower_components/datatables/media/js/jquery.dataTables.js"></script>
    <script src="assets/bower_components/angularjs/angular.min.js"></script>
    <script src="assets/bower_components/angular-datatables/dist/angular-datatables.min.js"></script>
    <title>Angular JS Includes</title>

</head>

<body>

<%--<div ng-controller="HelloController">--%>
    <%--&lt;%&ndash;<h2>Welcome {{hello.title | uppercase}} to the world</h2>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<h2>Favourite book is {{hello.book | lowercase}}</h2>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<h2>Test {{counter | lowercase}}</h2>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<h2>Expense on Book {{hello.cost * hello.quantity | currency}}</h2>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<p>Enter name: <input type="text" ng-model="name"></p>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<p>Hello <span ng-bind="name"> !</span></p>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<ol>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<li ng-repeat="country in countries | filter: name | orderBy : 'locale'">&ndash;%&gt;--%>
            <%--&lt;%&ndash;{{'Country: ' + country.name + ' , Locale: ' + country.locale}}&ndash;%&gt;--%>
        <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</ol>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<input type="button" ng-click="hello.book = 'salom'" ng-mouseenter="hello.title = 'Javohir'"&ndash;%&gt;--%>
           <%--&lt;%&ndash;ng-mouseleave="hello.title = 'Bahodir Boydedayev'" ng-dbl-click="hello.book = 'Java'" value="click me">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<input type="text" ng-keyup="counter = counter + 1">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div ng-include="'assets/test1.jsp'"></div>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<div ng-include="'assets/test2.jsp'"></div>&ndash;%&gt;--%>
        <%--<table>--%>
            <%--<tr>--%>
                <%--<th>Id</th>--%>
                <%--<th>First Name</th>--%>
                <%--<th>Last Name</th>--%>
                <%--<th>Email</th>--%>
                <%--<th>Mobile</th>--%>
                <%--<th>State</th>--%>
            <%--</tr>--%>
            <%--<tr ng-repeat="employee in employees">--%>
                <%--<td>{{ employee.id }}</td>--%>
                <%--<td>{{ employee.firstName }}</td>--%>
                <%--<td>{{ employee.lastName }}</td>--%>
                <%--<td>{{ employee.email }}</td>--%>
                <%--<td>{{ employee.mobile }}</td>--%>
                <%--<td>{{ employee.state }}</td>--%>
            <%--</tr>--%>
        <%--</table>--%>
<%--</div>--%>

<%--<script>--%>
    <%--angular.module("myapp",[]).controller("HelloController", function ($scope, $http) {--%>
<%--//        $scope.hello = [];--%>
<%--//        $scope.hello.title = "Bahodir Boydedayev";--%>
<%--//        $scope.hello.book = "Java";--%>
<%--//        $scope.hello.cost = 15;--%>
<%--//        $scope.hello.quantity = 5;--%>
        <%--var url1 = "assets/data.txt";--%>
        <%--var url2 = "/employee/urlListEmployee";--%>
        <%--$http.get(url2).success(function (response) {--%>
            <%--$scope.employees = response;--%>
            <%--console.log(response);--%>
        <%--})--%>
    <%--});--%>
<%--</script>--%>
<div ng-controller="WithPromiseCtrl as showCase">
    <table datatable="" dt-options="showCase.dtOptions" dt-columns="showCase.dtColumns" class="row-border hover"></table>
</div>
<script>
    angular.module('showcase.withPromise', ['datatables', 'ngResource']).controller('WithPromiseCtrl', WithPromiseCtrl);

    function WithPromiseCtrl(DTOptionsBuilder, DTColumnBuilder, $resource) {
        var vm = this;
        vm.dtOptions = DTOptionsBuilder.fromFnPromise(function() {
            return $resource('assets/data.json').query().$promise;
        }).withPaginationType('full_numbers');

        vm.dtColumns = [
            DTColumnBuilder.newColumn('id').withTitle('ID'),
            DTColumnBuilder.newColumn('firstName').withTitle('First name'),
            DTColumnBuilder.newColumn('lastName').withTitle('Last name').notVisible()
        ];
    }
</script>
</body>
</html>
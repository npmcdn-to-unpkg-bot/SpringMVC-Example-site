<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Page</title>
    <script src="assets/bower_components/angularjs/angular.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <script src="assets/js/boot.js"></script>
    <script src="assets/js/bootbox.js"></script>
    <script src="assets/js/bootbox.min.js"></script>
    <style>
        table, th, td {
            border: 1px solid #030504;
            border-collapse: collapse;
        }
        .modal-content {
            margin-top: 200px;
            width: 333px;
        }

        .modal-body {
            text-align: center;
            font-size: 18px;
        }

        th, td {
            padding: 5px;
            text-align: center;
        }

        table#t01 tr:nth-child(even) {
            background-color: #9dee7f;
        }

        table#t01 tr:nth-child(odd) {
            background-color: #ffb915;
        }

        table#t01 th {
            background-color: #14ff10;
            color: #050609;
        }

        #Main {
            display: inline-flex;
        }

        #table {
            padding-left: 100px;
            margin-top: 77px;
        }

        #addButton {
            float: right;
        }

        .page-button {
            box-sizing: border-box;
            display: inline-block;
            min-width: 1.5em;
            padding: 0.5em 1em;
            margin-left: 2px;
            text-align: center;
            text-decoration: none !important;
            cursor: pointer;
            color: #333 !important;
            border-radius: 15px;
        }

        .page-button-current {
        }

        .page-button:hover {
            color: white !important;
            border: 1px solid #111;
            background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #585858), color-stop(100%, #111));
            background: -webkit-linear-gradient(top, #585858 0%, #111 100%);
            text-decoration: underline;
            background: linear-gradient(to bottom, #585858 0%, #111 100%);
        }

        a {
            cursor: pointer;
            color: #3174c7;
            text-decoration: none;
        }

        .form-control {
            width: 77px;
        }
    </style>
</head>
<body>
<div id="Main">
    <%
        request.getSession().setAttribute("lang_ru.properties", "lang_ru.properties");
    %>
    <div class="Register_Menu" id="registerMenu" style="margin: 15px">
        <h4>
            <b>REGISTRATION FORM</b>
        </h4>
        <br>

        <div class="input-group">
            Select Company
            <select class="form-control" id="mySelectCompany2" style="width: 194px">
                <option>Google</option>
                <option>Facebook</option>
                <option>Twitter</option>
                <option>Odnoklassniki</option>
            </select>
        </div>

        <form>
            <input type="text" id="hideId" name="hideId" hidden>

            <div class="input-group">
                First Name
                <div class="input-group">
                    <input type="text" id="firstName" name="firstName" maxlength="10"
                           placeholder="First Name" class="form-control">
                </div>
            </div>
            <div class="input-group">
                Last Name
                <div class="input-group">
                    <input type="text" name="lastName" maxlength="10" id="lastName"
                           placeholder="Last Name" class="form-control">
                </div>
            </div>
            <div class="input-group">
                Mobile
                <div class="input-group">
                    <input type="tel" name="mobile" maxlength="15" id="mobile"
                           placeholder="Ex:+9989...." class="form-control">
                </div>
            </div>
            <div class="input-group">
                E-mail
                <div class="input-group">
                    <input type="text" autocomplete="off" name="my1" maxlength="20" id="email"
                           placeholder="bahodir9293@gmail.com" class="form-control" style="width: 195px">
                </div>
            </div>
            <div class="input-group">
                Password
                <div class="input-group">
                    <input type="password" autocomplete="off" name="my2" id="password"
                           size="10" style="width: 195px" class="form-control"/>
                </div>
            </div>
            <div class="input-group">
                State
                <div class="input-group">
                    <input type="text" id="state" name="state" id="state"
                           placeholder="State" class="form-control" size="10" style="width: 195px">
                </div>
            </div>
            <br>
            <br>

            <div class="input-group" style="margin-left: 17px">
                <div class="controls">
                    <button type="button" style="width: 70px" class="btn" onclick="saveEmployee()">Ok</button>
                    <button type="reset" style="width: 70px" class="btn">Reset</button>
                </div>
            </div>
        </form>
    </div>
    <%--<div style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;--%>
    <%--text-align: center;height: 100%; background-color: black; opacity: 0.7;" id="load">--%>
    <%--&lt;%&ndash;<img src="assets/images/loading-img.gif" style="margin-left: 133px; margin-top: 234px;">&ndash;%&gt;--%>
    <%--</div>--%>
    <div id="table" style="margin-right: 66px; margin-left: -66px; padding-bottom: 100px;">
        <div class="alert alert-success" id="aler" hidden style="position:absolute;left: 566px;
         top: 52px; z-index: 100;  width: 333px; height: 50px; text-align: center;">
            <strong>Success </strong> data saved ...!
        </div>
        <nav class="navbar navbar-default" style="margin-bottom: 0">
            <div class="container-fluid">
                <div class="navbar-header" style="width: 1025px">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-2" aria-expanded="false"><span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapset navbar-collapse" id="bs-example-navbar-collapse-2" style="display: inline">
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group" style="display: inline-flex">
                            <select class="form-control" id="mySelect">
                                <option>5</option>
                                <option>10</option>
                                <option>50</option>
                                <option>100</option>

                                <input type="text" class="form-control" placeholder="Search" id="search"
                                       style="margin-left: 700px"
                                       autocomplete="off" oninput="getOfflineData()">
                            </select>

                            <div class="form-group" style="display: inline-flex; margin-left: -700px">
                                <select class="form-control" id="mySelectCompany">
                                    <option>Google</option>
                                    <option>Facebook</option>
                                    <option>Twitter</option>
                                    <option>Odnoklassniki</option>
                                </select>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </nav>
        <table id="tableEmployee" class="table table-striped table-bordered table-hover dataTable no-footer">
            <thead>
            <tr class="gradeA even">
                <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>State</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>

            <tbody id="tbodyId">
            <tr ng-repeat="contact in contacts">
            </tr>
            </tbody>
        </table>

        <div class="div-page">
            <%
                String lang = (String) request.getSession().getAttribute("lang_ru.properties");
                System.out.println(lang);
            %>
            <input type="button" id="addButton" name="Add" value="<%=lang%>" class="btn">
        </div>

    </div>
</div>
<script>
    angular.module('testas', []).controller('controller', function ($scope) {
        $scope.contacts = [{id : '1', name : 'Bahodir'}, {id : 2, name : 'Javohir'}];
    });

    angular.bootstrap(document.body, ['testas']);
</script>
</body>
</html>

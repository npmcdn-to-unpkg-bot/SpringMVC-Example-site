<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Page</title>
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
<body onload="listEmployee()">
<div id="Main">
    <div class="Register_Menu" id="registerMenu" style="margin: 15px">
        <h4>
            <b>REGISTRATION FORM</b>
        </h4>

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
    <div style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;
      text-align: center;height: 100%; background-color: black; opacity: 0.7;" id="load">
        <img src="assets/images/loading-img.gif" style="margin-left: 133px; margin-top: 234px;">
    </div>
    <div id="table" style="margin-right: 66px; margin-left: -66px; padding-bottom: 100px;">
        <div class="alert alert-success" id="aler" hidden style="position:absolute;left: 566px;
         top: 52px; z-index: 100;  width: 333px; height: 50px; text-align: center;">
            <strong>Success </strong> data saved ...!
        </div>
        <nav class="navbar navbar-default" style="margin-bottom: 0">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                            data-target="#bs-example-navbar-collapse-2" aria-expanded="false"><span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2" style="display: inline">
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group" style="display: inline-flex">
                            <select class="form-control" id="mySelect">
                                <option>5</option>
                                <option>10</option>
                                <option>50</option>
                                <option>100</option>

                                <input type="text" class="form-control" placeholder="Search" id="search"
                                       style="margin-left: 680px"
                                       autocomplete="off" oninput="getOfflineData()">
                            </select>
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
            </tbody>
        </table>

        <div class="div-page">
            <a class="page-button other" id="prev">Previous</a>
            <a class="page-button other" id="next">Next</a>

            <input type="button" id="addButton" name="Add" value="Add User" class="btn">
        </div>

    </div>
</div>
<script>
    var data = new Map();
    $('#addButton').click(function () {
        $('#registerMenu').toggle(1000);
    });

    function saveEmployee() {
        var hideId = $('#hideId').val();
        var firstName = $('#firstName').val();
        var lastName = $('#lastName').val();
        var mobile = $('#mobile').val();
        var email = $('#email').val();
        var password = $('#password').val();
        var state = $('#state').val();
        if (firstName == "" || lastName == "" || mobile == "" || email == "" || password == "" || state == "") {
            alert("Fill the all area...!");
        }
        else {
            $('#load').show();
            $.ajax({
                url: "/employee/urlSaveEmployee",
                type: "POST",
                data: {
                    hideId: hideId,
                    firstName: firstName,
                    lastName: lastName,
                    mobile: mobile,
                    email: email,
                    password: password,
                    state: state
                },
                success: function (response) {
//                    alert('hideid = ' + hideId);
//                    alert('res.id = ' + response.id);
                    if (response.id == hideId) {
                        var allTd = $('table tbody tr#' + response.id + " td");
                        if (response.id != undefined) {
                            allTd.eq(0).html(response.id);
                            allTd.eq(1).html(response.firstName);
                            allTd.eq(2).html(response.lastName);
                            allTd.eq(3).html(response.mobile);
                            allTd.eq(4).html(response.email);
                            allTd.eq(5).html(response.state);
                            data.set(response.id, response);
                            $('#aler').fadeIn(2000).fadeOut(2000);
                            $('#load').hide();
                        }
                        else {
                            alert("this email already occupied 10");
                            $('#load').hide();
                        }
                    }
                    else {
                        if (response.id != undefined) {
                            var app = "'<tr id=" + response.id + ">" + response.id +
                                    "<td>" + response.id + "</td>" +
                                    "<td>" + response.firstName + "</td>" +
                                    "<td>" + response.lastName + "</td>" +
                                    "<td>" + response.mobile + "</td>" +
                                    "<td>" + response.email + "</td>" +
                                    "<td>" + response.state + "</td>" +
                                    "<td>" + "<a class='glyphicon glyphicon-pencil' href='#' id='" + response.id + "' onclick='getEmployee(" + response.id + ")'>" + "</a>" + "</td>" +
                                    "<td>" + "<a class='glyphicon glyphicon-remove' href='#' id='" + response.id + "' onclick='deleteEmployee(" + response.id + ")'>" + "</a>" + "</td>" +
                                    "</tr>'";
                            $('#tableEmployee tbody').append(app);
                            data.set(response.id, response);
                            $('#aler').fadeIn(2000).fadeOut(2000);
                            $('.page').remove();
                            var countt = $('#tableEmployee tbody').children().length;
                            var divided = $('#mySelect option:selected').text();
                            for (var k = 1; k < countt / divided + 1; k++) {
                                var appp = "<a class='page-button page'>" + k + "</a>";
                                $('#next').before(appp);
                            }
                            $('#load').hide();
                        }
                        else {
                            alert("this email already occupied ");
                            $('#load').hide();
                        }
                    }
                    $('#registerMenu form')[0].reset();
                },
                error: function (e) {
                    alert("Error: " + e);
                }
            })
        }
    }
    function listEmployee() {
        $('table tbody tr').remove();
        var firstName = $('#firstName').val();
        var lastName = $('#lastName').val();
        var mobile = $('#mobile').val();
        var email = $('#email').val();
        var password = $('#password').val();
        var state = $('#state').val();
        $('#load').show();
        $.ajax({
            url: '/employee/urlListEmployee',
            data: 'POST',
            success: function (response) {
                var obj = JSON.parse(response);
                $.each(obj, function (key, value) {
                    data.set(value.id, value);
                    var app = "'<tr id=" + value.id + ">" + value.id +
                            "<td>" + value.id + "</td>" +
                            "<td>" + value.firstName + "</td>" +
                            "<td>" + value.lastName + "</td>" +
                            "<td>" + value.mobile + "</td>" +
                            "<td>" + value.email + "</td>" +
                            "<td>" + value.state + "</td>" +
                            "<td>" + "<a class='glyphicon glyphicon-pencil' href='#' id='" + value.id + "' onclick='getEmployee(" + value.id + ")'>" + "</a>" + "</td>" +
                            "<td>" + "<a class='glyphicon glyphicon-remove' href='#' id='" + value.id + "' onclick='deleteEmployee(" + value.id + ")'>" + "</a>" + "</td>" +
                            "</tr>'";
                    $('#tableEmployee tbody').append(app);
                });
                var count = $('#tableEmployee tbody').children().length;
                var divide = $('#mySelect option:selected').text();
                $('.page').remove();
                for (var i = 1; i < count / divide + 1; i++) {
                    var app = "<a class='page-button page'>" + i + "</a>";
                    $('#next').before(app);
                }
                $('#load').hide();
                console.log("data online...");
            },
            error: function (error) {
                alert(error);
                $('#load').hide();
            }
        })
    }

    function deleteEmployee(id) {
        $('#load').show();
        bootbox.confirm({
            size: 'small',
            message: "Are you sure…",
            callback: function (result) {
                if (result) {
                    $.ajax({
                        url: '/employee/urlDeleteEmployee',
                        type: 'POST',
                        data: {
                            id: id
                        },
                        success: function (response) {
                            data.forEach(function (value, key) {
                                if (key == response)
                                    data.delete(key);
                            });
                            console.log(response);
                            $('#' + response).remove();
                            $('#load').hide();
                            $('.page').remove();
                            var count = $('#tableEmployee tbody').children().length;
                            var divide = $('#mySelect option:selected').text();
                            for (var i = 1; i < count / divide + 1; i++) {
                                var app = "<a class='page-button page'>" + i + "</a>";
                                $('#next').before(app);
                            }
                            $('#registerMenu form')[0].reset();
                        },
                        error: function (error) {
                            alert("Error: " + error);
                            $('#load').hide();
                        }
                    })
                }
                else {
                    $('#load').hide();
                }
            }
        });
    }
    function getEmployee(id) {
        $('#load').show();
        $.ajax({
            url: '/employee/urlGetEmployee',
            type: 'POST',
            data: {
                id: id
            },
            success: function (response) {
                var obj = JSON.parse(response);
                $('#hideId').val(obj.id);
                $('#firstName').val(obj.firstName);
                $('#lastName').val(obj.lastName);
                $('#mobile').val(obj.mobile);
                $('#email').val(obj.email);
                $('#state').val(obj.state);

                $('#load').hide();
            },
            error: function (error) {
                alert("Error: " + error);
                $('#load').hide();
            }
        });
    }

    function getOnlineData() {
        $('table tbody tr').remove();
        var text = $('#search').val();
        var test = false;
        $('.page').remove();
        if (text.length > 0) {
            $('#load').show();
            $.ajax({
                url: '/employee/getData',
                type: 'POST',
                data: {
                    text: text
                },
                success: function (result) {
                    var obj = JSON.parse(result);
                    $.each(obj, function (key, value) {
                        var app = "'<tr id=" + value.id + ">" + value.id +
                                "<td>" + value.id + "</td>" +
                                "<td>" + value.firstName + "</td>" +
                                "<td>" + value.lastName + "</td>" +
                                "<td>" + value.mobile + "</td>" +
                                "<td>" + value.email + "</td>" +
                                "<td>" + value.state + "</td>" +
                                "<td>" + "<a class='glyphicon glyphicon-pencil' href='#' id='" + value.id + "' onclick='getEmployee(" + value.id + ")'>" + "</a>" + "</td>" +
                                "<td>" + "<a class='glyphicon glyphicon-remove' href='#' id='" + value.id + "' onclick='deleteEmployee(" + value.id + ")'>" + "</a>" + "</td>" +
                                "</tr>'";
                        $('#tableEmployee tbody').append(app);
                        test = true;
                        $('#load').hide();
                    });
                    var count = $('#tableEmployee tbody').children().length;
                    var divide = $('#mySelect option:selected').text();
                    for (var i = 1; i < count / divide + 1; i++) {
                        var appp = "<a class='page-button page'>" + i + "</a>";
                        $('#next').before(appp);
                    }
                },
                error: function (error) {
                    alert('error ' + error);
                    $('#load').hide();
                }
            });
            if (!test) {
                $('#load').hide();
            }
        }
        else {
            getOfflineData();
        }
    }

    function getOfflineData() {
        $('table tbody tr').remove();
        var tex = $('#search').val();
        var bol = false;
        var countt = $('#tableEmployee tbody').children().length;
        var divided = $('#mySelect option:selected').text();
        if (tex.length > 0) {
            $('#load').show();
            var c = 0;
            data.forEach(function (value, key) {
                if (c <= divided) {
                    var searchText = data.get(key);
                    var firstName = searchText.firstName;
                    var lastName = searchText.lastName;
                    var mobile = searchText.mobile;
                    var email = searchText.email;
                    var state = searchText.state;
                    if (firstName.toLowerCase().indexOf(tex.toLowerCase()) > -1
                            || lastName.toLowerCase().indexOf(tex.toLowerCase()) > -1
                            || mobile.toLowerCase().indexOf(tex.toLowerCase()) > -1
                            || email.toLowerCase().indexOf(tex.toLowerCase()) > -1
                            || state.toLowerCase().indexOf(tex.toLowerCase()) > -1) {
                        bol = true;
                        var app = "'<tr id=" + value.id + ">" + value.id +
                                "<td>" + value.id + "</td>" +
                                "<td>" + value.firstName + "</td>" +
                                "<td>" + value.lastName + "</td>" +
                                "<td>" + value.mobile + "</td>" +
                                "<td>" + value.email + "</td>" +
                                "<td>" + value.state + "</td>" +
                                "<td>" + "<a class='glyphicon glyphicon-pencil' href='#' id='" + value.id + "' onclick='getEmployee(" + value.id + ")'>" + "</a>" + "</td>" +
                                "<td>" + "<a class='glyphicon glyphicon-remove' href='#' id='" + value.id + "' onclick='deleteEmployee(" + value.id + ")'>" + "</a>" + "</td>" +
                                "</tr>'";
                        $('#tableEmployee tbody').append(app);
                        c++;
                    }
                }
                $('.page').remove();
                var count = $('#tableEmployee tbody').children().length;
                var divide = $('#mySelect option:selected').text();
                for (var i = 1; i < count / divide + 1; i++) {
                    var appp = "<a class='page-button page'>" + i + "</a>";
                    $('#next').before(appp);
                    $('#load').hide();
                    console.log("offline data...");
                }
            });
            if (!bol) {
                getOnlineData();
                console.log("data online");
            }
        }
        else {
            $('#load').show();
            $('table tbody tr').remove();
            data.forEach(function (value, key) {
                var app = "'<tr id=" + value.id + ">" + value.id +
                        "<td>" + value.id + "</td>" +
                        "<td>" + value.firstName + "</td>" +
                        "<td>" + value.lastName + "</td>" +
                        "<td>" + value.mobile + "</td>" +
                        "<td>" + value.email + "</td>" +
                        "<td>" + value.state + "</td>" +
                        "<td>" + "<a class='glyphicon glyphicon-pencil' href='#' id='" + value.id + "' onclick='getEmployee(" + value.id + ")'>" + "</a>" + "</td>" +
                        "<td>" + "<a class='glyphicon glyphicon-remove' href='#' id='" + value.id + "' onclick='deleteEmployee(" + value.id + ")'>" + "</a>" + "</td>" +
                        "</tr>'";
                $('#tableEmployee tbody').append(app);
                $('.page').remove();
                var count = $('#tableEmployee tbody').children().length;
                var divide = $('#mySelect option:selected').text();
                for (var i = 1; i < count / divide + 1; i++) {
                    var appp = "<a class='page-button page'>" + i + "</a>";
                    $('#next').before(appp);
                }
                $('#load').hide();
                console.log("offline data...");
            });
        }
    }

    $('#mySelect').change(function () {
        $('.page').remove();
        var count = $('#tableEmployee tbody').children().length;
        var divide = $('#mySelect option:selected').text();
        for (var i = 1; i < count / divide + 1; i++) {
            var appp = "<a class='page-button page'>" + i + "</a>";
            $('#next').before(appp);
        }
        getOfflineData();
    })
</script>
</body>
</html>
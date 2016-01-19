<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Translate</title>
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

        #addWordButton {
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
    <div class="Register_Menu" id="registerMenu" style="margin: 15px">
        <h4>
            <b>Add word</b>
        </h4>

        <form>
            <div class="input-group">
                English
                <div class="input-group">
                    <input type="text" id="english" name="english"
                           placeholder="English" class="form-control">
                </div>
            </div>
            <div class="input-group">
                Uzbek
                <div class="input-group">
                    <input type="text" name="uzbek" id="uzbek"
                           placeholder="Uzbek" class="form-control">
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

    <div id="table" style="margin-right: 66px; margin-left: 66px; padding-bottom: 100px;">
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
                        <div class="form-group" style="display: inline-flex; margin-right: 100px">
                            <input type="text" class="form-control" placeholder="Search" id="search"
                                   style="margin-left: 150px"
                                   autocomplete="off" oninput="listEmployee()">
                        </div>
                    </form>
                </div>
            </div>
        </nav>
        <table id="tableEmployee" class="table table-striped table-bordered table-hover dataTable no-footer">
            <thead>
            <tr class="gradeA even">
                <th>id</th>
                <th>English</th>
                <th>Uzbek</th>
            </tr>
            </thead>
            <tbody id="tbodyId">
            </tbody>
        </table>

        <div class="div-page">
            <input type="button" id="addWordButton" name="Add" value="Add word" class="btn">
        </div>
    </div>
</div>

<script>
    $('#addWordButton').click(function () {
        $('#registerMenu').toggle(1000);
    });

    function listEmployee() {
        $('table tbody tr').remove();
        var search = $('#search').val();
        if (search != '') {
            $.ajax({
                url: '/translate',
                type: 'POST',
                data: {
                    search: search
                },
                success: function (result) {
                    var obj = JSON.parse(result);
                    $.each(obj, function (key, value) {
                        var app = "'<tr id=" + value.id + ">" + value.id +
                                "<td>" + value.id + "</td>" +
                                "<td>" + value.english + "</td>" +
                                "<td>" + value.uzbek + "</td>" +
                                "</tr>'";
                        $('#tableEmployee tbody').append(app);
                    });
                },
                error: function (error) {
                    alert(error);
                }
            })
        }
    }

    function saveEmployee() {
        $('table tbody tr').remove();
        var english = $('#english').val();
        var uzbek = $('#uzbek').val();
        if (english == "" || uzbek == "") {
            alert("Fill the all area...!");
        }
        else {
            $.ajax({
                url: "/saveWord",
                type: "POST",
                data: {
                    english: english,
                    uzbek: uzbek
                },
                success: function (response) {
                    var app = "'<tr id=" + response.id + ">" + response.id +
                            "<td>" + response.id + "</td>" +
                            "<td>" + response.english + "</td>" +
                            "<td>" + response.uzbek + "</td>" +
                            "</tr>'";
                    $('#tableEmployee tbody').append(app);
                    $('#registerMenu form')[0].reset();
                },
                error: function (e) {
                    alert("Error: " + e);
                }
            })
        }
    }
</script>
</body>
</html>

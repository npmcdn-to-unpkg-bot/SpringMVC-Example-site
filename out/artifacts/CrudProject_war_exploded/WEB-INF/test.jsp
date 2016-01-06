<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--<title>Registration Page</title>--%>
<%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>--%>
<%--&lt;%&ndash;<script src="assets/js/bootstrap.js" type="application/javascript"></script>&ndash;%&gt;--%>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>--%>
<%--<link href="${pageContext.request.contextPath}/assets/css/bootstrap-theme.css" rel="stylesheet"/>--%>
<%--<script src="assets/js/bootstrap.min.js" type="application/javascript"></script>--%>
<%--<script src="assets/js/npm.js" type="application/javascript"></script>--%>
<%--<link href="assets/css/bootstrap-theme.css" rel="stylesheet">--%>
<%--<link href="assets/css/bootstrap-theme.css.map" rel="stylesheet">--%>
<%--<link href="assets/css/bootstrap-theme.min.css" rel="stylesheet">--%>
<%--<link href="assets/css/bootstrap-theme.min.css.map" rel="stylesheet">--%>
<%--<link href="assets/css/bootstrap.css" rel="stylesheet">--%>
<%--<link href="assets/css/bootstrap.min.css" rel="stylesheet">--%>
<%--<link href="assets/css/bootstrap.min.css.map" rel="stylesheet">--%>
<%--<style>--%>
<%--table, th, td {--%>
<%--border: 1px solid #030504;--%>
<%--border-collapse: collapse;--%>
<%--}--%>

<%--th, td {--%>
<%--padding: 5px;--%>
<%--text-align: center;--%>
<%--}--%>

<%--table#t01 tr:nth-child(even) {--%>
<%--background-color: #9dee7f;--%>
<%--}--%>

<%--table#t01 tr:nth-child(odd) {--%>
<%--background-color: #ffb915;--%>
<%--}--%>

<%--table#t01 th {--%>
<%--background-color: #14ff10;--%>
<%--color: #050609;--%>
<%--}--%>

<%--#Main {--%>
<%--display: inline-flex;--%>
<%--}--%>

<%--#table {--%>
<%--padding-left: 100px;--%>
<%--margin-top: 77px;--%>
<%--}--%>

<%--#addButton {--%>
<%--float: right;--%>
<%--}--%>
<%--</style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div id="Main">--%>
<%--<div class="Register_Menu" id="registerMenu" style="display: none; margin: 15px">--%>
<%--<h4>--%>
<%--<b>REGISTRATION FORM</b>--%>
<%--</h4>--%>

<%--<form>--%>
<%--<input type="text" id="hideId" name="hideId" hidden>--%>

<%--<div class="input-group">--%>
<%--First Name--%>
<%--<div class="input-group">--%>
<%--<input type="text" id="firstName" name="firstName" maxlength="15"--%>
<%--placeholder="First Name" class="form-control">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="input-group">--%>
<%--Last Name--%>
<%--<div class="input-group">--%>
<%--<input type="text" name="lastName" maxlength="12" id="lastName"--%>
<%--placeholder="Last Name" class="form-control">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="input-group">--%>
<%--Mobile--%>
<%--<div class="input-group">--%>
<%--<input type="tel" name="mobile" maxlength="15" id="mobile"--%>
<%--placeholder="Ex:+9989...." class="form-control">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="input-group">--%>
<%--E-mail--%>
<%--<div class="input-group">--%>
<%--<input type="text" autocomplete="off" name="my1" maxlength="50" id="email"--%>
<%--placeholder="bahodir9293@gmail.com" class="form-control" style="width: 195px">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="input-group">--%>
<%--Password--%>
<%--<div class="input-group">--%>
<%--<input type="password" autocomplete="off" name="my2" id="password" size="10" style="width: 195px"--%>
<%--class="form-control"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="input-group">--%>
<%--Address--%>
<%--<div class="input-group">--%>
<%--<input type="text" name="address" maxlength="70" id="address"--%>
<%--placeholder="Address" class="form-control">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="input-group">--%>
<%--State--%>
<%--<div class="input-group">--%>
<%--<input type="text" id="state" name="state" id="state"--%>
<%--placeholder="State" class="form-control">--%>
<%--</div>--%>
<%--</div>--%>
<%--<br>--%>
<%--<br>--%>

<%--<div class="input-group">--%>
<%--<div class="controls">--%>
<%--<input type="button" value="Ok" class="btn" onclick="saveEmployee()"/>--%>
<%--<input type="reset" value="Reset" class="btn"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--</form>--%>
<%--</div>--%>
<%--<div id="table">--%>
<%--<div class="row">--%>
<%--<div class="col-sm-6">--%>
<%--<div class="dataTables_length" id="dataTables-example_length">--%>
<%--Show <select--%>
<%--name="dataTables-example_length" aria-controls="dataTables-example"--%>
<%--class="form-control input-sm">--%>
<%--<option value="10">10</option>--%>
<%--<option value="25">25</option>--%>
<%--<option value="50">50</option>--%>
<%--<option value="100">100</option>--%>
<%--</select> entries--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="col-sm-6">--%>
<%--<div id="dataTables-example_filter" class="dataTables_filter">--%>
<%--Search:<input type="search"--%>
<%--class="form-control input-sm"--%>
<%--placeholder=""--%>
<%--aria-controls="dataTables-example">--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--<table id="tableEmployee" class="table table-striped table-bordered table-hover dataTable no-footer">--%>
<%--<tr class="gradeA even">--%>
<%--<th>Id</th>--%>
<%--<th>First Name</th>--%>
<%--<th>Last Name</th>--%>
<%--<th>Mobile</th>--%>
<%--<th>Email</th>--%>
<%--<th>Address</th>--%>
<%--<th>State</th>--%>
<%--<th>Edit</th>--%>
<%--<th>Delete</th>--%>
<%--</tr>--%>
<%--</table>--%>
<%--<br>--%>
<%--<input type="button" id="addButton" name="Add" value="Add User" class="btn">--%>
<%--</div>--%>
<%--</div>--%>
<%--<script>--%>
<%--$('#addButton').click(function () {--%>
<%--$('#registerMenu').toggle(1000);--%>
<%--});--%>

<%--function saveEmployee() {--%>
<%--var hideId = $('#hideId').val();--%>
<%--var firstName = $('#firstName').val();--%>
<%--var lastName = $('#lastName').val();--%>
<%--var mobile = $('#mobile').val();--%>
<%--var email = $('#email').val();--%>
<%--var password = $('#password').val();--%>
<%--var address = $('#address').val();--%>
<%--var state = $('#state').val();--%>
<%--if (firstName == "" || lastName == "" || mobile == "" || email == "" || password == "" || address == "" || state == "") {--%>
<%--alert("Fille all the area...!");--%>
<%--}--%>
<%--else {--%>
<%--$.ajax({--%>
<%--url: "urlSaveEmployee",--%>
<%--type: "POST",--%>
<%--data: {--%>
<%--hideId: hideId,--%>
<%--firstName: firstName,--%>
<%--lastName: lastName,--%>
<%--mobile: mobile,--%>
<%--email: email,--%>
<%--password: password,--%>
<%--address: address,--%>
<%--state: state--%>
<%--},--%>
<%--success: function (response) {--%>
<%--var firstName = $('#firstName').val();--%>
<%--var lastName = $('#lastName').val();--%>
<%--var mobile = $('#mobile').val();--%>
<%--var email = $('#email').val();--%>
<%--var password = $('#password').val();--%>
<%--var address = $('#address').val();--%>
<%--var state = $('#state').val();--%>

<%--if (response == hideId) {--%>
<%--var allTd = $('table tbody tr#' + hideId + " td");--%>
<%--allTd.eq(0).html(hideId);--%>
<%--allTd.eq(1).html(firstName);--%>
<%--allTd.eq(2).html(lastName);--%>
<%--allTd.eq(3).html(mobile);--%>
<%--allTd.eq(4).html(email);--%>
<%--allTd.eq(6).html(address);--%>
<%--allTd.eq(6).html(state);--%>
<%--}--%>
<%--else {--%>
<%--var app = "'<tr id=" + response + ">" + response +--%>
<%--"<td>" + response + "</td>" +--%>
<%--"<td>" + firstName + "</td>" +--%>
<%--"<td>" + lastName + "</td>" +--%>
<%--"<td>" + mobile + "</td>" +--%>
<%--"<td>" + email + "</td>" +--%>
<%--"<td>" + address + "</td>" +--%>
<%--"<td>" + state + "</td>" +--%>
<%--"<td>" + "<a class='glyphicon glyphicon-pencil' href='#' id='" + response + "' onclick='getEmployee(" + response + ")'>" + "</a>" + "</td>" +--%>
<%--"<td>" + "<a class='glyphicon glyphicon-remove' href='#' id='" + response + "' onclick='deleteEmployee(" + response + ")'>" + "</a>" + "</td>" +--%>
<%--"</tr>'";--%>
<%--$('#tableEmployee').append(app);--%>
<%--}--%>
<%--$('#firstName').val("");--%>
<%--$('#lastName').val("");--%>
<%--$('#mobile').val("");--%>
<%--$('#email').val("");--%>
<%--$('#password').val("");--%>
<%--$('#address').val("");--%>
<%--$('#state').val("");--%>
<%--$('#hideId').val("");--%>
<%--},--%>
<%--error: function (e) {--%>
<%--alert("Error: " + e);--%>
<%--}--%>
<%--})--%>
<%--}--%>
<%--}--%>
<%--function listEmployee() {--%>
<%--var firstName = $('#firstName').val();--%>
<%--var lastName = $('#lastName').val();--%>
<%--var mobile = $('#mobile').val();--%>
<%--var email = $('#email').val();--%>
<%--var password = $('#password').val();--%>
<%--var address = $('#address').val();--%>
<%--var state = $('#state').val();--%>

<%--$.ajax({--%>
<%--url: 'urlListEmployee',--%>
<%--data: 'POST',--%>
<%--success: function (response) {--%>
<%--var obj = JSON.parse(response);--%>
<%--$.each(obj, function (key, value) {--%>
<%--var app = "'<tr id=" + value.id + ">" + value.id +--%>
<%--"<td>" + value.id + "</td>" +--%>
<%--"<td>" + value.firstName + "</td>" +--%>
<%--"<td>" + value.lastName + "</td>" +--%>
<%--"<td>" + value.mobile + "</td>" +--%>
<%--"<td>" + value.email + "</td>" +--%>
<%--"<td>" + value.address + "</td>" +--%>
<%--"<td>" + value.state + "</td>" +--%>
<%--"<td>" + "<a class='glyphicon glyphicon-pencil' href='#' id='" + value.id + "' onclick='getEmployee(" + value.id + ")'>" + "</a>" + "</td>" +--%>
<%--"<td>" + "<a class='glyphicon glyphicon-remove' href='#' id='" + value.id + "' onclick='deleteEmployee(" + value.id + ")'>" + "</a>" + "</td>" +--%>
<%--"</tr>'";--%>
<%--$('#tableEmployee').append(app);--%>
<%--}--%>
<%--);--%>
<%--},--%>
<%--error: function (error) {--%>
<%--alert(error);--%>
<%--}--%>
<%--})--%>
<%--}--%>

<%--function deleteEmployee(id) {--%>
<%--$.ajax({--%>
<%--url: 'urlDeleteEmployee',--%>
<%--type: 'POST',--%>
<%--data: {--%>
<%--id: id--%>
<%--},--%>
<%--success: function (response) {--%>
<%--$('#' + response).remove();--%>
<%--$('#firstName').val("");--%>
<%--$('#lastName').val("");--%>
<%--$('#mobile').val("");--%>
<%--$('#email').val("");--%>
<%--$('#password').val("");--%>
<%--$('#address').val("");--%>
<%--$('#state').val("");--%>
<%--$('#hideId').val("");--%>
<%--},--%>
<%--error: function (error) {--%>
<%--alert("Error: " + error);--%>
<%--}--%>
<%--})--%>
<%--}--%>
<%--function getEmployee(id) {--%>
<%--$.ajax({--%>
<%--url: 'urlGetEmployee',--%>
<%--type: 'POST',--%>
<%--data: {--%>
<%--id: id--%>
<%--},--%>
<%--success: function (response) {--%>
<%--var obj = JSON.parse(response);--%>
<%--$('#hideId').val(obj.id);--%>
<%--$('#firstName').val(obj.firstName);--%>
<%--$('#lastName').val(obj.lastName);--%>
<%--$('#mobile').val(obj.mobile);--%>
<%--$('#email').val(obj.email);--%>
<%--$('#address').val(obj.address);--%>
<%--$('#state').val(obj.state);--%>
<%--},--%>
<%--error: function (error) {--%>
<%--alert("Error: " + error);--%>
<%--}--%>
<%--});--%>
<%--}--%>
<%--</script>--%>
<%--</body>--%>
<%--</html>--%>
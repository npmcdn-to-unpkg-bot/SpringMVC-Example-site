/*
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Page</title>
    <%--<script src="assets/js/jquery.lib.js"></script>--%>
    <%--<script src="assets/js/bootstrap.js" type="application/javascript"></script>--%>
    <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/bootstrap.js"></script>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap-theme.css" rel="stylesheet"/>
    <script src="assets/js/jquery.dataTables.min.js"></script>
    <link href="assets/css/dataTables.min.css">
    <script src="assets/js/jquery-1.11.3.min.js"></script>
</head>
<body>

<table id="example" class="display" cellspacing="0" width="100%">
    <thead>
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Mobile</th>
        <th>Email</th>
        <th>State</th>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <th>First name</th>
        <th>Last name</th>
        <th>Mobile</th>
        <th>Email</th>
        <th>State</th>
    </tr>
    </tfoot>
</table>
<script>
    $(document).ready(function() {
        $('#example').DataTable( {
            "processing": true,
            "serverSide": true,
            "ajax": "/urlListEmployee",
            "columns": [
                { "data": "firstName" },
                { "data": "lastName" },
                { "data": "mobile" },
                { "data": "email" },
                { "data": "state" }
            ]
        });
    });
</script>
</body>
</html>
*/
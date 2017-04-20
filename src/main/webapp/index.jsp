<!DOCTYPE html>
<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <title>Kovka</title>

    <style>
        .logo_div_main_start{
            width: 500px;
            height: 500px;
            position: absolute;
            top:0;
            bottom: 0;
            right: 0;
            left: 0;
            margin: auto;
            background-image: url("img/main/logo-16.jpg");
            background-position: center;
            background-repeat: no-repeat;
            background-size: 80%;

        }
    </style>
    <script type="text/javascript">

        window.onload = function () {
            window.location = "<%=request.getContextPath()%>/home.htm";
        }
    </script>
</head>
<body >
<div class="logo_div_main_start">

</div>

</body>
</html>
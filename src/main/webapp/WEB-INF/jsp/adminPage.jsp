<%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 10/05/23
  Time: 4:16 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AdminPages</title>
    <style>
        body{
            margin: 0;
            padding: 0;
        }
        .nav{
            display: flex;
            background-color: cadetblue;
            justify-content: space-between;
            align-items: center;

        }
        li{
            list-style: none;
        }
        a{
            text-decoration: none;
        }

    </style>
</head>
<body>
<div class="nav">

    <li><img src="https://www.forextime.com/themes/custom/fxi_theme/dist/assets/images/logo-dark.svg" alt="FXTM"></li>
    <li>Home</li>
    <li onclick="location.href='/plan'" >Plan</li>
    <li>User</li>
    <li onclick="location.href='/pytmNotify'" target="_self">Payment Notification</li>
    <li>
        <a href="">Admin</a><br>
        <a href="">Logout</a>
    </li>
</div>

</body>
</html>

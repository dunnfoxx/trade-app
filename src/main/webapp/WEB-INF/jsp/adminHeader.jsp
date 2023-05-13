<%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 13/05/23
  Time: 1:31 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
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
      td{
        border: 0px;
        border-bottom: 1px solid black ;
        border-right: 1px solid black ;
      }

    </style>
  </head>
  <body>
  <div class="nav">

    <li><img src="https://www.forextime.com/themes/custom/fxi_theme/dist/assets/images/logo-dark.svg" alt="FXTM"></li>
    <li onclick="location.href='/adminHome'" target="_self">Home</li>
    <li onclick="location.href='/plan'" target="_self" >Plan</li>
    <li>User</li>
    <li onclick="location.href='/pytmNotify'" target="_self">Payment Notification</li>
    <li>
      <a href="">Admin</a><br>
      <a href="">Logout</a>
    </li>
  </div>

  </body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 11/05/23
  Time: 5:53 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="userHeader.css">
  <style>
    * {
      padding: 0;
      margin: 0;

    }

    body {
      padding: 0;
      margin: 0;

    }

    .box {
      text-align: center;
    }

    .box2 {
      position: relative;
      line-height: 80px;
      top: 200px;
    }

    .box input {
      width: 30%;
      height: 41px;
      border-radius: 20px;
      font-size: 17px;
      border: 1px solid black;
      outline: none;
      padding: 0px 20px;

    }

    .btn {
      text-align: center;
      width: 20%;
      height: 60px;
      border-radius: 20px;
      background-color: #fff;
      color: black;
      font-size: 18px;
      font-weight: 700;
    }

    .btn:hover {
      background-color: rgb(75, 196, 69);
      color: #fff;
      border: 1px solid rgb(75, 196, 69);
    }
  </style>
</head>

<body>
<jsp:include page="userHeader.jsp"/>
<div class="box">
  <div class="box2">
    <form method="post" action="/addManualFund">
    <input type="number" value="${amt}" name="amount"><br>
    <input type="submit" class="btn" value="CREATE FUND REQUEST">
    </form>
  </div>
</div>
<h3 style="position: absolute; bottom: 10%; color: darkslateblue;">${fundId} ${msg}</h3>
</body>

</html>
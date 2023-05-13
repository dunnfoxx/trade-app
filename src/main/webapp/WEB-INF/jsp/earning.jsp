<%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 13/05/23
  Time: 4:05 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="userHeader.css">
  <title>EARNING</title>
  <style>
    * {
      padding: 0;
      margin: 0;

    }

    body {
      padding: 0;
      margin: 0;
    }

    header {

      height: 40px;
      text-align: center;
      font-size: 30px;


    }



    header a:hover {
      text-decoration:underline;
    }

    div {
      text-align: center;
    }

    table tr th {
      border: 1px solid black;

    }

    table {
      border: 1px solid black;
      border-collapse: collapse;

      width: 98%;
      height: 40px;
      margin: 20px 10px
    }
    .hed1{
      padding: 20px 0px;
      color: black;
      text-decoration: none;
    }
  </style>
</head>

<body>
<jsp:include page="userHeader.jsp"/>
<header>
  <a class="hed1" href="">EARNING</a>
</header>
<div>
  <table>
    <tr>
      <th> PLAN NAME</th>
      <th>AMOUNT</th>
      <th>EARNING</th>
      <th>MATURE</th>
      <th>WITHDRAWAL</th>
    </tr>
<c:forEach items="${earns}" var="earn">

    <tr>
      <th>${earn.name}</th>
      <th>${earn.amount}</th>
      <th>${earn.earning}</th>
      <th>${earn.expireDate}</th>
      <th>withdrawal</th>
    </tr>
    </c: forEach>



  </table>
</div>

</body>

</html>

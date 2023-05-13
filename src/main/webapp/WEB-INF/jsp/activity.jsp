<%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 13/05/23
  Time: 1:25 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="display:flex; justify-content: space-around; margin-top: 20px">
  <div style="height:150px; width:300px; background-color: gray;" onclick="location.href='/totalUser'" target="_self">
    <h2 style="text-align:center ;">TOTAL USER</h2>
    <h3 style="text-align:center ;">100</h3>

  </div>

  <div style="height:150px; width:300px; background-color: gray;" onclick="location.href='/activeUser'" target="_self">
    <h2 style="text-align:center ;">ACTIVE USER</h2>
    <h3 style="text-align:center ;">40</h3>
  </div>

  <div style="height:150px; width:300px; background-color: gray;" onclick="location.href='/inactiveUser'" target="_self">
    <h2 style="text-align:center ;">INACTIVE USER</h2>
    <h3 style="text-align:center ;">60</h3>
  </div>
</div>


</body>
</html>

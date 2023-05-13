<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 13/05/23
  Time: 11:01 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>USER</title>
</head>
<body>
<jsp:include page="adminHeader.jsp"/>
<jsp:include page="activity.jsp"/>
<div>
  <p>${status}</p>
  <table style="border: 2px solid black;width:80%;margin-left: 10%; margin-top: 20px;">
    <tr>
      <td>USER Id</td>
      <td>NAME</td>

      <td>MOBILE</td>

      <td colspan="2">ACTIVE/INACTIVE</td>
    </tr>
<c:forEach items="${users}" var="user">
    <tr>
      <td>${user.id}</td>
      <td>${user.firstName} ${user.lastName}</td>

      <td>${user.mobile}</td>

      <td><input type="submit" value="INACTIVE" onclick="location.href='/able?activeStatus=yes&id=${user.id}'" target="_self"></td>
      <td><input type="submit" value="ACTIVE" onclick="location.href='/able?activeStatus=no&id=${user.id}'" target="_self"></td>
    </tr>
  </c:forEach>
  </table>
</div>

</body>
</html>

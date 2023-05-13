<%@ page import="java.util.List" %>
<%@ page import="com.trade.repository.FundRepository" %>
<%@ page import="com.trade.model.FundResponse" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 11/05/23
  Time: 6:11 pm
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
  <title>Document</title>
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
      text-decoration: underline;
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

    table tr th input {
      outline: none;
      width: 94%;
      height: 40px;
      padding: 0px 10px;
      border: none;
      font-size: 18px;

    }
    button{
      width: 100px;
      height: 30px;
      font-size: 16px;
      font-weight: 400;
      border: none;
    }
    .btn1{
      border: 2px solid white;
      background-color: rgb(82, 171, 82);
      color: #fff;
      width: 40%;
    }

    .btn2{
      border: 2px solid white;
      color:#fff ;
      background-color: red;
      width: 40%;
    }

    .hed1{
      padding: 20px 0px;
      color: black;
      text-decoration: none;
    }
  </style>
</head>

<body>
<jsp:include page="adminHeader.jsp"/>
<header>
  <a class="hed1" href="">Payment Notification</a> <span style="color:red;margin-left: 82px">${msg}</span>
</header>
<div>
  <table>

    <tr>
      <th>Fund id</th>
      <th>NAME</th>
      <th>REQUEST ID</th>


      <th colspan="2">
        <input type="hidden" value="ss" name="id">
        <input type="submit" class="btn1" value="Approve" name="approved">
        <input type="submit" class="btn2" value="Reject" name="approved">
      </th>
    </tr>

    <% List<FundResponse>   fundResponses = (List<FundResponse>) request.getAttribute("funds");
    for (FundResponse fr : fundResponses){
      %>

      <tr>
        <th><%=fr.getFund().getId() %> </th>
        <th> <%=fr.getUser().getFirstName()%> <%=fr.getUser().getLastName()%></th>
        <th> FXTM-CREDIT-MANUAL-<%=fr.getFund().getId() %> </th>
        <th colspan="2">
          <input onclick="location.href='/approveFund?flag=Approve&id=<%=fr.getFund().getId()%>'" target="_self" type="submit" class="btn1" value="Approve">
          <input onclick="location.href='/approveFund?flag=Reject&id=<%=fr.getFund().getId()%>'" target="_self" type="submit" class="btn2" value="Reject">
        </th>
      </tr>

    <%
    }
    %>
  </table>
</div>
</body>
<script>
  function fetchAll(){
    fetch('https://reqbin.com/echo/post/json', {
      method: 'POST',
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({ "id": 78912 })
    }).then(response => response.json())
            .then(response => console.log(JSON.stringify(response)))
  }
  //function delete
</script>
</html>

<%@ page import="java.util.List" %>
<%@ page import="com.trade.entity.Plan" %><%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 12/05/23
  Time: 4:36 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product Selection</title>
    <link rel="stylesheet" href="userHeader.css">
    <style>
        body{
            padding: 0;
            margin: 0;
            background-color: whitesmoke;
        }
        .main{
            display: inline-block;
            width: 100%;
            height: 97vh;

            padding: 5px;
        }
        .product{
            display: inline-block;
            width: 20%;
            margin: 24px;
            height: 21%;
            background-color: #920ba0;;
            border: 2px solid #b49809;
        }
        .hrdh2{
            text-align: center;
        }
        .plan_name{
            text-align: center;
            color: gold;
            font-weight: bold;
            margin-top: 0;
        }
        .amt{
            text-align: center;
            color: #00ff23;
            font-weight: bold;

            font-size: 28px;
        }
        .returnAmt{
            text-align: center;
            color: whitesmoke;
            font-weight: bold;

        }
        .time{
            text-align: center;
            color: #2cc9c2;
            font-weight: bold;

        }
        .self-trade{
            text-align: center;

            color: #eacf50;

        }
    </style>
</head>
<body>
<jsp:include page="userHeader.jsp"/>
<h2 class="hrdh2">Select Product</h2>
<span style="color:red;margin-left: 82px">${msg}</span>
<div class="main">
<%
    List<Plan> plans =(List<Plan>)  request.getAttribute("plans");
    if(plans != null){

        for(Plan plan : plans){
            %>

    <div class="product" onclick="location.href='/buyplanbyuser?id=<%=plan.getId()%>'" target="_self">
        <p class="plan_name"> <%=plan.getName()%></p>
        <p class="amt"><%=plan.getAmount()%> </p>
        <p class="returnAmt"><%=plan.getReturnn()%> % per month </p>
        <p class="time"> Duration <%=plan.getDuration()%> Months </p>
        <p class="self-trade"> Self Trade - <% if(plan.isSelfTrade()){ %> Yes <% } else{ %>No <%} %>  </p>
    </div>
    <%
        }
    }
%>








</div>
</body>
</html>

</body>
</html>

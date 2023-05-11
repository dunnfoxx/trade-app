<%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 11/05/23
  Time: 9:08 am
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
  <title>create plan</title>
  <style>
    body {
      padding: 0;
      margin: 0;
    }

    .form-box {
      border: 2px solid black;
      width: 40%;
      border-radius: 20px;
      text-align: center;
      display: inline-block;
      height: 70%;
      margin-left: 10px;
    }


    .form-itmes {
      display: grid;
      padding: 20px;
    }

    .form-itmes input {
      position: relative;
      left: 120px;
      bottom: 25px;
      width: 70%;
      height: 25px;
      font-size: 18px;
      border-top: none;
      border-left: none;
      border-right: none;
      outline: none;
    }

    .form-itmes label {
      font-size: 17px;
      display: flex;
    }

    .form-itmes select {
      position: relative;
      left: 120px;
      bottom: 25px;
      width: 72%;
      height: 30px;
      font-size: 18px;
      border-top: none;
      border-left: none;
      border-right: none;
      border-bottom: 2px solid rgb(107, 107, 107);
      outline: none;
    }

    .tbl{
      margin-left: 150px;
      border: 3px dashed gray;
      overflow: scroll;
      width: 70%;
      height: 60%;
    }

    table,
    th,
    td {
      border: 1px solid black;
    }
    tr:nth-child(even){
      background-color: #4cb1ff;
    }
    tr:nth-child(odd){
      background-color: #B0B3B9;
    }

    /*.table-text {
      float: right;
      position: relative;
      bottom: 400px;
      width: 50%;
      right: 75px;
    }*/
    .table-div{
      display: inline-block;
      width: 70%;
      height: 70%;
      overflow-x: scroll;
    }
    .form-div{
    display: inline-block;
    width: 40%;
      float: right;


    }
.content{
  display: flex;
  width: 100vw;
  height: 100vh;
}

  </style>
</head>
<jsp:include page="adminPage.jsp"/>

<body>
<div class="content">


    <div class="form-box">
      <form method="post" action="/addPlan">
      <h1>Create Plan</h1>
      <input type="hidden" name="id" value="${id}">
      <div class="form-itmes">
        <label > Plan Type:-</label> <select name="selfTrade" >
        <option value="1">Self Trade</option>
        <option value="0">Fixed</option>
      </select>
        <label > Plan Name:- </label><input name="name" type="text" placeholder="">
        <label >Plan Amount:-</label><input name="amount" type="number" placeholder="">

        <label >Monthly Return:-</label> <input  name="returnn" type="number 100%" placeholder>

        <label >Duration Month:-</label> <select name="duration" >
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
        <option value="8">8</option>
        <option value="9">9</option>
        <option value="10">10</option>
        <option value="11">11</option>
        <option value="12">12</option>
        <option value="13">13</option>
        <option value="14">14</option>
        <option value="15">15</option>
        <option value="16">16</option>
        <option value="17">17</option>
        <option value="18">18</option>
        <option value="19">19</option>
        <option value="20">20</option>
        <option value="21">21</option>
        <option value="22">22</option>
        <option value="23">23</option>
        <option value="24">24</option>
        <option value="25">25</option>
        <option value="26">26</option>
        <option value="27">27</option>
        <option value="28">28</option>
        <option value="29">29</option>
        <option value="30">30</option>
        <option value="31">31</option>
        <option value="32">32</option>
        <option value="33">33</option>
        <option value="34">34</option>
        <option value="35">35</option>
        <option value="36">36</option>
      </select>
      </div>
      <input type="submit" value="Submit">
      <p style="color:red">${msg}</p>

  </form>
    </div>
  <div class="table-div">
  <table class="table-text tbl">
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Amount</th>
      <th>Return</th>
      <th>Duration</th>
      <th>Action</th>
    </tr>
<c:forEach items="${plans}" var="plan">
    <tr>
      <th>${plan.id}</th>
      <th>${plan.name}</th>
      <th>${plan.amount}</th>
      <th>${plan.returnn}</th>
      <th>${plan.duration}</th>
      <th> <form action="/deletePlan" method="post">

        <input type="hidden" name="id"value="${plan.id}">
        <input type="submit" value = "delete">
      </form> </th>
    </tr>
</c:forEach>

  </table>
  </div>
</div>
</body>

</html>

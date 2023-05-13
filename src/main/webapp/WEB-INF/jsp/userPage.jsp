<%--
  Created by IntelliJ IDEA.
  User: ppp
  Date: 10/05/23
  Time: 4:17 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <title>Trading Website Login Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        * {
            padding: 0;
            margin: 0;

        }

        body {
            padding: 0;
            margin: 0;

        }

        .container {}

        header {
            background-color: black;
            height: 50px;
            width: 100%;

        }

        header ul {
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            padding: 5px 0px;
            position: relative;
            right: 63px;
        }

        header ul li {
            list-style: none;

            color: aliceblue;
            font-size: 15px;

        }

        header ul li:hover {
            text-decoration: orangered underline;
        }

        .img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            position: relative;
            left: 117px;
        }

        .first {
            color: aliceblue;
            position: relative;
            left: 128px;

        }

        /* @media screen and (min-width: 320px) {
  header {
    width: 130%;
  }

 .img{

    left: 3px;
 }
 .first{
    left: 2px;
 }
 header ul{
    right: 5px;
 }
}
@media screen and (min-width: 280px) {
  header {
    width: 130%;
  }

 .img{

    left: 3px;
 }
 .first{
    left: 2px;
 }
 header ul{
    right: 5px;
 }
 header ul li{
    font-size: 10px;
 }
} */
        table {
            font-family: arial, sans-serif;
            width: 40%;
        }

        td,
        th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 5px;
        }


        tr:nth-child(odd) {
            background-color:lightgray;
        }
        tr:nth-child(even) {
            background-color: whitesmoke;
        }

        .table2 {
            display: flex;
            justify-content: center;
            padding: 20px 0px;
            width: 70%;

        }
        table{
            width: 100%;
        }
        .inp{
            width: 100%;
        }
        .inp-search input{
            line-height: 30px;
        }

    </style>

</head>

<body>
<jsp:include page="userHeader.jsp"/>
<div class="table2">
    <table>

        <tr>
            <th>NIFTY</th>
            <th>SENSEX</th>
        </tr>
        <tr>
            <td>8.45+ <br>+0.10(+1.20%)</td>
            <td>880.00+ <br>+1.20(+0.00%)</td>
        </tr>
        <tr>
            <th colspan="2" class="inp-search">
                <input  class="inp" type="text" placeholder="Search For A Company Or A Stock" name="search">

            </th>
        </tr>

        <tr>
            <th>STOCK NAME</th>
            <th>PRICE/CHANGE</th>
        </tr>
        <tr>
            <td> SUZLON <br> NSE</td>
            <td>8.45+ <br>+0.10(+1.20%)</td>
        </tr>
        <tr>
            <td>JPPOWER <br> NSE</td>
            <td>5.85+ <br>+0.05(+0.86%)</td>
        </tr>
        <tr>
            <td>ADANIENT <br> NSE</td>
            <td>5.85+ <br>+0.05(+0.86%)</td>
        </tr>
        <tr>
            <td>ADANIPORTS <br> NSE</td>
            <td>705.50+ <br>+14.50(+2.10%)</td>
        </tr>
        <tr>
            <td>CITIPOR <br> BSE</td>
            <td>20.00+ <br>+0.00(+0.00%)</td>
        </tr>
        <tr>
            <td>SHRIRAMFIN <br> BSE</td>
            <td>300.90+ <br>+0.90(+0.90%)</td>
        </tr>
        <tr>
            <td>RELIANCE <br> BSE</td>
            <td>880.00+ <br>+1.20(+0.00%)</td>
        </tr>
        <tr>
            <td>CITIPOR <br> BSE</td>
            <td>20.00+ <br>+0.00(+0.00%)</td>
        </tr>
        <tr>
            <td>SHRIRAMFIN <br> BSE</td>
            <td>300.90+ <br>+0.90(+0.90%)</td>
        </tr>
        <tr>
            <td>RELIANCE <br> BSE</td>
            <td>880.00+ <br>+1.20(+0.00%)</td>
        </tr>
        <tr>
            <td>CITIPOR <br> BSE</td>
            <td>20.00+ <br>+0.00(+0.00%)</td>
        </tr>


    </table>
</div>



</body>

</html>


<div class="container">
  <header>
    <ul>
      <li style="color: red" onclick="location.href='/home'" target="_self"> <b>HOME</b></li>
      <li onclick="location.href='/addFund'" target="_self">ADD FUND</li>
      <li>WITHDRAWL</li>
      <li onclick="location.href='/buy'" target="_self">BUY PLAN </li>
      <li>REPORT</li>
      <li style="color: yellow"> <b>INVESTMENT</b> <br>${user.investment}</li>
      <li style="color: greenyellow" onclick="location.href='/earn?id=${user.id}'" target="_self" > <b>EARNING</b> <br>${user.earning}</li>
      <li style="color: red"> <b>BALANCE</b> <br>${user.balance}</li>


      <p class="first">${user.firstName}</p>


      <li> <img class="img" src="icon.jpg" alt=""></li>

    </ul>
  </header>




</div>

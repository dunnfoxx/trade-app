<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="/contect.css">
    <link rel="stylesheet" href="/fxtm.css">
    <title>Online Treding Broker / FXTM Globle</title>
    <link rel="icon" type="image/x-icon"
        href="	data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAACzklEQVR4AWIgBP5HKQNqrwcYPYIwjONvbdu2bZuxyqi2bdu2G9RtVNu226B2e9676T+X6WU7yc3ufmk3+b3xPM96F8C21+UF1XEN3xCrfcUt7MV4VEAyiH3zDk6GZugI2f4yvkBrREIlwsFzrEUDJEPAYKAwFuEzlkJ2vIgv0MpWwPAOC1AAAt/hjXABSlsJ2fk8fpEmCIPyKQ6nURMCz/B2eArlsh8pD10pKyxQFM+gAhoOgeeeP4EyPEWRX/2Kiz6n66AC+ISGXntf2H3YDQ66ue6E8rgO5YODyUj+ZEkpYY00yAgxr/bFUBbHkCuuc0KJurjtI3wRMu3g+tFZPTEFyZBQoAneQ1nEYhZSOt0SStTDbUv4EmTGn5yaeISPqA8R3WQdlA+/MBIpne5/lbjjI7wyLkFpS5BUGJXwAsqnXxhllKiPu67wpR7hIJNsYUxCLFQoJWJ0CTTALSxHFld4FTNcczBAGHuhQvALo5HKdSTKIrsRftmyxgZh3IYKURjGIDXMZ0pVazhwWxjfoEKFL2hmFEiBLVAevon1/HuLwQJkMo8AGuKu163tXcA7PCNEy4cMEK0+7ngV+Bpi+EJkgmjVcBazkQ6i1bOU+CqMWyGELzLCq+IKFCIx02eJW0FvQ8cMRzVXOAKVWCeM8QGug3XIbIRfhQI8SzTBCyg46C+MCngO5eEKilrCbSXSQrQhiMNzVBBGUqyFsohDX4hWEhehfIjECCSBIAcuYgmSuu/Zd5ZFXqMMBEmwBCqAt6gL0Yahgft7ICkWWhY4gtQQFMRDqIBGQ7QsSGF+FRXAaSgTVhvfjb+gAtqEJLB+lNZNZO+WQLRWiIQKaDeSwfOzvDke/ocC68wjYCtRB6f+YYFjqAqB77+jgpiNz1gaYoF3mI781nBLkeRohOYQrbVHAQfPsRC1refdZxFTdVzDN8RqX3EL69AfFfwG/waoyc+SBRtOFwAAAABJRU5ErkJggg==">
</head>

<body>
    <div class="header">
        <ul>
            <li>
                <input class="search" type="text" placeholder="Search"> <img class="search-icon"
                    src="/fxtm/image/search.svg" alt="">
            </li>
            <li onclick="location.href='/contect'" target="_self" >CONTACT US</li>
            <li class="orange-btn" onclick="location.href='/login?flag=regis'" target="_self"></a> OPEN ACCOUNT
            </li>
            <li onclick="location.href='/login?flag=login'" target="_self">LOGIN</li>
        </ul>
    </div>
    <div class="header-navbar" id="headernavbar">
        <ul>
            <li><img class="logo-dark"
                    src="https://www.forextime.com/themes/custom/fxi_theme/dist/assets/images/logo-dark.svg"
                    alt="logo-dark"></li>
            <li>
                <div class="tooltip"> <a href="#">ABOUT</a>
                    <span class="tooltiptext first">
                        <ol>
                            <label for="">ABOUT US</label>
                            <li>Why FXTM </li>
                            <li>Awards</li>
                            <li>Fund Safety</li>
                            <li>Trading Statistics</li>
                            <li>Frequently Asked Questions</li>
                        </ol>
                        <ol>
                            <label for="">COSTS</label>
                            <li>Deposits and Withdrawals</li>
                            <li>Trading Commissions and Fees</li>
                        </ol>
                        <ol>
                            <label for="">PROMOTIONS</label>
                            <li>Promotions and Contests</li>
                            <li>Refer a Friend</li>
                        </ol>
                    </span>
                </div>
            </li>
            <li>
                <div class="tooltip"> <a href="#">MARKETS</a>
                    <span class="tooltiptext second">
                        <ol>
                            <label for="">INSTRUMENTS</label>
                            <li>Markets Overview</li>
                            <li>Contract Specifications</li>
                        </ol>
                        <ol>
                            <label for="">FX</label>
                            <li>Forex</li>
                        </ol>
                        <ol>
                            <label for="">METALS AND COMMODITIES</label>
                            <li>Spot Metals</li>
                            <li>CFD Commodities</li>
                        </ol>
                        <ol>
                            <label for="">STOCKS AND INDICES</label>
                            <li>Stock Trading</li>
                            <li>Stock CFDs</li>
                            <li>CFD on Indices</li>
                        </ol>
                    </span>
                </div>
            </li>
            <li>
                <div class="tooltip"> <a href="#">TRADING</a>
                    <span class="tooltiptext third">
                        <ol>
                            <label for="">ACCOUNTS</label>
                            <li>Accounts Overview</li>
                            <li>Micro Account</li>
                            <li>Advantage Account</li>
                            <li>Advantage Plus Account</li>
                            <li>Demo Accounts</li>
                        </ol>
                        <ol>
                            <label for="">PLATFORMS</label>
                            <li>Platforms Overview</li>
                            <li>MT4</li>
                            <li>MT5</li>
                            <li>Mobile Trading</li>
                        </ol>
                        <ol>
                            <label for=""> TOOLS</label>
                            <li>Tools Overview</li>
                            <li> PIP Calculator</li>
                            <li>Profit Calculator</li>
                            <li>Margin Calculator</li>
                            <li> Trading Signals</li>
                        </ol>
                        <ol>
                            <label for=""> TERMS </label>
                            <li>Holiday Trading Schedule</li>
                            <li>Leverage and Margin </li>
                        </ol>
                    </span>
                </div>
            </li>
            <li>
                <div class="tooltip"><a href="#">FXTM INVEST </a>
                    <span class="tooltiptext four">
                        <ol>
                            <label for="">FXTM INVEST</label>
                            <li>FXTM Copy Trading</li>
                            <li>Strategy Managers</li>
                            <li>Ultimate Guide to Copy Trading</li>
                            <li>Strategy Managers Ranking</li>
                        </ol>
                    </span>
                </div>
            </li>
            <li>
                <div class="tooltip"> <a href="#">EDUCATION</a>
                    <span class="tooltiptext five">
                        <ol>
                            <label for="">TRADING EDUCATION</label>
                            <li>Expert Trader</li>
                            <li>Education Overview</li>
                            <li>Videos</li>
                            <li> Glossary</li>
                        </ol>
                        <ol>
                            <label for="">MARKET ANALYSIS</label>
                            <li>Daily Market Analysis</li>
                            <li>Market Analyst Team</li>
                            <li>Economic Calendar</li>
                        </ol>
                        <ol>
                            <label for="">TOP GUIDES</label>
                            <li>Forex Trading for Beginners</li>
                            <li>CFD Trading for Beginners</li>
                        </ol>
                    </span>
                </div>
            </li>
            <li>
                <div class="tooltip"> <a href="#">AFFILIATES</a>
                    <span class="tooltiptext six">
                        <div class="last">
                            <ol>
                                <li>Affiliates</li>
                                <li>Commission</li>
                                <li> Affiliates FAQs</li>
                            </ol>
                        </div>

                    </span>
                </div>
            </li>
        </ul>
    </div>
    <div>
        <div class="top-content">
            <img src="contact-us-banner-desktop-543.png.webp" alt="" class="top-content-img">
            <div class="top-content-git">
                <div top-content-git-h1>
                    <h1>Get in touch</h1>
                </div>
                <div class="top-content-git-contect">
                    <div>
                        <p>
                            <img src="phone.svg" alt="Error">
                            +44 20 3734 1025
                        </p>
                    </div>
                    <div>
                        <p>
                            <img src="letter.svg" alt="Error">
                            support@fxtm.com
                        </p>
                    </div>
                </div>
            </div>


        </div>
        <div>
            <div class="mid-content">
                <div class="mid-content-left">
                    <div>
                        <p class="p1">India</p>
                        <p class="p2"> <img src="image/phone.svg" alt=""> Toll Free: 000800 100 4352</p>
                        <p class="p2"><img src="image/letter.svg" alt=""> support@fxtm.com</p>
                    </div>
                    <div>
                        <p class="p1">Kenya</p>
                        <p class="p2"><img src="image/phone.svg" alt=""> +254 207 640 415</p>
                        <p class="p2"><img src="image/letter.svg" alt=""> support@fxtm.com</p>
                    </div>
                    <div>
                        <p class="p1">Indonesia</p>
                        <p class="p2"><img src="image/phone.svg" alt=""> Toll Free: 007 835 321 8183</p>
                        <p class="p2"><img src="image/letter.svg" alt=""> support@fxtm.com</p>
                    </div>
                    <div>
                        <p class="p1">Nigeria</p>
                        <p class="p2"><img src="image/phone.svg" alt=""> +234 1 460 1586
                        <p class="p2 p3"> +234 908 735 2313</p>
                        <p class="p2 p3"> +234 803 457 3593</p>
                        </p>
                        <p class="p2"><img src="image/letter.svg" alt=""> nigeria@fxtm.com</p>
                    </div>
                    <div>
                        <p class="p1">South Korea</p>
                        <p class="p2"><img src="image/phone.svg" alt=""> Toll Free: 234 1 850 4886

                        <p class="p2"><img src="image/letter.svg" alt=""> support@fxtm.com</p>
                    </div>

                </div>
                <div>
                    <div class="mid-content-right">
                        <div class="mcr-top">
                            <div class="mcr-top-left">
                                <h2>CUSTOMER SUPPORT</h2>
                                <p>We are dedicated to making your investment experience with us a pleasure. Please
                                    contact us via chat, telephone, email or the form below.</p>

                            </div>
                            <div class="mcr-top-right">
                                <a href=""> A B C </a>
                                <p>
                                    Monday to Friday: 24 hours
                                    <br>
                                    Saturday: 11:00-16:00
                                    <br>
                                    Sunday: 12:00-20:00
                                    <br>
                                    (GMT+2/GMT+3 during Daylight Saving Time)
                                </p>
                            </div>
                        </div>
                        <div class="mcr-bottom">
                            <select
                                class="form-select">
                                <option value="" selected="selected">Category (All)</option>
                                <option value="Queries and Support">Queries and Support</option>
                                <option value="New Accounts">New Accounts</option>
                                <option value="Account Opening">Account Opening</option>
                                <option value="Disputes / Complaints">Disputes / Complaints</option>
                                <option value="Back Office">Back Office</option>
                                <option value="Partnerships">Partnerships</option>
                                <option value="Media Relations">Media Relations</option>
                            </select><br>
                            <input type="text" placeholder="Name"><br>
                            <input type="email" placeholder="Email">
                            <input type="number" placeholder="Phone e.g. +123 4567 8910"><br>
                            <textarea type="text" placeholder="Message">Message </textarea><br>
                            <button class="send-btn">Send</button>
                        </div>
                         
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"/>


</body>

</html>
<%-- 
    Document   : topbar
    Created on : Apr 9, 2021, 9:00:47 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<body>
    <div class="topbar stick">
        <div class="logo">
            <a title="" href="newsfeed.html"><img src="images/logo.png" alt=""></a>
        </div>

        <div class="top-area">
            <div class="top-search">
                <form method="post" class="">
                    <input type="text" placeholder="Search Friend">
                    <button data-ripple><i class="ti-search"></i></button>
                </form>
            </div>
            <ul class="setting-area">
                <li><a href="newsfeed.html" title="Home" data-ripple=""><i class="ti-home"></i></a></li>
                <li>
                    <a href="#" title="Notification" data-ripple="">
                        <i class="ti-bell"></i><span>20</span>
                    </a>
                </li>
            </ul>
            <div class="user-img">
                <img src="images/resources/admin.jpg" alt=""> Hoàng Nhi
            </div>
            <span class="ti-menu main-menu" data-ripple=""></span>
        </div>
    </div>
</body>


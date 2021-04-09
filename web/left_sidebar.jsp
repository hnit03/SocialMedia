<%-- 
    Document   : left_sidebar
    Created on : Apr 9, 2021, 9:05:41 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body>
    <div class="responsive-header">
        <div class="mh-head first Sticky">
            <span class="mh-btns-left">
                <a class="" href="#menu"><i class="fa fa-align-justify"></i></a>
            </span>
            <span class="mh-text">
                <a href="newsfeed.html" title=""><img src="images/logo2.png" alt=""></a>
            </span>
        </div>
        <div class="mh-head second">
            <form class="mh-form">
                <input placeholder="search" />
                <a href="#/" class="fa fa-search"></a>
            </form>
        </div>
        <nav id="menu" class="res-menu">
            <ul>
                <li><span>Home</span>
                </li>
                <li><span>Time Line</span>
                </li>
                <li><span>Account Setting</span>
                </li>
            </ul>
        </nav>
    </div>
    <div class="fixed-sidebar left" style="width: 15rem">
        <div class="menu-left">
            <ul class="left-menu">
                <li>
                    <figure>
                        <img src="images/resources/side-friend3.jpg" alt=""> Hoàng Nhi
                    </figure>
                </li>
                <li>
                    <a href="#" title="Newsfeed Page" data-toggle="tooltip" data-placement="right">
                        <i class="fas fa-newspaper"></i> Newsfeed
                    </a>
                </li>
                <li><a href="notifications.html" title="Notification" data-toggle="tooltip" data-placement="right"><i class="ti-bookmark-alt"></i></a></li>
            </ul>
        </div>
    </div>
</body>


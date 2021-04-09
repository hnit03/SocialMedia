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
            <span class="mh-btns-right">
                <a class="fa fa-sliders" href="#shoppingbag"></a>
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
        <nav id="shoppingbag">
            <div>
                <div class="">
                    <div class="setting-row">
                        <span><a href="#" title=""><i class="ti-user"></i> view profile</a></span>
                    </div>
                    <div class="setting-row">
                        <span><a href="#" title=""><i class="ti-pencil-alt"></i>edit profile</a></span>
                    </div>
                    <div class="setting-row">
                        <span><a href="#" title=""><i class="ti-target"></i>activity log</a></span>
                    </div>
                    <div class="setting-row">
                        <span><a href="#" title=""><i class="ti-settings"></i>account setting</a></span>
                    </div>
                    <div class="setting-row">
                        <span><a href="logout" title="Logout"><i class="ti-power-off"></i>log out</a></span>
                    </div>
                </div>
            </div>
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
    <div class="side-panel">

        <div class="setting-row">
            <span><a href="#" title=""><i class="ti-user"></i> view profile</a></span>
        </div>
        <div class="setting-row">
            <span><a href="#" title=""><i class="ti-pencil-alt"></i>edit profile</a></span>
        </div>
        <div class="setting-row">
            <span><a href="#" title=""><i class="ti-target"></i>activity log</a></span>
        </div>
        <div class="setting-row">
            <span><a href="#" title=""><i class="ti-settings"></i>account setting</a></span>
        </div>
        <div class="setting-row">
            <span><a href="logout" title="Logout"><i class="ti-power-off"></i>log out</a></span>
        </div>


    </div>
</body>


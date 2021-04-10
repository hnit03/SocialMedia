<%-- 
    Document   : topbar
    Created on : Apr 9, 2021, 9:00:47 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
            <c:set var="account" value="${sessionScope.ACCOUNT}"/>
            <c:if test="${not empty account}">
                <div class="user-img">
                    <img src="images/resources/${account.avatar}" alt="" style="width: 3rem"> ${account.name}
                </div>  
            </c:if>

            <span class="ti-menu main-menu" data-ripple=""></span>
        </div>
    </div>
</body>


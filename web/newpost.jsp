<%-- 
    Document   : newpost
    Created on : Apr 10, 2021, 9:03:16 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body>
    <div class="central-meta">
        <div class="new-postbox">
            <c:set var="account" value="${sessionScope.ACCOUNT}"/>
            <c:if test="${not empty account}">
                <figure>
                    <img src="images/resources/${account.avatar}" alt="" style="width: 3rem">
                </figure>
            </c:if>
            <div class="newpst-input">
                <form method="post">
                    <textarea rows="2" placeholder="write something"></textarea>
                    <div class="attachments">
                        <ul>
                            <li>
                                <i class="fa fa-music"></i>
                                <label class="fileContainer">
                                    <input type="file">
                                </label>
                            </li>
                            <li>
                                <i class="fa fa-image"></i>
                                <label class="fileContainer">
                                    <input type="file">
                                </label>
                            </li>
                            <li>
                                <i class="fa fa-video-camera"></i>
                                <label class="fileContainer">
                                    <input type="file">
                                </label>
                            </li>
                            <li>
                                <i class="fa fa-camera"></i>
                                <label class="fileContainer">
                                    <input type="file">
                                </label>
                            </li>
                            <li>
                                <button type="submit">Post</button>
                            </li>
                        </ul>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

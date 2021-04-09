<%-- 
    Document   : verify
    Created on : Apr 9, 2021, 3:33:32 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <title>Social Network</title>
        <link rel="icon" href="images/fav.png" type="image/png" sizes="16x16"> 

        <link rel="stylesheet" href="css/main.min.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/color.css">
        <link rel="stylesheet" href="css/responsive.css">

        <script src="https://www.google.com/recaptcha/api.js?hl=en" async defer></script> 

        <script>
            function loginSubmit() {
                document.getElementById("verify").submit();
            }
        </script>
    </head>
    <body>
        <div class="theme-layout">
            <div class="container-fluid pdng0">
                <div class="row merged">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="land-featurearea">
                            <div class="land-meta">
                                <h1>Soca</h1>
                                <p>
                                    Soca is free to use for as long as you want with two active projects.
                                </p>
                                <div class="friend-logo">
                                    <span><img src="images/wink.png" alt=""></span>
                                </div>
                                <a href="#" title="" class="folow-me">Follow Us on</a>
                            </div>	
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="login-reg-bg">
                            <div class="log-reg-area sign">
                                <h2 class="log-title">Verify Account</h2>
                                <form method="post" action="verified" id="verify">
                                    <div class="form-group">	
                                        <input type="text" id="input" name="code" value="${param.code}" required="required"/>
                                        <label class="control-label" for="input">Code</label><i class="mtrl-select"></i>
                                    </div>
                                </form>
                                <div class="submit-btns">
                                    <button class="mtr-btn signin" type="button" onclick="loginSubmit()"><span>Verify</span></button>
                                    <button class="mtr-btn signin" type="button" id="sendAgain"><span>Send again</span></button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="js/main.min.js"></script>
        <script src="js/script.js"></script>

    </body>	

</html>


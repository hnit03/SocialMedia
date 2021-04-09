<%-- 
    Document   : index
    Created on : Apr 9, 2021, 12:49:44 PM
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
                document.getElementById("login").submit();
            }
            function registerSubmit() {
                document.getElementById("register").submit();
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
                                <h2 class="log-title">Login</h2>
                                <p>
                                    Don’t use Soca Yet? <a href="#" title="">Take the tour</a> or <a href="#" title="">Join now</a>
                                </p>
                                <form method="post" action="login" id="login">
                                    <div class="form-group">	
                                        <input type="text" id="input" name="email" value="${param.email}" required="required"/>
                                        <label class="control-label" for="input">Email</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <input type="password" name="password" value="${param.password}" required="required"/>
                                        <label class="control-label" for="input">Password</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">
                                        <div class="g-recaptcha" data-sitekey="6Ld9rYYaAAAAAMFfSByLk_AdZAzvul6RW9AB_Shd"></div>   
                                    </div>
                                    <a title="" class="forgot-pwd">Forgot Password?</a>
                                    <div class="submit-btns">
                                        <button class="mtr-btn signin" type="button" onclick="loginSubmit()"><span>Login</span></button>
                                        <button class="mtr-btn signup" type="button"><span>Register</span></button>
                                    </div>
                                </form>
                            </div>
                            <div class="log-reg-area reg">
                                <h2 class="log-title">Register</h2>
                                <p>
                                    Don’t use Soca Yet? <a href="#" title="">Take the tour</a> or <a href="#" title="">Join now</a>
                                </p>
                                <form method="post" action="signup" id="register">
                                    <div class="form-group">	
                                        <input type="text" 
                                               required="required" 
                                               name="name" 
                                               value="${param.name}"      
                                               maxlength="50"/>
                                        <label class="control-label" for="input">First & Last Name</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <input type="email" 
                                               required="required" 
                                               name="email" value="${param.email}"
                                               maxlength="50"/>
                                        <label class="control-label" for="input">Email</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <input type="password" 
                                               required="required" 
                                               name="password" value="${param.password}"
                                               minlength="6"
                                               maxlength="32"/>
                                        <label class="control-label" for="input">Password</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="form-group">	
                                        <input type="password" 
                                               required="required" 
                                               name="confirm" value="${param.confirm}"
                                               minlength="6"
                                               maxlength="32"/>
                                        <label class="control-label" for="input">Confirm password</label><i class="mtrl-select"></i>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" checked="checked" required="required"/><i class="check-box"></i>Accept Terms & Conditions ?
                                        </label>
                                    </div>
                                    <a href="#" title="" class="already-have">Already have an account</a>
                                    <div class="submit-btns">
                                        <button class="mtr-btn signup" type="button" onclick="registerSubmit()"><span>Register</span></button>
                                    </div>
                                </form>
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


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
   <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> 
  <title>Insert title here</title> 
  <link rel="stylesheet" type="text/css" href="registrationStyle.css"/>
  <script src="https://apis.google.com/js/platform.js" async defer></script> 
  <meta name="google-signin-client_id" content="168140968090-hcgf9jd3ghrm96udcm0cnkv822kqsbbm.apps.googleusercontent.com">
   </head> 
   <body> 
   
   <div id="login-box">
<div class="left-box">
<h1> Sign Up </h1>
<input type = "text" name="username" placeholder ="Your Full Name"/>
<input type = "text" name="mobilenumber" placeholder ="Mobile Number"/>
<input type = "email" name="email" placeholder ="Email"/>
<input type = "password" name="password" placeholder ="Password"/>
<input type = "password" name="reentered-password" placeholder ="Re-enter Password"/>


<input type="submit" name="signuup-button" value="sign-up"/>
</div>

<div class = "right-box"}>
<span class="signinwith">Sign in with</span>Social Network</span>

<button class="social facebook">Log in with Facebook</button>
<button class="social twitter">Log in with Twitter</button>
<div class="g-signin2" data-onsuccess="onSignIn" id="myP" data-longtitle="true">
</div>
 <button onclick="myFunction()">Sign Out</button> 
    <script> function myFunction() { gapi.auth2.getAuthInstance().disconnect(); location.reload(); }
    </script> 
</div>

<div class="or">OR</div>
</div>

    <img id="myImg"><br> <p id="name"></p> 
    <div id="status">
    </div> 
    <script type="text/javascript"> 
    function onSignIn(googleUser) 
    { // window.location.href='success.jsp';
    var profile = googleUser.getBasicProfile();
    var imagurl=profile.getImageUrl();
    var name=profile.getName();
    var email=profile.getEmail();
    document.getElementById("myImg").src = imagurl; 
    document.getElementById("name").innerHTML = name; 
    document.getElementById("myP").style.visibility = "hidden"; 
    document.getElementById("status").innerHTML = 'Welcome '+name+'!<a href=success.jsp? email='+email+'&name='+name+'/>Continue with Google login</a></p>' } 
    </script> 
    <!-- button onclick="myFunction()">Sign Out</button> 
    <script> function myFunction() { gapi.auth2.getAuthInstance().disconnect(); location.reload(); }
    </script--> 
    </body>
     </html>

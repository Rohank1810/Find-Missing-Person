<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.database.Dbconnection" %>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Police Login</title>
    <style>
   * * * * * General CSS * * * * */
*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  margin: 0;
    font-family: Arial, Helvetica, sans-serif;
    background: #1010104f;
    margin-top: 1px;
    background-image: url(pp.jpg);
    background-size: cover;

}

.wrapper {
  margin: 0 auto;
  width: 100%;
  max-width: 1140px;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}

.container {
  position: relative;
  width: 100%;
  max-width: 600px;
  height: auto;
  display: flex;
  background: #ffffff;
  box-shadow: 0 0 15px rgba(0, 0, 0, .1);
}

.credit {
  position: relative;
  margin: 25px auto 0 auto;
  width: 100%;
  text-align: center;
  color: #666666;
  font-size: 16px;
  font-weight: 400;
}

.credit a {
  color: #222222;
  font-size: 16px;
  font-weight: 600;
}

/* * * * * Login Form CSS * * * * */
h2 {
  margin: 0 0 15px 0;
  font-size: 30px;
  font-weight: 700;
}

h2 img {
  width: 120px;
}

p {
  margin: 0 0 20px 0;
  font-size: 16px;
  font-weight: 500;
  line-height: 22px;
}

.btn {
  display: inline-block;
  padding: 7px 20px;
  font-size: 16px;
  letter-spacing: 1px;
  text-decoration: none;
  border-radius: 5px;
  color: #ffffff;
  outline: none;
  border: 1px solid #ffffff;
  transition: .3s;
  -webkit-transition: .3s;
}

.btn:hover {
  color: #4CAF50;
  background: #ffffff;
}

.col-left,
.col-right {
  width: 55%;
  padding: 45px 35px;
  display: flex;
}

.col-left {
  width: 45%;
  background: #4CAF50;
  -webkit-clip-path: polygon(98% 17%, 100% 34%, 98% 51%, 100% 68%, 98% 84%, 100% 100%, 0 100%, 0 0, 100% 0);
  clip-path: polygon(98% 17%, 100% 34%, 98% 51%, 100% 68%, 98% 84%, 100% 100%, 0 100%, 0 0, 100% 0);
}

@media(max-width: 575.98px) {
  .container {
    flex-direction: column;
    box-shadow: none;
  }

  .col-left,
  .col-right {
    width: 100%;
    margin: 0;
    padding: 30px;
    -webkit-clip-path: none;
    clip-path: none;
  }
}

.login-text {
  position: relative;
  width: 100%;
  color: #ffffff;
  text-align: center;
}

.login-form {
  position: relative;
  width: 100%;
  color: #666666;
}

.login-form p:last-child {
  margin: 0;
}

.login-form p a {
  color: #4CAF50;
  font-size: 14px;
  text-decoration: none;
}

.login-form p:last-child a:last-child {
  float: right;
}

.login-form label {
  display: block;
  width: 100%;
  margin-bottom: 2px;
  letter-spacing: .5px;
}

.login-form p:last-child label {
  width: 60%;
  float: left;
}

.login-form label span {
  color: #ff574e;
  padding-left: 2px;
}

.login-form input {
  display: block;
  width: 100%;
  height: 40px;
  padding: 0 10px;
  font-size: 16px;
  letter-spacing: 1px;
  outline: none;
  border: 1px solid #cccccc;
  border-radius: 5px;
}

.login-form input:focus {
  border-color: #ff574e;
}

.login-form input.btn {
  color: #ffffff;
  background: #4CAF50;
  border-color: #4CAF50;
  outline: none;
  cursor: pointer;
}

.login-form input.btn:hover {
  color: #4CAF50;
  background: #ffffff;
}</style>
</head>
<body><div class="wrapper">
  <div class="container">
    <div class="col-left">
      <div class="login-text">
        <h2 style="color: black;">Find Missing Person</h2>
        <p style="color:black";font-family:sans-serif>
         <b> Be the Hero to the lost ones .Help them reunite with their loved ones</b>
        </p>
        <a style="color: black;" class="btn" href="about.jsp">Read More</a>
      </div>
    </div>
    <div class="col-right">
      <div class="login-form">
        <h2 style="color: black;">Police Station Login</h2>
        <form action="policelogin">
          <p>
            <input type="text" placeholder="Username (email)" name="user" required>
          </p>
          <p>
            <input type="password" placeholder="Password (secured)" name="pass" required>
          </p>
          <p>
            <input class="btn" type="submit" value="Log In" />
          </p>
          
        </form>
      </div>
    </div>
  </div>

</div>
</form>
  <script>const loginForm = document.getElementById('login-form');
const signupForm = document.getElementById('signup-form');
const loginLink = document.getElementById('login-link');
const signupLink = document.getElementById('signup-link');

loginLink.addEventListener('click', (event) => {
	  event.preventDefault();
	  signupForm.style.display = 'none';
	  loginForm.style.display = 'block';

	  setTimeout(() => {
	    signupForm.style.opacity = 0;
	    loginForm.style.opacity = 1;
	  }, 10);
	});

	signupLink.addEventListener('click', (event) => {
	  event.preventDefault();
	  loginForm.style.display = 'none';
	  signupForm.style.display = 'block';

	  setTimeout(() => {
	    loginForm.style.opacity = 0;
	    signupForm.style.opacity = 1;
	  }, 10);
	});</script>
</body>
</html>
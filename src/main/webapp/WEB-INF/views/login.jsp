<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="css/animations.css">
  <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <title>Login</title>
  <style>
    @import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400');

    body, html {
      font-family: 'Source Sans Pro', sans-serif;
      background-color:antiquewhite;
      background-image: url("https://img.freepik.com/fotos-gratis/fundo-de-comida-com-ingredientes-para-massas_1220-3108.jpg?w=2000&t=st=1671113958~exp=1671114558~hmac=85828a87da1cd98af09e65833cc8f61252e7a5f1354bc33091be3751b533bfba");
      background-repeat: no-repeat;
      background-size: cover;
      padding: 0;
      margin: 0;
    }

    #particles-js {
      position: absolute;
      width: 100%;
      height: 100%;
    }

    @keyframes fadeInUp {
      0% {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    .container{
      margin: 0;
      top: 120px;
      left: 50%;
      position: absolute;
      text-align: center;
      transform: translateX(-50%);
      background-color: rgb(255, 255, 255);
      border-radius: 9px;
      border-top: 10px solid coral;
      border-bottom: 10px solid #ff3737;
      width: 400px;
      height: 500px;
      box-shadow: 0 14px 28px rgba(0,0,0,0.25);
      animation: fadeInUp 2s;
    }

    .box h4 {
      font-family: 'Source Sans Pro', sans-serif;
      color: coral;
      font-size: 40pt;
      margin-top:90px;;
      margin-bottom: -10px;
    }

    .box h4 span {
      color: #ff3737;
      font-weight: 1000;
      font-size: 40pt;
    }

    .box h5 {
      font-family: 'Source Sans Pro', sans-serif;
      font-size: 13px;
      color: #a1a4ad;
      letter-spacing: 1.5px;
    }

    .box input[type = "text"],.box input[type = "password"] {
      display: block;
      margin: 20px auto;
      background: #ffffff;
      border: 1px solid #d2d2d2;
      border-radius: 5px;
      padding: 14px 10px;
      width: 320px;
      outline: none;
      color: rgb(119, 119, 122);
      -webkit-transition: all .2s ease-out;
      -moz-transition: all .2s ease-out;
      -ms-transition: all .2s ease-out;
      -o-transition: all .2s ease-out;
      transition: all .2s ease-out;

    }
    ::-webkit-input-placeholder {
      color: rgba(210, 210, 210, 0.83);
    }

    .box input[type = "text"]:focus,.box input[type = "password"]:focus {
      border: 1px solid rgba(255, 104, 47, 0.96);
    }

    a{
      color: #ff7e1d;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }

    label input[type = "checkbox"] {
      display: none; /* hide the default checkbox */
    }

    /* style the artificial checkbox */
    label span {
      height: 13px;
      width: 13px;
      border: 2px solid #464d64;
      border-radius: 2px;
      display: inline-block;
      position: relative;
      cursor: pointer;
      float: left;
      left: 7.5%;
    }

    .btn1 {
      border:0;
      background: rgba(255, 70, 0, 0.96);
      color: #fafafa;
      border-radius: 100px;
      width: 340px;
      height: 49px;
      font-size: 16px;
      position: absolute;
      top: 79%;
      left: 8%;
      transition: 0.3s;
      cursor: pointer;
    }

    .btn1:hover {
      background: rgba(255, 70, 0, 0.96);
    }

    .rmb {
      position: absolute;
      margin-left: -37%;
      margin-top: 0px;
      color: #ff7e1d;
      font-size: 13px;
    }

    .forgetpass {
      font-size: 13px;
      position: relative;
      float: right;
      right: 28px;
    }

    .dnthave{
      position: absolute;
      top: 92%;
      left: 24%;
    }

    [type=checkbox]:checked + span:before {/* <-- style its checked state */
      font-family: FontAwesome;
      font-size: 16px;
      content: "\f00c";
      position: absolute;
      top: -4px;
      color: #896cec;
      left: -1px;
      width: 13px;
    }

    .typcn {
      position: absolute;
      left: 339px;
      top: 282px;
      color: #3b476b;
      font-size: 22px;
      cursor: pointer;
    }

    .typcn.active {
      color: #7f60eb;
    }

    .error {
      background: #ff3333;
      text-align: center;
      width: 337px;
      height: 20px;
      padding: 2px;
      border: 0;
      border-radius: 5px;
      margin: 10px auto 10px;
      position: absolute;
      top: 31%;
      left: 7.2%;
      color: white;
      display: none;
    }

  </style>
  <script>
    var pwd = document.getElementById('pwd');
    var eye = document.getElementById('eye');

    eye.addEventListener('click',togglePass);

    function togglePass(){
      eye.classList.toggle('active');

      (pwd.type == 'password') ? pwd.type = 'text' : pwd.type = 'password';
    }

    // Form Validation

    function checkStuff() {
      var userid = document.form1.userid;
      var password = document.form1.password;
      var msg = document.getElementById('msg');

      if (userid.value == "") {
        msg.style.display = 'block';
        msg.innerHTML = "Please enter your ID";
        userid.focus();
        return false;
      } else {
        msg.innerHTML = "";
      }

      if (password.value == "") {
        msg.innerHTML = "Please enter your password";
        password.focus();
        return false;
      } else {
        msg.innerHTML = "";
      }
      var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
      if (!re.test(userid.value)) {
        msg.innerHTML = "Please enter a valid ID";
        userid.focus();
        return false;
      } else {
        msg.innerHTML = "";
      }
    }
  </script>
</head>
<body id="particles-js"></body>
<div class="animated bounceInDown">
  <div id="ob" class="container">
    <span class="error animated tada" id="msg"></span>
    <form name="form1" class="box" method="post" action="loginOk">
      <h4>먹<span> GO</span></h4>
      <h5>로그인 해주세요</h5>
      <input type="text" name="userid" placeholder="userid" autocomplete="off">
      <i class="typcn typcn-eye" id="eye"></i>
      <input type="password" name="password" placeholder="Passsword" id="pwd" autocomplete="off">
      <label>
        <input type="checkbox">
        <span></span>
        <small class="rmb">Remember me</small>
      </label>
      <a href="#" class="forgetpass">비밀번호를 잊으셨나요?</a>
      <input type="submit" value="로그인" class="btn1">
    </form>
    <a href="#" class="dnthave">Don’t have an account? Sign up</a>
  </div>
</div>
</html>

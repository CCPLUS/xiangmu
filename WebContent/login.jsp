<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="js/jquery.min.js"></script>

<title>商城主页-登录</title>

</head>
<body>
	<!-- login -->
	<div class="top center">
		<div class="logo center">
			<a href="index.jsp"><img src="./image/NIIT_LOOG.png"
				width="100px" height="60px" alt=""></a>
		</div>
	</div>
	<form method="get" action="LoginServlet" class="form center"
		id="userLogin">
		<div class="login">
			<input type="hidden" name="type" value="login">
			<div class="login_center">
				<div class="login_top">
					<div class="left fl">会员登录</div>
					<div class="right fr">
						您还不是我们的会员？<a href="register.jsp" target="_self">立即注册</a>
					</div>
					<div class="clear"></div>
					<div class="xian center"></div>
				</div>
				<div class="login_main center">
					<div class="username">
						<div class="left fl">用户名:&nbsp;</div>
						<div class="right fl">
							<input class="shurukuang" type="text" name="username"
								id="username" placeholder="请输入你的用户名" /> <label id="nameMsg"></label>
						</div>
					</div>
					<div class="username">
						<div class="left fl">密&nbsp;&nbsp;&nbsp;&nbsp;码:&nbsp;</div>
						<div class="right fl">
							<input class="shurukuang" type="password" name="password"
								id="pwd" placeholder="请输入你的密码" />
						</div>
					</div>
					<div class="username">
						<div class="left fl">验证码:&nbsp;</div>
						<div class="right fl">
							<input class="yanzhengma" id="vcode" type="text"
								placeholder="验证码" /> <img id="pagecode" src="createcode"><label
								id="checkMsg"></label>
						</div>
					</div>
					<div class="username">
						<div class="left fl">&nbsp;&nbsp;&nbsp;&nbsp;</div>
						<div class="right fl">
							<label id="checkMsg"></label>
						</div>
					</div>
					<div class="username">
						<input id="autoLogin" name="auto" type="checkbox" />&nbsp;&nbsp;两周以内自动登录
						<span id="autoLoginMsg"></span>
					</div>
					<div class="login_submit">
						<input class="submit" type="submit" name="submit" value="立即登录"
							id="btn">
					</div>
					<span style="color: red"></span>
				</div>
			</div>
		</div>
	</form>
	<footer>
	<div class="copyright">简体 | 繁体 | English | 常见问题</div>
	<div class="copyright">
		小米公司版权所有-京ICP备10046444-<img src="./image/ghs.png" alt="">京公网安备11010802020134号-京ICP证110507号
	</div>
	</footer>
</body>
</html>
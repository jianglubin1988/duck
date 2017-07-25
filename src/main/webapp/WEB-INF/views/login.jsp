<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="_header.jsp"%>
<script type="text/javascript" src="${pageContext.request.contextPath }/resource/admin/scripts/project/login.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resource/admin/styles/project/login.css"></link>
<body>

<div class="main" ng-app="myApp" ng-controller="formCtrl">

  <form>
    First Name:<br>
    <input type="text" ng-model="user.firstName"><br>
    Last Name:<br>
    <input type="text" ng-model="user.lastName">
    <br><br>
    <button ng-click="reset()">RESET</button>
  </form>
  <p>form = {{user}}</p>
  <p>master = {{master}}</p>

	<div class="block">
		<div class="tabs">
			<p class="layui-this"><i class="layui-icon">&#xe602;</i>用户登录</p>
			<p><i class="layui-icon">&#xe602;</i>快速注册</p>
			<p><i class="layui-icon">&#xe602;</i>忘记密码</p>
		</div>
		<div class="forms">
			<div class="login-form">
				<form class="layui-form form-content" action="${pageContext.request.contextPath }/login/signIn.do" method="post">
					<div class="layui-form-item">
						<label class="layui-form-label">用户名</label>
						<div class="layui-input-block">
							<input type="text" name="username" lay-verify="required" placeholder="请输入您的用户名" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">密码</label>
						<div class="layui-input-block">
							<input type="password" name="password" lay-verify="title" autocomplete="off" placeholder="请输入密码" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<div class="layui-input-block">
							<!-- <button class="layui-btn" type="submit">立即提交</button> -->
							<button class="layui-btn form-submit" type="button">立即提交</button>
						</div>
					</div>
				</form>
				
			</div>

			<div class="register-form hide">
				注册
			</div>

			<div class="password-form hide">
				忘记密码
			</div>

			<div class="form-tips hide">
				${result.data }
				<span>
					x
				</span>
			</div>
			
		</div>
		
	</div>



	
</div>

</body>

</html>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script language=JavaScript src="script/regcheckdata.js"
			type="text/javascript"></script>
		<link href="css/base.css" rel="stylesheet" type="text/css">
	</head>
	<script>
  function reloadImage(){
    document.getElementById('btn').disabled= true;
    document.getElementById('identity').src='check.do?ts= ' + new Date().getTime();
  }
  </script>
	<body>
		<form name="userForm" id="userForm">
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0" bgcolor="#FFFFFF">
				<tr>
					<td colspan="2">
						<jsp:include page="fg-top.jsp" flush="true" /></td>
				</tr>
				<tr>
					<td height="40">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td align="center">
						<font size="6px" color=red>-----登录了可以享用更多特权哦-----</font>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="30">
						<hr align="center" size="0" width="99%">
					</td>
				</tr>
				<tr>
					<td height="20">
						&nbsp;
					</td>
				</tr>
			</table>
			<table width="1000" border="0" bordercolor=grey align="center"
				cellpadding="2" cellspacing="0" bgcolor="#FFFFFF">
				<tr>
					<td colspan="2" height="1">
						&nbsp;
					</td>
				</tr>

				<tr>
					<td align="right">
						用户名：
					</td>
					<td align="left">
						<input name="userName" type="text" id="userName"
							onblur="this.style.backgroundColor='#FFF'"
							onclick="this.style.backgroundColor='#FFFFCC'" maxlength="10"
							size="10">
						&nbsp;&nbsp;

					</td>
				</tr>
				<tr>
					<td colspan="2">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td align="right">
						密&nbsp;&nbsp;码：
					</td>
					<td align="left">
						&nbsp;
						<input name="password" type="password" id="password"
							onBlur="this.style.backgroundColor='#FFF'"
							onClick="this.style.backgroundColor='#FFFFCC'" maxlength="10"
							size="10">
						&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="2" height="30">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<input type="button" value="登录" onClick="login()">
						<input type="reset" value="重置">
					</td>
				</tr>
				<tr>
					<td colspan="2" height="30">
						&nbsp;
					</td>
				</tr>

				<tr>
					<td align="right">
						<a href="register.jsp">还没有注册?</a>
					</td>
					<td align="left">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="fg-password.jsp">找回密码？</a>
					</td>
				</tr>
				<tr>
					<td height="70">
						&nbsp;
					</td>
				</tr>
			</table>
			<jsp:include page="bottom.jsp"></jsp:include>
		</form>
	</body>
</html>
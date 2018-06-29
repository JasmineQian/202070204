<%@ page language="java" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link href="css/base.css" rel="stylesheet" type="text/css">
		<script language=JavaScript src="script/regcheckdata.js"
			type="text/javascript"></script>
	</head>

	<body>
		<table width="1000" border="0" align="center" cellpadding="0"
			cellspacing="0" bordercolor="#000000">
			<tr>
				<td><jsp:include page="fg-top.jsp" flush="true" /></td>
			</tr>
		</table>
		<table width="1000" border="0" bordercolor=grey align="center"
			cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td>
					<form id="psd" name="psd" method="post" action="">
						<table width="90%" border="0" align="center" cellpadding="0"
							cellspacing="0">
							
							<tr>
								<td colspan="2">
									&nbsp;&nbsp;
								</td>
							</tr>
							<tr>
								<td colspan="2" height="40" align="center">
									<font size="5px" color=red>输入您的用户名和邮箱，帮你找到密码</font>
								</td>
							</tr>

							<tr>
								<td colspan="2">
									&nbsp;&nbsp;
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<hr align="center" size="0" width="99%">
								</td>
							</tr>
							<tr>
								<td align="right" width="43%" height="35">
									用户名：
								</td>
								<td align="left">
									<input type="text" name="userName" id="userName">
								</td>
							</tr>
							<tr>
								<td>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									&nbsp;&nbsp;
								</td>
							</tr>
							<tr>
								<td align="right" width="43%">
									邮&nbsp; 箱：
								</td>
								<td align="left">
									<input type="text" name="email" id="email">
								</td>
							</tr>
							<tr>
								<td colspan="2">
									&nbsp;&nbsp;
								</td>
							</tr>
							<tr>
								<td>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									&nbsp;&nbsp;
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<input type="button" value="确定" onclick="checkEmail()">
									<input type="reset" value="重置">
									<input type="button" value="返回" onclick="history.go(-1)">
								</td>
							</tr>
							<tr>
								<td colspan="2" height="30">
									<hr align="center" size="0" width="99%">
								</td>
							</tr>
							<tr>
								<td colspan="2" height="60">
									&nbsp;&nbsp;
								</td>
							</tr>

							<tr>
								<td colspan="2">
									<ol>
										<li>
											如果您忘记了登陆密码，您可以再这里填写 当初申请帐号时的注册邮箱，系统会自动给您的注册邮
											箱发送一封验证邮件，请注意查收并根据邮件提示取回密码。
										<li>
											如果您长时间未收到邮件，或者邮箱已经更换，您可以拨打电话15996648872，我们会竭诚为您服务。
									</ol>
								</td>
							</tr>


							<tr>
								<td colspan="2" height="50">
									&nbsp;&nbsp;
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
		<jsp:include page="bottom.jsp" flush="true" />
	</body>
</html>

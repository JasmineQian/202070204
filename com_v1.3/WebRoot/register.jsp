<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户注册</title>
		<link href="css/base.css" rel="stylesheet" type="text/css">
		<script language=JavaScript src="script/regcheckdata.js"
			type="text/javascript"></script>
	</head>
	<body>
		<table width="1000" border="0" align="center" cellpadding="0"
			cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
			<tr>
				<td><jsp:include page="fg-top.jsp" flush="true" /></td>
			</tr>
		</table>
		<table width="1000" border="0" align="center" cellpadding="0"
			cellspacing="0" bordercolor="#000000">
			<tr>
				<td bgcolor="#FFFFFF" align="center">
					<form name="userForm" method="post">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td colspan="4" height="30">
									&nbsp;
								</td>
							</tr>
							<tr>
								<td width="100%" height="35" align="center" colspan="4">
									<b>创建您的账号</b>
									<font size=2>(带<font color="#FF0000">*</font>号的为必填内容)</font>
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<hr align="center" size="0" width="70%">
								</td>
							</tr>
							<tr>
								<td width="49%" height="30" align="right">
									用 户 名:
									<font color="#FF0000">*</font>&nbsp;
								</td>
								<td width="100" align="left">
									<input name="userName" type="text" class="text1" id="userName"
										size="20" maxlength="20"
										onblur="this.style.backgroundColor='#FFF'"
										onclick="this.style.backgroundColor='#FFFFCC'">
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
								<td>
									<font size="2px" color="">中文英文都可以</font>
								</td>
							</tr>
							<tr>
							<tr>
								<td height="30" align="right">
									密&nbsp;&nbsp;&nbsp; 码:
									<font color="#FF0000">*</font>&nbsp;
								</td>
								<td width="100">
									<input name="password" type="password" id="password" size="20"
										maxlength="20" onblur="this.style.backgroundColor='#FFF'"
										onclick="this.style.backgroundColor='#FFFFCC'">
							<tr>
								<td>
									&nbsp;
								</td>
								<td>
									<font size="2px" color="">密码不能小于6位字符且不能与用户名相同</font>
								</td>
							</tr>
							<tr>
								<td height="30" align="right">
									密码确认:
									<font color="#FF0000">*</font>&nbsp;
								</td>
								<td width="163">
									<input name="passwordOne" type="password" id="passwordOne"
										size="20" maxlength="20"
										onblur="this.style.backgroundColor='#FFF'"
										onclick="this.style.backgroundColor='#FFFFCC'">
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
								<td>
									<font size="2px" color="">必须与上面输入的密码一致</font>
								</td>
							</tr>
							<tr>
								<td height="30" align="right">
									联系邮箱:
									<font color="#FF0000">*</font>&nbsp;
								</td>
								<td width="163" align="left">
									<input name="email" type="text" class="text1" id="email"
										size="20" onblur="this.style.backgroundColor='#FFF'"
										onclick="this.style.backgroundColor='#FFFFCC'">
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
								</td>
								<td>
									<font size="2px" color="">请输入正确的邮箱，方便以后找回密码</font>
								</td>
							</tr>
							<tr>
								<td height="30" align="right">
									联系电话: &nbsp;&nbsp;
								</td>
								<td width="163" align="left">
									<input name="cellphone" type="text" id="cellphone" size="20"
										maxlength="20" onblur="this.style.backgroundColor='#FFF'"
										onclick="this.style.backgroundColor='#FFFFCC'">
								</td>
							</tr>
							<tr>
								<td colspan="4">
									<hr align="center" size="0" width="70%">
								</td>
							</tr>
							<tr>
								<td align="center" colspan="4" height="35">
									<input type="checkbox" name="agree" id="agree"
										checked="checked" />
									我同意
									<a href="http://www.gucheng.com/about/banquan.shtml"
										target="_blank">“服务条款”</a>

								</td>
							</tr>
							<tr>
								<td align="center" colspan="4" height="35">
									<input name="btnAdd" class="button1" type="button" id="btnAdd"
										value="立即注册" onclick="addUser()">
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input name="btnBack" class="button1" type="button"
										id="btnBack" value="返回" onclick="goBack()" />
							<tr>
								<td colspan="4">
									&nbsp;
								</td>
							</tr>
							<tr>
								<td colspan="4">
									&nbsp;
								</td>

							</tr>
						</table>
						<jsp:include page="bottom.jsp" flush="true" /></form>
				</td>
			</tr>
		</table>
	</body>
</html>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>--网站后台--</title>
		<link href="css/css.css" rel="stylesheet" type="text/css">
		<script language=JavaScript src="script/managerLogin.js"
			type="text/javascript"></script>
	</head>

	<body>
		<form name="addForm" id="addForm">
			<table width="788" border="0" align="center" cellpadding="1"
				cellspacing="1" bgcolor="#FFFFFF" bordercolor="#1c1c1c">
				<tr>
					<td width="100%" colspan="2"><jsp:include page="bg-top.jsp"
							flush="true" />
					</td>
				</tr>
			</table>

			<table width="788" border="0" align="center" cellpadding="0"
				cellspacing="0" bgcolor="#FFFFFF">
				<tr>
					<td colspan="2">
						<table width="610" border="0" align="center" cellpadding="0"
							cellspacing="0" background="image/bg_top02.jpg">
							<tr>
								<td>
									<div align="center">
										<strong>添加管理员信息</strong>
									</div>
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td colspan="2" align="center" height="40">
						&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td width="23%" height="30">
						<div align="center">
							登录帐号
						</div>
					</td>
					<td width="77%" bgcolor="#FFFFFF">
						&nbsp;
						<input name="account" type="text" size="35" id="account">
					</td>
				</tr>
				<tr>
					<td height="30">
						<div align="center">
							密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码
						</div>
					</td>
					<td bgcolor="#FFFFFF">
						&nbsp;
						<input name="password" type="password" id="password" size="35">
					</td>
				</tr>

				<tr bgcolor="#FFFFFF">
					<td colspan="2" align="center" height="40">
						&nbsp;&nbsp;
					</td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td colspan="2" align="center">
						<input name="refer" type="image" class="input1"
							src="image/save.jpg" id="refer" width="51" height="20"
							onclick="addManager()">
						&nbsp;&nbsp;
						<a href="#" onClick="javascript:managerForm.reset()"><img
								src="image/clear.gif"> </a> &nbsp;&nbsp;
						<a href="#" onClick="javasrcipt:history.go(-1)"><img
								src="image/back.gif"> </a>
					</td>
				</tr>
				<tr bgcolor="#FFFFFF">
					<td colspan="2" align="center" height="40">
						&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<jsp:include page="bottom2.jsp" flush="true" /></td>
				</tr>
			</table>
		</form>
	</body>
</html>

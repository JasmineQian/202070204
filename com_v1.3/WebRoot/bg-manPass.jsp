<%@ page contentType="text/html; charset=UTF-8"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>管理员修改密码</title>
		<link href="css/css.css" rel="stylesheet" type="text/css">
		<script language=JavaScript src="script/managerLogin.js"
			type="text/javascript"></script>
	</head>

	<body>
		
			<table width="788" border="0" align="center" cellpadding="0"
				cellspacing="0" bgcolor="#FFFFFF">
				<tr>
					<td><jsp:include page="bg-top.jsp" flush="true" /></td>
				</tr>

				<tr>
					<td>
					<form name="modifyForm" id="modifyForm">
						<table width="610" border="0" align="center" cellpadding="0"
							cellspacing="0" background="image/bg_top02.jpg">
							<tr>
								<td>
									<div align="center">
										<strong>修改管理员密码</strong>
									</div>
								</td>
							</tr>
						</table>
						<br>
						<table width="60%" border="1" cellpadding="1" cellspacing="1"
							bordercolor="#FFFFFF" bgcolor="#CCCCCC" align="center">
							<tr>
								<td width="29%" height="30">
									<div align="center">
										原密码
									</div>
								</td>
								<td width="71%" bgcolor="#FFFFFF">
									&nbsp;
									<input name="old" type="password" id="old" size="30">
								</td>
							</tr>
							<tr>
								<td height="30">
									<div align="center">
										新密码
									</div>
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input name="password" type="password" id="password" size="30">
								</td>
							</tr>
							<tr>
								<td height="30">
									<div align="center">
										再次输入新密码
									</div>
								</td>
								<td bgcolor="#FFFFFF">
									&nbsp;
									<input name="password1" type="password" id="password1"
										size="30">
								</td>
							</tr>
						</table>
						<table align="center">
							<tr align="center">
								<td align="center">
									<input name="refer" type="button" id="refer" value="提交"
										width="65" height="30" onclick="checkMod()">
								</td>
								<td>
									<input name="reset" type="reset" id="reset" value="重置"
										width="65" height="30">
								</td>
								<td>
									<input name="return" id="return" type="button" value="返回"
										onclick="history.go(-1)">
								</td>
							</tr>
						</table>
						</form>
			</table>
			<jsp:include page="bottom2.jsp" flush="true" />
	</body>
</html>

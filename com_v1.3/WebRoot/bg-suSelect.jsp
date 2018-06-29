<%@ page contentType="text/html; charset=UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>--增加管理员--</title>
		<link href="css/css.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<table width="788" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td><jsp:include page="bg-top.jsp" flush="true" /></td>
			</tr>
		</table>
		<table width="788" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td>
					<table width="610" border="0" align="center" cellpadding="0"
						cellspacing="0" background="image/bg_top02.jpg">
						<tr>
							<td>
								<div align="center">
									<strong>管理员信息的查询</strong>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
				<table width="90%" border="0" cellspacing="0" cellpadding="0"
					align="center">
					<tr>
						<td width="20%" height="50" colspan="4" align="center">
							<div align="right">
								<a href="bg-managerUpdatePassword.jsp">修改您的密码</a>&nbsp;&nbsp;&nbsp;
							</div>
						</td>
					<tr>
				</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="90%" border="1" cellpadding="1" cellspacing="1"
						bordercolor="#FFFFFF" bgcolor="#CCCCCC" align="center">
						<tr>
							<td width="20%" height="25" align="center">
								<div align="center">
									管理员ID
								</div>
							</td>
							<td width="20%">
								<div align="center">
									管理员帐号
								</div>
							</td>
							<td width="20%">
								<div align="center">
									管理员角色
								</div>
							</td>
							<td width="44%">
								<div align="center">
									操作
								</div>
							</td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td height="30">
								<div align="center">
									AA
								</div>
							</td>
							<td>
								<div align="center">
									AA
								</div>
							</td>
							<td>
								<div align="center">
									AA
								</div>
							</td>
							<td>
								<div align="center">
								</div>
							</td>
						</tr>


					</table>
				</td>
			</tr>
			<tr>
				<td width="20%" height="100">
					<div align="right">
						<a href="bg-sumanagerInsert.jsp">添加管理员</a>&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
				</td>
			</tr>
		</table>
		<jsp:include page="bottom2.jsp" flush="true" />
	</body>
</html>

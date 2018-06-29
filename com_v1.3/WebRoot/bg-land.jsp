<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>

		<title>管理员登录</title>
		<link href="css/css.css" rel="stylesheet" type="text/css">
		<script language="Javascript" src="script/managerLogin.js"></script>
	</head>
	<body>
		<table width="100%" height="100%" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td>
					<form name="managerForm" id="managerForm">
						<table width="547" height="294" border="0" align="center"
							cellpadding="0" cellspacing="0" background="image/bg-land.jpg">
							<tr>
								<td width="100">
									&nbsp;
								</td>
								<td width="447" valign="bottom">
									<table width="447" border="0">
										<tr>
											<td width="70" height="38">
												<font color="#9A6634"><strong>用户名：</strong> </font>
											</td>
											<td width="100">
												<input name="managerName" type="text" class="bgtext"
													id="managerName" size="13"
													onblur="this.style.backgroundColor='#FFF'"
													onclick="this.style.backgroundColor='#FFFFCC'">
											</td>
											<td width="70">
												&nbsp;
												<font color="#9A6634"><strong>密码：</strong> </font>
											</td>
											<td width="100">
												<input name="password" type="password" class="bgtext"
													id="password" size="11"
													onblur="this.style.backgroundColor='#FFF'"
													onclick="this.style.backgroundColor='#FFFFCC'">
											</td>
											<td>
												<div align="center">
													<input name="enter" type="image" class="bgButtoninput"
														id="enter" src="image/bg-land.gif" onclick="checkEmpty()">
												</div>
											</td>
										</tr>
										<tr>
											<td height="30" colspan="5">
												<div align="right">
													<a href="index.jsp" class="a1">返回</a>&nbsp;&nbsp;
												</div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>

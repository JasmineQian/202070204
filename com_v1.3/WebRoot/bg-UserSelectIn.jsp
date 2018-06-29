<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
	<head>
		<link href="css/css.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<form name="" method="post" action="">
			<table width="788" border="0" align="center" cellpadding="0"
				cellspacing="0" bgcolor="#FFFFFF">
				<tr>
					<td><jsp:include page="bg-top.jsp" flush="true" /></td>
				</tr>
				<tr>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						<table width="610" align="center" height="25" border="0"
							cellpadding="0" cellspacing="0" background="image/bg_top02.jpg">
							<tr>
								<td>
									<div align="center">
										<strong>查看会员的详细情况</strong>
									</div>
								</td>
							</tr>
							<tr>
								<td bgcolor="#FFFFFF">
									&nbsp;
								</td>
							</tr>
						</table>
						<table width="71%" align="center" height="130" border="1"
							cellpadding="1" cellspacing="1" bordercolor="#FFFFFF"
							bgcolor="#CCCCCC">
							<tr>
								<td width="20%" height="26">
									<div align="center">
										用户ID
									</div>
								</td>
								<td width="31%" bgcolor="#FFFFFF">
									<div align="center">
										${user.userId }
									</div>
								</td>
								<td width="20%">
									<div align="center">
										用户名
									</div>
								</td>
								<td width="31%" bgcolor="#FFFFFF">
									<div align="center">
										${user.userName }
									</div>
								</td>
							</tr>
							<tr>
								<td height="27">
									<div align="center">
										注册时间
									</div>
								</td>
								<td bgcolor="#FFFFFF">
									<div align="center">
										<fmt:formatDate value="${user.registertime}" type="time"
													timeStyle="full" pattern="yyyy-MM-dd" />
									</div>
								</td>
								<td>
									<div align="center">
										用户密码
									</div>
								</td>
								<td bgcolor="#FFFFFF">
									<div align="center">
										${user.password }
									</div>
								</td>
							</tr>
							<tr>
								<td height="27">
									<div align="center">
										手机号码
									</div>
								</td>
								<td bgcolor="#FFFFFF">
									<div align="center">
										${user.cellphone }
									</div>
								</td>
								<td>
									<div align="center">
										电子邮箱
									</div>
								</td>
								<td bgcolor="#FFFFFF">
									<div align="center">
										${user.email }
									</div>
								</td>
							</tr>


						</table>
						<table width="71%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="87%" height="29">
									&nbsp;
								</td>
								<td width="13%">
									<a href="userinfo.do?method=queryUsers">返回</a>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</form>
		<jsp:include page="bottom2.jsp" flush="true" />


	</body>
</html>

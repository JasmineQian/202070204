<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<link href="css/css.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<form name="" method="post" action="">
			<table width="788" height="74" border="0" align="center"
				cellpadding="0" cellspacing="0" background="image/bg_top01.jpg">
				<tr>
					<td valign="top">
						<table width="770" border="0" align="center">
							<tr>
								<td width="313" height="74" valign="bottom">

									<div align="right"></div>
								</td>
								<td width="447" valign="bottom" align="right">
									<font color="#FFFFFF"><a href="bg-manPass.jsp" class="a2">管理员设置</a> |
										<a href="userinfo.do?method=queryUsers" class="a2">会员设置</a> | <a href="materinfo.do?method=queryMaters" class="a2">资料设置</a>
										| <a href="linkinfo.do?method=queryAllLinkinfo" class="a2">链接设置</a>
									</font>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table width="788" border="0" align="center" cellpadding="0"
				cellspacing="0" bgcolor="#000000">
				<tr>
					<td width="15" height="25">
						&nbsp;
					</td>
					<td width="579">
						<font color="#FFFFFF">当前登录：${admin.managerName}</font>
					</td>
					<td width="194">
						<font color="#FFFFFF">今天是&nbsp; <%=new Date().getYear() + 1900%>年
							<%=new Date().getMonth() + 1%>月<%=new Date().getDate()%>日</font>
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>

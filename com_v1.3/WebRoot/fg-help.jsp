<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link href="css/base.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<table width="1000" border="0" align="center" cellpadding="0"
			cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
			<tr>
				<td><jsp:include page="fg-top.jsp" flush="true" /></td>
			</tr>
			<tr>
				<td height="40">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td align="center">
					<font size="6px" color=red>我们可以帮您解决的</font>
				</td>
			</tr>
			<tr>
				<td height="30" align="center">
					<hr align="center" size="0" width="99%">
				</td>
			</tr>
			<tr>
				<td height="30" align="center">
					<a href="fg-login.jsp">1、登陆界面</a>←点击进入
				</td>
			</tr>
			<tr>
				<td height="30"align="center">
					<a href="register.jsp">2、注册界面</a>←点击进入
				</td>
			</tr>
			<tr>
				<td height="30" align="center">
					<a href="fg-password.jsp">3、找回密码界面</a>←点击进入
				</td>
			</tr>
		</table>


		<jsp:include page="bottom.jsp" flush="true" />

	</body>
</html>

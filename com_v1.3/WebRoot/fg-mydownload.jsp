<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<font size="6px" color=red>我的个人下载信息</font>
				</td>
			</tr>
			<tr>
				<td height="30">
					<hr align="center" size="0" width="99%">
				</td>
			</tr>
			<tr>
				<td>
					<form name="" method="post" action="">
						<table align="center" cellspacing="2" cellpadding="0"
							bordercolor="#CCCCCC" border="1" width="950">
							<tr bgcolor="#F1F1F1" height="25px">
								<td colspan="4">
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<font size="4px" color=""> 我的个人信息</font>
								</td>
							</tr>
							<tr>
								<td width="120" rowspan="3">
									<img src="${user.piclink}" width="120" height="120" />
								</td>
								<td height="25" width="320">
									用户名：${user.userName}
								</td>
								<td rowspan="4">
									<img alt="" src="image/GeImage.jpg"  width="340" height="140"/>
								</td>
							<TR>
								<td>
									<span>手机号码：</span><font color="green">${user.cellphone}</font>
								</td>
							</tr>
							<tr>
								<td>
									<span>我的邮箱：</span><font color="green">${user.email}</font>
								</td>
							</TR>
							<TR>
								<TD align="center">
									<a href="fg-information.jsp">点此修改头像</a>
								</TD>
								<td>
									<span>注册时间：</span><font color="green"> <fmt:formatDate
											value="${user.registertime}" type="time" timeStyle="full"
											pattern="yyyy-MM-dd" /> </font>
								</td>
							</tr>

						</table>
						<table width="1000" border="0" align="center" cellpadding="0"
							cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
							<tr>
								<td height="20">
									&nbsp;
								</td>
							</tr>
						</table>
						<table align="center" cellspacing="2" cellpadding="0"
							bordercolor="#CCCCCC" border="1" width="950"
							style="border-collapse: collapse">

							<tr bgcolor="#F1F1F1" height="30px">
								<td colspan=10>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 查看个人下载记录
								</td>
							</tr>
							<tr bgcolor="#ffffdd">
								<td width="95" align="center" style="height: 35px">
									操作帐户
								</td>
								<td width="91" align="center" style="height: 35px">
									资料名称
								</td>
								<td width="91" align="center" style="height: 35px">
									下载时间
								</td>
								<td width="71" align="center" style="height: 35px">
									下载次数
								</td>
								<td width="71" align="center" style="height: 35px">
									总下载次数
								</td>
								<td width="71" align="center" style="height: 35px">
									下载排名
								</td>

							</tr>
							<c:choose>
								<c:when test="${downloadlist==null}">
									<tr bgcolor="#ffffff">
										<td colspan="6">
											<font color="red">没有符合条件的数据 </font>
										</td>
									</tr>
							</c:when>
								<c:otherwise>
								<c:forEach items="${downloadlist}" var="download">
										<tr bgcolor="#ffffff">
											<td>
												 ${download.user.userName}
											</td>
											<td name="download" id="materName">
												<a href="mater.do?method=materChapter&materId=${download.mater.materId}">${download.mater.materName}</a>
											</td>
											<td name="download" id="loadtime">
												<a href="jsp/do_download.jsp">${download.mater.way}</a>
											</td>
											<td name="download" id="loadtime">
												${download.loadtime}
											</td>
											<td name="download" id="loadtime">
												${download.loadtime}
											</td>
											<td name="download" id="loadtime">
												${download.loadtime}
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>
					</form>
				</td>
			</tr>
		</table>
		<jsp:include page="bottom.jsp" flush="true" />
	</body>
</html>

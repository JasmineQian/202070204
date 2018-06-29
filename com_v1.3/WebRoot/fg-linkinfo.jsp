<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
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
						<font size="6px" color=red>查看常用网站及链接</font>
					</td>
				</tr>
				<tr>
					<td colspan="4" height="30">
						<hr align="center" size="0" width="99%">
					</td>
				</tr>
				<tr>
					<td height="20">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
					<form name="linkinfoForm" method="post" action="">
						<table cellspacing="2" cellpadding="0" align="center"
							bordercolor="#CCCCCC" border="1" width="950"
							style="border-collapse: collapse">
							<tr bgcolor="#F1F1F1" height="30px">
								<td colspan="2">
									您可以点击名称或链接跳转。。
								</td>
							</tr>
							<tr bgcolor="#ffffdd">
								<td align="center" width="474" valign="middle"
									style="height: 30px">
									网站名称
								</td>
								<td align="center" width="474" valign="middle"
									style="height: 30px">
									网站链接
								</td>
							</tr>
							<c:choose>
								<c:when test="${linkinfolist==null}">
									<tr bgcolor="#ffffff">
										<td colspan="2">
											<font color="red">没有符合条件的数据 </font>
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${linkinfolist}" var="linkinfo">
										<tr bgcolor="#ffffff">
											<td name="linkinfo" id="LinkName">
												<a href="${linkinfo.linkURL}"> ${linkinfo.linkName}</a>
											</td>
											<td name="linkinfo" id="LinkURL">
												<a href="${linkinfo.linkURL}">${linkinfo.linkURL}</a>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</table>
						</form>
					</td>
				</tr>
				<tr>
					<td height="30">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="40">

					</td>
				</tr>
				<tr>
					<td colspan="4" height="10">
						<hr align="center" size="0" width="99%">
					</td>
				</tr>
				<tr>
					<td height="20">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
						<table width="95%" align="center">
							<tr>
								<td>
									<font style="line-height: 22px; color: #333333"><br />
										<strong>常用链接说明：</strong> </font>
								</td>
							</tr>
							<tr>
								<td>
									<ol>
										<li>
											常用链接均属于网络上常用链接，绿色链接，若出现不安全状况，与本网站无关。
										<li>
											目前，只有这些网站供用户选择和跳转，随着技术的发展，管理员会添加更多的网站供用户选择。
										<li>
											欢迎用户给我们推荐优秀的网站链接URL，您可以发邮件到942812509@qq.com邮箱，或者发送短信到手机15996648872.
										
										<li>
											优秀的教学网站需要优秀的你来共同创建，需要您和我们携手，共同维护和进步！
										<li>
											优秀的网站不是包括其他网站的内容，抢占注册用户，是站在用户的角度，为用户着想!
										<li>
											《计算机导论》学习网站，是您上网的导航，它会永远是您的良师益友!
									</ol>
								</td>
							</tr>
							<tr>
								<td>
									<strong>客服联系方式：</strong> 服务QQ:942812509 值班电话：15996648872
									7x24小时服务
								</td>
							</tr>
							<jsp:include page="bottom.jsp" flush="true" />
						</table>
						
					</td>
				</tr>
			</table>
		
	</body>
</html>

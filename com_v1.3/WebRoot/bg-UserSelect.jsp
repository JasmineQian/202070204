<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
	<head>
		<title>--查看用户--</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="css/css.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<form name="userForm" id="userForm">
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
						<table width="610" border="0" align="center" cellpadding="0"
							cellspacing="0" background="image/bg_top02.jpg">
							<tr>
								<td>
									<div align="center">
										<strong>会员信息的查询</strong>
									</div>
								</td>
							</tr>

						</table>
					</td>
				<tr>
				<tr>
					<td>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>

						<table width="95%" border="1" cellpadding="1" cellspacing="1"
							bordercolor="#FFFFFF" bgcolor="#CCCCCC" align="center">
							<tr>
								<td width="10%" height="25">
									<div align="center">
										用户ID
									</div>
								</td>
								<td width="10%">
									<div align="center">
										用户名
									</div>
								</td>
								<td width="28%" align="center">
									<div align="center">
										注册时间
									</div>
								</td>
								<td width="32%">
									<div align="center">
										用户邮箱
									</div>
								</td>
								<td>
									<div align="center">
										操作
									</div>
								</td>
							</tr>
							<c:choose>
								<c:when test="${list==null}">
									<tr>
										<td colspan="5">
											<font color="red">没有符合条件的数据</font>
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${list}" var="user">
										<tr bgcolor="#FFFFFF">
											<td class="rd8" name="user" id="UserId" align="center">
												${user.userId}
											</td>
											<td class="rd8" name="user" id="UserName">
												${user.userName }
											</td>
											<td class="rd8" name="user" id="Registertime" align="center">
												<fmt:formatDate value="${user.registertime}" type="time"
													timeStyle="full" pattern="yyyy-MM-dd HH:mm" />
											</td>
											<td class="rd8" name="user" id="Email">
												${user.email }
											</td>
											<td>
												<a
													href="userinfo.do?method=queryUserDetails&userId=${user.userId }">详细信息</a>&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="userinfo.do?method=del&userId=${user.userId }">删除</a>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>

						</table>
						<jsp:include page="bottom2.jsp" flush="true" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>

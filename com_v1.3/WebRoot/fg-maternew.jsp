<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link href="css/base.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<form name="maternewForm" method="post" action="">
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
				<tr>
					<td colspan="3"><jsp:include page="fg-top.jsp" flush="true" /></td>
				</tr>
				<tr>
					<td height="40" colspan="3">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td align="center" colspan="3">
						<font size="6px" color=red>欢迎查看最新文档</font>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="3">
						<hr align="center" size="0" width="99%">
					</td>
				</tr>
				<tr>
					<td width="50">
						&nbsp;
					</td>
					<td width="900">
						<table cellspacing="2" cellpadding="0" align="center"
							bordercolor="#CCCCCC" border="1" width="900"
							style="border-collapse: collapse">
							<tr bgcolor="#F1F1F1" height="30px">
								<td colspan="5">
									您可以点击名称跳转查看。。
								</td>
							</tr>
							<tr bgcolor="#ffffdd">
								<td align="center" width="400" valign="middle"
									style="height: 30px">
									资料名称
								</td>
								<td align="center" width="100" valign="middle"
									style="height: 30px">
									所属章节
								</td>
								<!-- 
								<td align="center" width="250" valign="middle"
									style="height: 30px">
									有无附件（有无文件可供下载）
								</td>
								<td align="center" width="300" valign="middle"
									style="height: 30px">
									资料Id
								</td>
								 -->
								<td align="center" width="100" valign="middle"
									style="height: 30px">
									更新时间
								</td>
								<td align="center" width="300" valign="middle"
									style="height: 30px">
									上传路径
								</td>
							</tr>
							<logic:empty name="maternewList">
								<tr bgcolor="#ffffff">
									<td colspan="4">
										<font color="red">没有符合条件的数据 </font>
									</td>
								</tr>
							</logic:empty>
							<logic:notEmpty name="maternewList">
								<logic:iterate id="mater" name="maternewList">
									<tr bgcolor="#ffffff">
										<td>
											<a
												href="mater.do?method=materChapter&materId=${mater.materId}"><bean:write
													name="mater" property="materName" /> </a>
										</td>
										<td>
											<bean:write name="mater" property="materChapter" />
										</td>
										<!--
										<td>
											<bean:write name="mater" property="materUPload" />
										</td>
										  <td>
											<bean:write name="mater" property="materId" />
										</td>
										-->
										<td>
											<fmt:formatDate value="${mater.updatetime}" type="time"
												timeStyle="full" pattern="yyyy-MM-dd" />
											<!--  <bean:write name="mater" property="updatetime" /> -->
										</td>
										<td>
											<bean:write name="mater" property="way" />
										</td>
									</tr>
								</logic:iterate>
							</logic:notEmpty>
							<tr>
								<td width="50">
									&nbsp;
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="3">
						&nbsp;
					</td>
				</tr>
			</table>
			<jsp:include page="bottom.jsp" flush="true" />
		</form>
	</body>
</html>

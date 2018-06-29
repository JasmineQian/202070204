<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<link href="css/css.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		
			<table width="1000" border="0" align="center" cellpadding="0"
				cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
				<tr>
					<td colspan="4"><jsp:include page="fg-top.jsp" flush="true" /></td>
				</tr>
				<tr>
					<td height="40" colspan="4">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td align="center" colspan="4">
						<font size="6px" color=red>查看每章知识</font>
					</td>
				</tr>
				<tr>
					<td height="30" colspan="4">
						<hr align="center" size="0" width="99%">
					</td>
				</tr>
				<tr>
					<td height="20" colspan="4">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="20">
						&nbsp;
					</td>
					<td width="200">
						<jsp:include page="fg-left.jsp" flush="true" />
					</td>
					<td width="600">
					<form name="materForm" method="post" action="">
						<table cellspacing="2" cellpadding="0" align="center"
							bordercolor="#CCCCCC" border="1" width="600"
							style="border-collapse: collapse">
							<tr bgcolor="#F1F1F1" height="30px">
								<td colspan="2">
									您可以点击名称跳转查看。。
								</td>
							</tr>
							<tr bgcolor="#ffffdd">
								<td align="center" width="300" valign="middle"
									style="height: 30px">
									资料ID
								</td>
								<td align="center" width="300" valign="middle" align="center"
									style="height: 30px">
									资料名称
								</td>
							</tr>
							<logic:empty name="materlist">
								<tr bgcolor="#ffffff">
									<td colspan="2">
										<font color="red">没有符合条件的数据 </font>
									</td>
								</tr>
							</logic:empty>
							<logic:notEmpty name="materlist">
								<logic:iterate id="materials" name="materlist">
									<tr bgcolor="#ffffff">
										<td>
											<bean:write name="materials" property="materId" />
										</td>
										<td>
											<a href="mater.do?method=materChapter&materId=${materials.materId}"><bean:write name="materials" property="materName" /></a>
										</td>
									</tr>
								</logic:iterate>
							</logic:notEmpty>
						</table>
						</form>
					</td>
					<td width="40">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="30" colspan="4">
						&nbsp;
					</td>
				</tr>
			</table>
		<jsp:include page="bottom.jsp"></jsp:include>
	</body>
</html>

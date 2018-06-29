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
					<td><jsp:include page="fg-top.jsp" flush="true" /></td>
				</tr>
				<tr>
					<td height="40">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td align="center">
						<font size="6px" color=red>查看每章知识</font>
					</td>
				</tr>
				<tr>
					<td colspan="2" height="30">
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
						<jsp:include page="fg-left.jsp" flush="true" /></td>
				</tr>
				<tr>
					<td>
					<form name="mater" method="post" action="">
						<table width="800" border="0" align="center" cellpadding="0"
							cellspacing="0">
							<tr>
								<td>
									${mater.materId }
								</td>
							</tr>
							<tr>
								<td>
									${mater.materName }
								</td>
							</tr>
							<tr>
								<td>
									<textarea id="docContent" name="docContent"
										style="height: 350px; width: 100%;">${mater.materContent }</textarea>
								</td>
							</tr>
						</table>
						</form>
					</td>
				</tr>
			</table>
		<jsp:include page="bottom.jsp"></jsp:include>
	</body>
</html>

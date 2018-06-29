<%@ page contentType="text/html; charset=UTF-8"%>
<html>
	<head>
		<link href="css/css.css" rel="stylesheet" type="text/css">
		<script language="Javascript" type="text/javascript" src="script/linkinfo.js"></script>
	</head>

	<body>
		
			<table width="788" border="0" align="center" cellpadding="0"
				cellspacing="0" bgcolor="#FFFFFF">
				<tr>
					<td><jsp:include page="bg-top.jsp" flush="true" /></td>
				</tr>
				<tr>
					<td>
					<form name="modifyForm">
						<table width="610" align="center" height="25" border="0"
							cellpadding="0" cellspacing="0" background="image/bg_top02.jpg">
							<tr>
								<td>
									<div align="center">
										<strong>修改网络链接信息</strong>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2" bgcolor="#FFFFFF">
									&nbsp;
								</td>
							</tr>
						</table>
						<table width="71%" align="center" height="130" border="1"
							cellpadding="1" cellspacing="1" bordercolor="#FFFFFF"
							bgcolor="#CCCCCC">
							<tr bgcolor="#CCCCCC">
								<td align="center">
									链接ID
								</td>
								<td bgcolor="#FFFFFF">
									<input type="text" readonly="readonly" name="linkId" value="${linkinfo.linkId }" size=10>
								<font color="red">只读不可修改属性</font></td>
							</tr>
							<tr bgcolor="#CCCCCC">
								<td align="center">
									链接名称
								</td>
								<td bgcolor="#FFFFFF">
									<input type="text" name="linkName" value="${linkinfo.linkName }" size=70>
								</td>
							</tr>
							<tr>
								<td align="center">
									链接URL
								</td>
								<td bgcolor="#FFFFFF">
									<input type="text" name="linkURL" value="${linkinfo.linkURL }" size=70>
								</td>
							</tr>
							<tr>
								<td align="center">
									链接判断
								</td>
								<td bgcolor="#FFFFFF">
									<input type="radio" name="linkjude" checked="checked" value=1>
									普通链接
									<input type="radio" name="linkjude" value=0>
									视频链接
								</td>
							</tr>
							<tr>
								<td colspan="3" align="center" bgcolor="#FFFFFF">
									<input type="button" value="修改" onclick="modify()">
									<input type="reset" value="重置">
									<input type="button" value="返回" onclick="history.go(-1)">
								</td>
							</tr>
						</table>
						</form>
					</td>
				</tr>
			</table>
			<jsp:include page="bottom2.jsp" flush="true" />
	</body>
</html>

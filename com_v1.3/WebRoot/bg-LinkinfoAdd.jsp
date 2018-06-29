<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

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
					<form name="linkinfoActionForm" id="linkinfoActionForm">
						<table width="610" align="center" height="25" border="0"
							cellpadding="0" cellspacing="0" background="image/bg_top02.jpg">
							<tr>
								<td>
									<div align="center">
										<strong>添加网络链接信息</strong>
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
								<td align="center">
									请输入名称
								</td>
								<td bgcolor="#FFFFFF">
									<input type="text" name="linkName" size=50>
								</td>
							</tr>
							<tr>
								<td align="center">
									请输入URL
								</td>
								<td bgcolor="#FFFFFF">
									<input type="text" name="linkURL" size=50>
								</td>
							</tr>
							<tr>
								<td align="center">
									链接形势
								</td>
								<td bgcolor="#FFFFFF">
									<input type="radio" checked="checked" name="linkjude" value=1>
									普通链接
									<input type="radio" name="linkjude" value=0>
									视频链接
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center" bgcolor="#FFFFFF">
									<input type="button" value="添加" onclick="add()" >
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

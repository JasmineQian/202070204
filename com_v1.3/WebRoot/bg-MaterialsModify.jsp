<%@ page contentType="text/html; charset=UTF-8"%>
<html>
	<head>
		<link href="css/css.css" rel="stylesheet" type="text/css">
		<script language="Javascript" type="text/javascript" src="script/materinfo.js"></script>
	</head>
	<body>
		
			<table width="788" border="0" align="center" cellpadding="0"
				cellspacing="0" bgcolor="#FFFFFF">
				<tr>
					<td><jsp:include page="bg-top.jsp" flush="true" /></td>
				</tr>
				<tr>
					<td>
					<form name="modifyMaterForm">
						<table width="610" align="center" height="25" border="0"
							cellpadding="0" cellspacing="0" background="image/bg_top02.jpg">
							<tr>
								<td>
									<div align="center">
										<strong>修改资料信息</strong>
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
									资料Id
								</td>
								<td bgcolor="#FFFFFF">
									<input type="text" readonly="readonly" name="materId" value="${mater.materId }" size=10>
								注：此属性只可读不可修改</td>
							</tr>
							<tr bgcolor="#CCCCCC">
								<td align="center">
									资料名称
								</td>
								<td bgcolor="#FFFFFF">
									<input type="text" name="materName" value="${mater.materName }" size=70>
								</td>
							</tr>
							<tr>
								<td align="center">
									内容部分
								</td>
								<td bgcolor="#FFFFFF">
									<textarea id="materContent" name="materContent"
										style="height: 350px; width: 100%;">${mater.materContent }</textarea>
								</td>
							</tr>
							<tr>
								<td align="center">
									所属章节
								</td>
								<td bgcolor="#FFFFFF">
									<input type="radio" name="materChapter" checked="checked" value="第一章">
									第一章
									<input type="radio" name="materChapter" value="第二章">
									第二章
									<input type="radio" name="materChapter" value="第三章">
									第三章
									<input type="radio" name="materChapter" value="第四章">
									第四章
									<input type="radio" name="materChapter" value="第五章">
									第五章
								</td>
							</tr>
							<tr>
								<td align="center">
									是否上传资料
								</td>
								<td bgcolor="#FFFFFF">
									<input type="file" name="way">
									<a href="sy2.jsp">添加资料</a>
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

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<link href="css/css.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
		function addLinkinfo() {
		window.self.location = "bg-LinkinfoAdd.jsp";	
	}
	
	function modifyLinkinfo() {
		var count = 0;
		var j = 0;
		for (var i = 0; i < document.getElementsByName("selectFlag").length; i++) {
			if (document.getElementsByName("selectFlag")[i].checked) {
				j = i;
				count++;
			}
		}
		if (count == 0) {
			alert("请选择需要修改的链接！");
			return;
		}
		if (count > 1) {
			alert("一次只能修改一个链接！");
			return;
		}
		if (count == 1) {
			window.self.location = "linkinfo.do?method=queryLinkinfoById&LinkId=" + document.getElementsByName("selectFlag")[j].value;
		}
	}
	
	function delLinkinfo() {
		var flag = false;
		for (var i = 0; i < document.getElementsByName("selectFlag").length; i++) {
			if (document.getElementsByName("selectFlag")[i].checked) {
				flag = true;
			}		
		}
		if (!flag) {
			alert("请选择需要删除的链接！");
			return;
		}
		if (window.confirm("确认删除吗？")) {
			with (document.getElementById("linkinfoForm")) {
				method = "post";
				action = "linkinfo.do?method=delLinkinfo";
				submit();
			}
		}
	}
		
	function checkAll() {
		for (var i = 0; i < document.getElementsByName("selectFlag").length; i++) {
			document.getElementsByName("selectFlag")[i].checked = document.getElementById("ifAll").checked;
		}
	}

</script>
	</head>

	<body>

		<table width="788" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td><jsp:include page="bg-top.jsp" flush="true" /></td>
			</tr>
			<tr>
				<td colspan="6" bgcolor="#FFFFFF">
					&nbsp;
				</td>
			</tr>
			<tr>
				<td>
					<form name="linkinfoForm" method="post" action="">
						<table width="610" align="center" height="25" border="0"
							cellpadding="0" cellspacing="0" background="image/bg_top02.jpg">
							<tr>
								<td>
									<div align="center">
										<strong>查看所有链接的信息</strong>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="6" bgcolor="#FFFFFF">
									&nbsp;
								</td>
							</tr>
						</table>
						<table width="95%" align="center" height="130" border="1"
							cellpadding="1" cellspacing="1" bordercolor="#CCCCCC">
							<tr bgcolor="#CCCCCC">
								<td width="3%" align="center">
									<input type="checkbox" name="ifAll" onClick="checkAll()">
								</td>
								<td width="3%" height="25" align="center">
									<div align="center">
										ID
									</div>
								</td>
								<td width="40%">
									<div align="center">
										链接名称
									</div>
								</td>
								<td width="48%">
									<div align="center">
										链接URL
									</div>
								</td>
								<td width="19%">
									<div align="center">
										link值
									</div>
								</td>

							</tr>
							<c:choose>
								<c:when test="${linkinfolist==null}">
									<tr>
										<td colspan="5">
											<font color="red">没有符合条件的数据</font>
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${linkinfolist}" var="linkinfo">
										<tr>
											<td>
												<input type="checkbox" name="selectFlag" id="LinkId"
													value=${linkinfo.linkId}>
											</td>
											<td name="linkinfo" id="LinkId">
												${linkinfo.linkId}
											</td>
											<td name="linkinfo" id="LinkName">
												${linkinfo.linkName}
											</td>
											<td name="linkinfo" id="LinkURL">
												${linkinfo.linkURL}
											</td>
											<td name="linkinfo" id="Linkjude">
												${linkinfo.linkjude}
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
							<tr>
								<td align="right" colspan="6">
									<input type="button" value="添加" onclick="addLinkinfo()">
									<input type="button" value="修改" onclick="modifyLinkinfo()">
									<input type="button" value="删除" onclick="delLinkinfo()">
									&nbsp;&nbsp;&nbsp;&nbsp;
									<a href="">返回</a>
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

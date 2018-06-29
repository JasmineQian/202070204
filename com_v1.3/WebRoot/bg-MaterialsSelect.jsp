<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
	<head>
	    <title>查看所有资料</title>
		<link href="css/css.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
function addMaterinfo() {
		window.self.location = "bg-MaterialsAdd.jsp";	
	}
	
	function modifyMater() {
		var count = 0;
		var j = 0;
		for (var i = 0; i < document.getElementsByName("selectFlag").length; i++) {
			if (document.getElementsByName("selectFlag")[i].checked) {
				j = i;
				count++;
			}
		}
		if (count == 0) {
			alert("请选择需要修改的资料！");
			return;
		}
		if (count > 1) {
			alert("一次只能修改一个资料！");
			return;
		}
		if (count == 1) {
			window.self.location = "materinfo.do?method=queryMaterById&MaterId=" + document.getElementsByName("selectFlag")[j].value;
		}
	}
	
	function delMater() {
		var flag = false;
		for (var i = 0; i < document.getElementsByName("selectFlag").length; i++) {
			if (document.getElementsByName("selectFlag")[i].checked) {
				flag = true;
			}		
		}
		if (!flag) {
			alert("请选择需要删除的资料！");
			return;
		}
		if (window.confirm("确认删除吗？")) {
			with (document.getElementById("form")) {
				method = "post";
				action = "materinfo.do?method=delMaters";
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
					<td colspan="7" bgcolor="#FFFFFF">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td>
					<form name="form" method="post">
						<table width="610" align="center" height="25" border="0"
							cellpadding="0" cellspacing="0" background="image/bg_top02.jpg">
							<tr>
								<td>
									<div align="center">
										<strong>查看所有资料的信息</strong>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="7" bgcolor="#FFFFFF">
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
								<td width="3%" height="25" align="center" align="center">
									ID
								</td>
								<td width="40%" align="center">
									资料名称
								</td>
								<td width="10%" align="center" align="center">
									所属章节
								</td>
								<td width="10%" align="center" align="center">
									有无上传
								</td>
								<td width="20%" align="center" align="center">
									资料路径
								</td>
								<td width="14%" align="center" align="center">
									添加时间
								</td>
							</tr>
							<c:choose>
								<c:when test="${materlist==null}">
									<tr>
										<td colspan="7">
											<font color="red">没有符合条件的数据</font>
										</td>
									</tr>
								</c:when>
								<c:otherwise>
									<c:forEach items="${materlist}" var="materials">
							<tr>
							<td>
							<input type="checkbox" name="selectFlag" id="materId" value="${materials.materId}">
							</td>
							<td name="materials" id="MaterId" align="center">
							${materials.materId }
							</td>
							<td name="materials" id="MaterName">
							${materials.materName }
							</td>
							<td name="materials" id="MaterChapter" align="center">
							${materials.materChapter }
							</td>
							<td name="materials" id="MaterUPload" align="center">
							${materials.materUPload }
							</td>
							<td name="materials" id="MaterUPload" align="center">
							${materials.way }
							</td>
							<td name="materials" id="MaterUPload" align="center">
							<fmt:formatDate value="${materials.updatetime }" type="time"
													timeStyle="full" pattern="yyyy-MM-dd" />
							</td>
							</tr>
							</c:forEach>
								</c:otherwise>
							</c:choose>
							<tr>
								<td colspan="7" align="center">
									<input type="button" value="添加" onclick="addMaterinfo()">
									<input type="button" value="修改" onclick="modifyMater()">
									<input type="button" value="删除" onclick="delMater()">
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

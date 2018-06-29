<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="bean" uri="http://struts.apache.org/tags-bean"%>
<%@ taglib prefix="logic" uri="http://struts.apache.org/tags-logic"%>

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
					<font size="6px" color=red>我的个人下载信息</font>
				</td>
			</tr>
			<tr>
				<td height="30">
					<hr align="center" size="0" width="99%">
				</td>
			</tr>
			<tr>
				<td>
					<form name="" method="post" action="">
						<table align="center" cellspacing="2" cellpadding="0"
							bordercolor="#CCCCCC" border="1" width="950">
							<tr bgcolor="#F1F1F1" height="25px">
								<td colspan="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<font size="4px" color=""> 我的个人信息</font>
								</td>
							</tr>
							<tr>
								<td width="120" rowspan="6">
									<img src="${user.piclink}" width="120" height="120" />
								</td>
								<td height="25" width="320">
									用户名：${user.userName}
								</td>
								<td rowspan="7">
									<img alt="" src="image/GeImage.jpg" />
								</td>
							<tr>
								<td>
									<span>我的邮箱：</span>10000.00元
								</td>
							</tr>
							<TR>
								<td>
									<span>注册时间：</span>${tempUserInfo.expendablefund}元
								</td>
							</tr>
							<tr>
								<td>
									<span>手机号码：</span>${tempUserInfo.freezedFunds}元
								</td>
							</TR>
							<TR>

								<td>
									<span>123：</span><font color="green">${tempUserInfo.stockValue}元</font>
								</td>
							</tr>
							<tr>
								<td>
									<span>3432：</span><font color="green">${tempUserInfo.marketValue}元</font>
								</td>
							</TR>
							<TR>
								<TD align="center">
									<a href="fg-information.jsp">点此修改头像</a>
								</TD>
								<td>
									<span>4355：</span><font color="green">${tempUserInfo.prolCost}元</font>
								</td>
							</tr>
						</table>
						<table width="1000" border="0" align="center" cellpadding="0"
							cellspacing="0" bordercolor="#000000" bgcolor="#FFFFFF">
							<tr>
								<td height="20">
									&nbsp;
								</td>
							</tr>
						</table>
						<table align="center" cellspacing="2" cellpadding="0"
							bordercolor="#CCCCCC" border="1" width="950"
							style="border-collapse: collapse">

							<tr bgcolor="#F1F1F1" height="30px">
								<td colspan=10>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 查看个人下载记录
								</td>
							</tr>
							<tr bgcolor="#ffffdd">
								<td width="95" align="center" style="height: 35px">
									操作帐户
								</td>
								<td width="91" align="center" style="height: 35px">
									资料名称
								</td>
								<td width="91" align="center" style="height: 35px">
									下载时间
								</td>
								<td width="71" align="center" style="height: 35px">
									下载次数
								</td>
								<td width="71" align="center" style="height: 35px">
									总下载次数
								</td>
								<td width="71" align="center" style="height: 35px">
									下载排名
								</td>
								
							</tr>
							<logic:empty name="userstocklist">
								<tr>
									<td colspan="10">
										<font color="red">没有符合条件的数据</font>
									</td>
								</tr>
							</logic:empty>
							<logic:notEmpty name="userstocklist">
								<logic:iterate id="userstock" name="userstocklist">
									<tr>
										<td align="center" style="height: 35px">
											fghjk
										</td>
										<td align="center" style="height: 35px">
											<bean:write name="userstock" property="stockinfo.stockId" />
										</td>
										<td align="center" style="height: 35px">
											<a
												href="stock.do?method=querybyid&stockId=${userstock.stockinfo.stockId}">
												<bean:write name="userstock" property="stockinfo.stockName" />
											</a>
										</td>
										<td align="center" style="height: 35px">
											<bean:write name="userstock" property="count" />
										</td>
										<td align="center" style="height: 35px">
											<bean:write name="userstock" property="toSellCount" />
										</td>
										<td align="center" style="height: 35px">
											<bean:write name="userstock" property="cost" />
										</td>
									</tr>
								</logic:iterate>
							</logic:notEmpty>
						</table>
					</form>
				</td>
			</tr>
		</table>


		<jsp:include page="bottom.jsp" flush="true" />

	</body>
</html>

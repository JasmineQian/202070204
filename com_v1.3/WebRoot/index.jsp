<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
		<title>--学习网站首页--</title>
		<link href="css/base.css" rel="stylesheet" type="text/css">
		<script language=JavaScript src="script/regcheckdata.js"
			type="text/javascript"></script>
		<script>
  function reloadImage(){
    document.getElementById('btn').disabled= true;
    document.getElementById('identity').src='check.do?ts= ' + new Date().getTime();
  }
  </script>

		<style type="text/css">
.in_quan1 {
	BORDER-LEFT: #FFFFFF 1px solid;
	PADDING-BOTTOM: 0px;
	MARGIN: 0px auto;
	PADDING-LEFT: 10px;
	WIDTH: 240px;
	PADDING-RIGHT: 10px;
	BACKGROUND: #FFFFFF;
	HEIGHT: 580px;
	CLEAR: both;
	BORDER-RIGHT: #FFFFFF 1px solid;
	PADDING-TOP: 6px
}

.in_quan1_left {
	BORDER-BOTTOM: #960001 1px solid;
	BORDER-LEFT: #960001 1px solid;
	PADDING-BOTTOM: 10px;
	WIDTH: 240px;
	DISPLAY: inline;
	BACKGROUND: #ffffff;
	FLOAT: left;
	HEIGHT: 550px;
	BORDER-TOP: #960001 1px solid;
	BORDER-RIGHT: #960001 1px solid
}

.in_quan1_left TT {
	BORDER-BOTTOM: #960001 1px solid;
	PADDING-BOTTOM: 0px;
	LINE-HEIGHT: 25px;
	TEXT-INDENT: 10px;
	MARGIN: 0px 0px 10px;
	PADDING-LEFT: 0px;
	WIDTH: 240px;
	PADDING-RIGHT: 0px;
	DISPLAY: block;
	FONT-FAMILY: "宋体";
	BACKGROUND: url(image/quan_bg.gif) repeat-x;
	HEIGHT: 25px;
	COLOR: #ffffff;
	FONT-SIZE: 12px;
	PADDING-TOP: 0px
}

.in_quan {
	BORDER-LEFT: #FFFFFF 1px solid;
	PADDING-BOTTOM: 0px;
	MARGIN: 0px auto;
	PADDING-LEFT: 20px;
	WIDTH: 700px;
	PADDING-RIGHT: 10px;
	BACKGROUND: #FFFFFF;
	HEIGHT: 580px;
	CLEAR: both;
	BORDER-RIGHT: #FFFFFF 1px solid;
	PADDING-TOP: 6px
}

.in_quan_left {
	BORDER-BOTTOM: #960001 1px solid;
	BORDER-LEFT: #960001 1px solid;
	PADDING-BOTTOM: 10px;
	WIDTH: 700px;
	DISPLAY: inline;
	BACKGROUND: #ffffff;
	FLOAT: left;
	HEIGHT: 550px;
	BORDER-TOP: #960001 1px solid;
	BORDER-RIGHT: #960001 1px solid
}

.in_quan_left TT {
	BORDER-BOTTOM: #960001 1px solid;
	PADDING-BOTTOM: 0px;
	LINE-HEIGHT: 25px;
	TEXT-INDENT: 10px;
	MARGIN: 0px 0px 10px;
	PADDING-LEFT: 0px;
	WIDTH: 700px;
	PADDING-RIGHT: 0px;
	DISPLAY: block;
	FONT-FAMILY: "宋体";
	BACKGROUND: url(image/quan_bg.gif) repeat-x;
	HEIGHT: 25px;
	COLOR: #ffffff;
	FONT-SIZE: 12px;
	PADDING-TOP: 0px
}

.in_quan_left TT SPAN {
	PADDING-RIGHT: 10px;
	FLOAT: right
}

.in_quan_left TT H3 {
	PADDING-BOTTOM: 0px;
	MARGIN: 0px;
	PADDING-LEFT: 0px;
	PADDING-RIGHT: 0px;
	DISPLAY: inline;
	FONT-SIZE: 12px;
	FONT-WEIGHT: normal;
	PADDING-TOP: 0px
}

.in_quan_left UL {
	PADDING-BOTTOM: 0px;
	MARGIN: 0px 30px 0px 10px;
	PADDING-LEFT: 0px;
	WIDTH: 950px;
	PADDING-RIGHT: 0px;
	DISPLAY: inline;
	FLOAT: left;
	PADDING-TOP: 0px
}

.in_quan_left UL IMG {
	MARGIN: 11px 25px;
	FLOAT: left
}

.in_quan_left UL H4 {
	PADDING-BOTTOM: 5px;
	MARGIN: 0px;
	PADDING-LEFT: 0px;
	WIDTH: 540px;
	PADDING-RIGHT: 0px;
	FONT-FAMILY: "黑体";
	FLOAT: left;
	COLOR: #ff6600;
	FONT-SIZE: 18px;
	FONT-WEIGHT: normal;
	PADDING-TOP: 5px
}

.in_quan_left UL STRONG {
	LINE-HEIGHT: 24px;
	WIDTH: 540px;
	FLOAT: left;
	FONT-SIZE: 14px;
	FONT-WEIGHT: normal
}

.in_quan_left HR {
	BORDER-BOTTOM: #ffffff 1px dotted;
	BORDER-LEFT: medium none;
	MARGIN: 0px 10px;
	WIDTH: 680px;
	FLOAT: left;
	HEIGHT: 2px;
	BORDER-TOP: #999999 1px dotted;
	BORDER-RIGHT: medium none
}

.in_quan_right {
	BORDER-BOTTOM: #4f90c8 1px solid;
	BORDER-LEFT: #4f90c8 1px solid;
	PADDING-BOTTOM: 5px;
	PADDING-LEFT: 1px;
	WIDTH: 235px;
	PADDING-RIGHT: 1px;
	DISPLAY: inline;
	BACKGROUND: #ffffff;
	FLOAT: left;
	MARGIN-LEFT: 6px;
	BORDER-TOP: #4f90c8 1px solid;
	BORDER-RIGHT: #4f90c8 1px solid;
	PADDING-TOP: 1px
}
</style>
	</head>
	<body>
		<table width="1000" border="0" align="center" cellpadding="0"
			cellspacing="0">
			<tr>
				<td>
					<jsp:include page="fg-top.jsp" flush="true" /></td>
			</tr>
		</table>
		<table width="1000" border="0" align="center" cellpadding="0"
			cellspacing="0" bgcolor="#FFFFFF">
			<tr>
				<td>
					<div class="in_quan1">
						<div class="in_quan1_left">
							<tt> <a href="fg-login.jsp">--欢迎登录--</a> </tt>
							<table width="100%" height="110">
								<tr>
									<td>
										<form name="userForm" id="userForm">
											<table border="0" bordercolor=grey align="center"
												cellpadding="2" cellspacing="0">
												<!-- 登录前显示开始 -->
												<logic:empty name="user">
													<tr>
														<td align="right">
															<font size="">用户名：</font>
														</td>
														<td align="left">
															<input name="userName" type="text" id="userName"
																onblur="this.style.backgroundColor='#FFF'"
																onclick="this.style.backgroundColor='#FFFFCC'"
																maxlength="15" size="15">
														</td>
													</tr>

													<tr>
														<td align="right">
															<font size="">密&nbsp;&nbsp;&nbsp;&nbsp;码：</font>
														</td>
														<td align="left">
															<input name="password" type="password" id="password"
																onBlur="this.style.backgroundColor='#FFF'"
																onClick="this.style.backgroundColor='#FFFFCC'"
																maxlength="15" size="15">
														</td>
													</tr>
													<tr>
														<td colspan="2" align="center">
															<input type="button" value="登录" onClick="login()">
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<input type="reset" value="重置">
														</td>
													</tr>
													<tr>
														<td colspan="2">
															&nbsp;
															<a href="fg-password.jsp">找回密码？</a>&nbsp;&nbsp;
															&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
															<a href="register.jsp">还没有注册?</a>
														</td>
													</tr>
												</logic:empty>
												<!-- 登录前显示结束 -->

												<!-- 登录后显示开始 -->
												<logic:notEmpty name="user">
													<tr>
														<td align="right">
															<font size="">当前登录：</font>
														</td>
														<td align="left">
															${user.userName}
														</td>
													</tr>
													<tr>
														<td colspan="2" align="center">
															<input type="button" value="安全退出" onClick="exitt()" >
														</td>
													</tr>
													
												</logic:notEmpty>
												<!-- 登录后显示结束 -->
											</table>
										</form>
									</td>
								</tr>
							</table>
							<tt> <a href="userLinkinfo.do?method=userqueryAllLinkinfo"> --常用链接--</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
								href="userLinkinfo.do?method=userqueryAllLinkinfo">More</a> </tt>
							<table width="100%" height="160">
								<tr>
									<td>
										<marquee direction="up" height="160" onmouseout="this.start()"
											onmouseover="this.stop()" scrollAmount="1" scrollDelay="1">
											<img src="image/sign.gif">
											&nbsp;&nbsp;
											<a href="http://www.baidu.com/">百度一下，你就知道</a>
											<br>
											<br>
											<img src="image/sign.gif">
											&nbsp;&nbsp;
											<a href="http://www.qq.com/">腾讯QQ</a>
											<br>
											<br>
											<img src="image/sign.gif">
											&nbsp;&nbsp;
											<a href="http://www.iteye.com/">ItEye做最棒的软件开发交流社区</a>
											<br>
											<br>
											<img src="image/sign.gif">
											&nbsp;&nbsp;
											<a href="http://www.csdn.net/">CSDN.NET -
												全球最大中文IT社区，为IT专业技术</a>
											<br>
											<br>
									</td>
								</tr>
							</table>
							<tt> <a href="userLinkinfo.do?method=userqueryAllplay">--观看视频--</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
								href="userLinkinfo.do?method=userqueryAllplay">More</a> </tt>
							<table width="100%" height="10">
								<tr>
									<td>
										<a href="fg-play.jsp"><img alt="" src="image/22.jpg"
												width="230" height="150" /> </a>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</td>
				<td>
					<div class="in_quan">
						<div class="in_quan_left">
							<tt> <a href="mater.do?method=mater&MaterChapter=第一章">--章节知识--点击进入可进行浏览章节知识--</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a href="mater.do?method=mater&MaterChapter=第一章">More</a> </tt>
							<ul>
								<img alt="第一章" height="72" src="image/z01.gif" width="72">
								<h4>
									绪论部分——帮您打开计算机的大门
								</h4>
								<strong>这是一个神奇而多彩的世界!欢迎走进计算机的大门!先来让我们认识一下计算机的历史和发展吧。通过本章的学习你可以了解到计算机硬件软件的发展史，计算机的分类，计算机的系统组成，计算机的工作过程以及程序算法和语言，这里做简要概括!</strong>
							</ul>
							<hr />
							<ul>
								<img alt="第二章" height="72" src="image/z02.gif" width="72">
								<h4>
									计算机数据存储数据处理数据的输入和输出
								</h4>
								<strong>本章介绍了数据存储，计算机内部存储的数字的表示和运算。二进制、八进制、十六进制、十进制之间的转换和一般所用的场合。字符、汉字、图形的数据表示。逻辑代数的基本概念，内存和外存的基本概念；机器指令，中央处理器，逻辑元算和逻辑指令。</strong>
							</ul>
							<hr />
							<ul>
								<img alt="第三章" height="72" src="image/z03.gif" width="72">
								<h4>
									微机的组成和组装、操作系统和计算机算法
								</h4>
								<strong>计算机操作系统的发展历史，计算机中windows操作系统的发展历史。操作系统的功能和启动。windows操作基础，文件的概念和基本操作。微机的结构，数据的输入输出，用户界面的发展过程!</strong>
								<hr />
								<ul>
									<img alt="第四章" height="72" src="image/z04.gif" width="72">
									<h4>
										计算机网络应用、计算机辅助生活生产和学习
									</h4>
									<strong>计算机网络概述，Internet的组成和应用，计算机网络的分类。IP地址和域名。浏览网页，下载，导航等web浏览。文字处理软件Word简介，电子表格处理软件Excle简介。如何接受和发送Email简介。</strong>
								</ul>
								<hr />
								<ul>
									<img alt="第五章" height="72" src="image/z05.gif" width="72">
									<h4>
										综合性测试，更好地掌握知识哦！！
									</h4>
									<strong>在这个板块里面，给出了很多计算机测试的题目，部分题目有答案。用户们可以进行浏览，思考。或者下载下来，进行研究，以备更好地掌握住这些知识。并且，网站管理员会定期上传最新的考题，知识点上去的，细心的用户们，可一定不要错过哦。</strong>
								</ul>
						</div>
					</div>
				</td>
			</tr>
		</table>


		<jsp:include page="bottom.jsp"></jsp:include>

	</body>
</html>


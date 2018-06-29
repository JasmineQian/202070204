<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
		<title>操作提示</title>
		<link href="css/public.css" rel="stylesheet" type="text/css">
		<link href="css/userCenter.css" rel="stylesheet" type="text/css">
		<link href="css/default.css" rel="stylesheet" type="text/css">
		<link href="css/showmessage.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<div id="container">
			<div id="page_content">
				<div class="cygp">
					<div class="nav_lm">
						<strong>信息提示</strong>
						<span class="s_deng">》》</span>
					</div>

					<div class="showmessage">
						<div class="ye_r_t">
							<div class="ye_l_t">
								<div class="ye_r_b">
									<div class="ye_l_b">

										<h2>
											信息提示
										</h2>

										<p align="center">
											<a href="${path}">${message}</a>
											<script>setTimeout("window.location.href ='${path}';", 3000);</script>
										</p>
										<p align="center" class="op">
											<a href="${path}">页面跳转中...</a>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>

			</div>
			<div class="clear">
			</div>
		</div>

		<jsp:include page="bottom2.jsp" flush="true" />

	</body>

</html>

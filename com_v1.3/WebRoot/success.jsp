<%@ page language="java"   pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script language="javascript">
		function InitPage(){//页面加载事件
		var paramStr = '${Message}';
 		if(paramStr == 'register_success'){
    		alert("注册成功！点此进行登录！");
    		window.self.location ="index.jsp";
		}
		if(paramStr == 'password_change'){
    		alert("密码修改成功！");
    		window.self.location ="userstock.do?method=querybyid";
		}
		if(paramStr == 'userinfo_change'){
    		alert("头像及联系方式修改成功！");
    		window.self.location ="userstock.do?method=querybyid";
		}
		if(paramStr == 'addmystock_success'){
    		alert("添加关注成功！");
    		window.self.location ="javascript:history.go(-1)";
		}
		if(paramStr == 'removemystock_success'){
    		alert("移除关注成功！");
    		window.self.location ="user.do?method=getmystock";
		}
		if(paramStr == 'removemyallstock_success'){
    		alert("移除所有关注成功！");
    		window.self.location ="user.do?method=getmystock";
		}
		if(paramStr == 'sendmail_success'){
    		alert("邮件发送成功，请检查您的邮箱！");
    		window.self.location ="index.jsp";
		}
	}
	</script>
	</head>

	<body onload="InitPage()">
		<br>
	</body>
</html>

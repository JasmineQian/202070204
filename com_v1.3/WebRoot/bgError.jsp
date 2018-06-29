<%@ page language="java"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base>
		<script type="text/javascript" language="javascript">
    function InitPage(){
    var paramStr = '<%=request.getAttribute("Message")%>';
    if(paramStr=='no_user'){
    	alert("用户名或密码错误，请重新输入！");
    	window.self.location ="bg-land.jsp";
    }
    if(paramStr=='error_user'){
    	alert("用户名或密码错误，请重新输入！");
    	window.self.location ="bg-land.jsp";
    }
    if(paramStr=='password_change'){r
    	alert("密码修改成功，请重新登录！");
    	window.self.location ="bg-land.jsp";
	}
    if(paramStr=='password_nochange'){
    	alert("密码修改失败！");
    	window.self.location ="bg-managerUpdatePassword.jsp";
	}
	if(paramStr == 'register_samename'){
    	alert("用户名已存在！");
    	window.self.location ="bg-sumanagerInsert.jsp";
	}
	if(paramStr == 'Forbiden'){
    	alert("超级管理员禁止删除！");
    	window.self.location ="admin.do?method=queryall";
	}
    }
    </script>
	</head>
	<body onload="InitPage()">
		<br>
	</body>
</html>

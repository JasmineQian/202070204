<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<script language="javascript">
		function InitPage(){//页面加载事件
		var paramStr = '<%=request.getAttribute("Message")%>';
 		if(paramStr == 'no_user'){
    		alert("用户名不存在！请先注册再登录！");
    		window.self.location ="index.jsp";
		}
		if(paramStr == 'error_user'){
    		alert("用户名或密码错误！请重新输入！");
    		window.self.location ="index.jsp";
		}		
		if(paramStr == 'register_samename'){
    		alert("用户名已存在！");
    		window.self.location ="register.jsp";
		}
		if(paramStr == 'register_fail'){
    		alert("注册失败！");
    		window.self.location ="register.jsp";
		}	
		if(paramStr == 'password_nochange'){
    		alert("密码修改失败！");
    		window.self.location ="fg-information.jsp";
		}
		if(paramStr == 'wrongemail_error'){
    		alert("用户名或邮箱错误！");
    		window.self.location ="fg-password.jsp";
		}
		if(paramStr == 'sendmail_error'){
    		alert("邮件发送失败！请检查您的网络！");
    		window.self.location ="fg-password.jsp";
		}
	}
	</script>
  </head>
  
  <body onload="InitPage()">
   <br>
  </body>
</html>

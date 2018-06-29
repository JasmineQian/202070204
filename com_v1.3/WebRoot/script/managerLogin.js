//管理员登录的JS验证
function checkEmpty(){
 	
 	var managerName=document.getElementById("managerName");
 	var password=document.getElementById("password");
 	
 	if(managerName.value==""){
 		alert("请输入管理员帐号！");
 		managerName.focus();
 		return;
 	}
 	
 	if(password.value==""){
 		alert("请输入帐号密码！");
 		password.focus();
 		return;
 	}
	with (document.getElementById("managerForm")) {
		method = "post";
		action = "admin.do?method=querybyname";
		submit();
	}
}

//修改管理员密码的JS验证
function checkMod(){

	var old=document.getElementById("old");
	var password=document.getElementById("password");
	var password1=document.getElementById("password1");
	
	if(old.value == ""){
 		alert("请输入原始密码！");
 		old.focus();
 		return;
 	}
 	if(password.value==""){
 		alert("新密码不为空！");
 		password.focus();
 		return;
 	}
 	if(password1.value==""){
 		alert("新密码确认不为空！");
 		password.focus();
 		return;
 	}
 	if(password.value.length <6) {
		alert("输入的密码不能小于6位字符");
		password.value="";
		password.focus();
		return;
	}
 	if(password1.value!=password.value){
 		alert("两次输入的密码不一致！");
 		password1.value="";
 		password1.focus();
 		return;
 	}
	with (document.getElementById("modifyForm")) {
		method = "post";
		action = "admin.do?method=modify";
		submit();
	}
}

//添加管理员的JS验证
function addManager(){
	
	var managerName=document.getElementById("managerName");
	var password=document.getElementById("password");
	
	if(managerName.value == ""){
 		alert("请输入登录帐号！");
 		managerName.focus();
 		return;
 	}
 	if(password.value==""){
 		alert("登录密码不为空！");
 		password.focus();
 		return;
 	}
 	if(password.value.length <6){
 		alert("登录密码长度不能少于6位！");
 		password.value="";
 		password.focus();
 		return;
 	}
	with (document.getElementById("addForm")) {
		method = "post";
		action = "admin.do?method=add";
		submit();
	}
}
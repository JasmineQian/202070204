//用户登录的JS验证
function login(){

	var name=document.getElementById("userName");
	var password=document.getElementById("password");
	
	if(name.value == "") {
		alert("请输入用户名！");
		name.focus();
		return;
		}
	if(password.value == "") {
		alert("请输入密码！");
		password.focus();
		return;
		}
	with (document.getElementById("userForm")) {
		method = "post";
		action = "user.do?method=querybyname";
		submit();
		}
}

//添加用户的JS验证
function addUser() {

	var temp = document.getElementById("email");
    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	var name=document.getElementById("userName");
    var password=document.getElementById("password");
    var passwordOne=document.getElementById("passwordOne");
    var email=document.getElementById("email");
    var agree=document.getElementById("agree");
    
	if(name.value == "") {
		alert("用户名称不能为空！");
		name.focus();
		return;
	}
	if(password.value.length <6) {
		alert("输入的密码不能小于6位字符");
		password.focus();
		return;
	}
	if(password.value ==name.value) {
		alert("密码不能与用户名相同！");
		password.value="";
		password.focus();
		return;
	}
	if(passwordOne.value!=password.value) {
		alert("两次输入的密码不一致！");
		passwordOne.value="";
		passwordOne.focus();
		return;
	}
	if(temp.value == ""){
		alert("请输入邮箱地址！");
		email.focus();
		return;
		}
	if(temp.value != "") {
		if(!myreg.test(temp.value))
		{
		alert("请输入有效的email！");
		temp.value="";
		email.focus();
		return;
		}
		}
	if(!(userForm.agree.checked)){
		alert("请同意服务条款！");
		agree.focus();
		return;
		}
	with (document.getElementById("userForm")) {
		method = "post";
		action = "user.do?method=add";
		submit();
		}
	}

//修用用户信息的JS验证
function modify1(){
	var temp = document.getElementById("email");
    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
    
    if(temp.value == ""){
		alert("请输入邮箱地址！");
		temp.focus();
		return;
		}
	if(temp.value != "") {
		if(!myreg.test(temp.value))
		{
		alert("请输入有效的email！");
		temp.value="";
		temp.focus();
		return;
		}
		}
	with (document.getElementById("modifyForm")) {
		method = "post";
		action = "user.do?method=modify";
		submit();
		}
    }
    
function modify2() {
	
	var password=document.getElementById("password");
	var confirmpassword=document.getElementById("confirmpassword");
	var txt_pwd3=document.getElementById("txt_pwd3");
	
	if(password.value==""){
		alert("请输入您的密码！");
		password.focus();
		return;
		}
	if(confirmpassword.value==""){
		alert("请输入新密码！");
		confirmpassword.focus();
		return;
		}
	if(txt_pwd3.value!=confirmpassword.value) {
		alert("两次输入的密码不一致！");
		txt_pwd3.value="";
		txt_pwd3.focus();
		return;
		}
	if(password.value==confirmpassword.value){
		alert("密码未修改！");
		confirmpassword.value="";
		txt_pwd3.value="";
		confirmpassword.focus();
		return;
		}
	with (document.getElementById("modifyForm")) {
		method = "post";
		action = "user.do?method=modifypassword";
		submit();
		}
}

//密码找回邮箱验证
function checkEmail(){

    var name=document.getElementById("userName");
	var temp = document.getElementById("email");
    var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
	
	if(name.value == "") {
		alert("请输入用户名！");
		name.focus();
		return;
		}
    if(temp.value == ""){
		alert("请输入邮箱地址！");
		temp.focus();
		return;
		}
	if(temp.value != "") {
		if(!myreg.test(temp.value))
		{
		alert("请输入有效的email！");
		temp.value="";
		temp.focus();
		return;
		}
		}
	with (document.getElementById("psd")) {
		method = "post";
		action = "user.do?method=getPassword";
		submit();
		}
	}

function goBack() {
		window.self.location ="index.jsp"
	}
	
function init() {
		document.userForm.userId.focus();
	}
	
function exitt() {
		with (document.getElementById("userForm")) {
		method = "post";
		action = "user.do?method=exit&userName=${user.userName}";
		submit();
	}
	
	}
	
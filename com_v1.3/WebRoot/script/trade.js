function check(){
	var stockId=document.getElementById("stockId");
	var reg = /^sh\d{6}$/;
	if(stockId.value==""){
		alert("请输入股票代码！");
		stockId.focus();
		return;
	}
	if(stockId.value != ""){
		if(!reg.test(stockId.value))
		{
		alert("请输入正确的股票代码，以sh开头，6位数字结尾！");
		stockId.value="";
		stockId.focus();
		return;
		}
	}	
	with (document.getElementById("buyForm")) {
		method = "post";
		action = "stock.do?method=getstockinfo";
		submit();
		}
}
function buyStock(){
	
	var BuyPrice=document.getElementById("BuyPrice");

	
	var BuyCount=document.getElementById("BuyCount");

	
	if(BuyPrice.value == ""){
		alert("请输入您想购买股票的价格！");
		BuyPrice.focus();
		return;
	}

	if(BuyCount.value==""){
		alert("请输入您想购买的股票数量！");
		BuyCount.focus();
		return;
	}
	if(BuyCount.value != "") {
		if(BuyCount.value%100!=0)
		{
		alert("您购买的股票数量必须是100的倍数！");
		BuyCount.value="";
		BuyCount.focus();
		return;
		}
		}
	with (document.getElementById("buyForm")) {
		method = "post";
		action = "buystock.do";
		submit();
		}
}


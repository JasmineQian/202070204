function add() {
	with (document.getElementById("linkinfoActionForm")) {
		method = "post";
		action = "linkinfo.do?method=addLinkinfo";
		submit();
	}
}
function modify() {
	with (document.getElementById("modifyForm")) {
		method = "post";
		action = "linkinfo.do?method=modifyLinkinfo";
		submit();
	}
}


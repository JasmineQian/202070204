function add() {
	with (document.getElementById("addMaterForm")) {
		method = "post";
		action = "materinfo.do?method=addMaters";
		submit();
	}
}
function modify() {
	with (document.getElementById("modifyMaterForm")) {
		method = "post";
		action = "materinfo.do?method=modifyMater";
		submit();
	}
}

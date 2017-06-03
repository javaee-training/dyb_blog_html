function checkName(){
	var username = document.getElementById("username");
	var checkNameResult = document.getElementById("username").value;
	if(username.length()<8){
		checkNameResult.focus();
	}


}

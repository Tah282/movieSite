function checkLogin() {
	
	let id = document.querySelector(".login-id");
	let pw = document.querySelector(".login-pw");
	
	if(!id.value) {
		alert("아이디를 입력해주세요.");
		id.focus();
	} else if(!pw.value) {
		alert("비밀번호를 입력해주세요.");
		pw.focus();
	} else {
		let formData = document.querySelector(".formData");
		formData.submit();
	}
	
}

function checkJoin() {
	
	let id = document.querySelector(".join-id");
	let pw = document.querySelector(".join-pw");
	let pwCheck = document.querySelector(".join-pwCheck");
	let name = document.querySelector(".join-name");
	let email = document.querySelector(".join-email");
	
	if(!id.value) {
		alert("아이디를 입력해주세요.");
		id.focus();
	} else if(!pw.value) {
		alert("비밀번호를 입력해주세요.");
		pw.focus();
	} else if(!pwCheck.value) {
		alert("비밀번호 확인을 입력해주세요.");
		pwCheck.focus();
	} else if(pw.value != pwCheck.value) {
		alert("비밀번호 확인이 일치하지 않습니다.");
		pwCheck.value = "";
		pwCheck.focus();
	}else if(!name.value){
		alert("이름을 확인을 입력해주세요.");
		name.focus();
	} else if(!email.value) {
		alert("이메일을 입력해주세요.");
		email.focus();
	} else {
		let formData = document.querySelector(".formData");
		formData.submit();
	}
	
}



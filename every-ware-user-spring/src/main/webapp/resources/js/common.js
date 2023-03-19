/** 입력한 콜백함수를 실행 */
function command_action(callback){
	callback();
}

/** 메인 페이지 호출 */
function main(){
	location.href = "/";
}


/** 로그인 페이지 호출 */
function login(){
	location.href = "/user/login";
}

/** 로그아웃 페이지 호출 */
function logout(){
	location.href = "/user/logout";
}
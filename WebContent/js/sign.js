/*function login(){
	window.open('signin.jsp','login','left=300,top=100,width=500,height=800');
}*/

$(function(){
	$/*("a#login").click(function(){
		if($(this).text()=='login'){
			login();
		}else if($(this).text()=='logout'){
			$(this).text('login');
		}
	});*/
	$("a#signin").click(function(){
		if($("input#id").val().length==0 || $("input#pw").val().length==0){
			alert("id/pw check!");
			$("input#id").val('');
			$("input#pw").val('');
			$("input#id").focus();
		}/*else if($("input#id").val()=='admin' && $("input#pw").val()=='1234'){
			self.close();
			window.opener.document.getElementById("slogin").innerHTML = 'logout';
		}*/
	});
	$("a#signin").click(function(){
		$("form[role='form']").submit();
	});
	/*if($("input#identifier").val().length==0){
		alert("id Check!");
	}*/
	
	$("a#signup").click(function(){
		if($("input#identifier").val().length==0){
			alert("id Check!");
			$("input#identifier").val('');
			$("input#identifier").focus();
		}
		if($("input#name").val().length==0 || !isNaN($("input#name").val())){
			alert("name Check!");
			$("input#name").val('');
			$("input#name").focus();
		}
		if($("input#nname").val().length==0){
			alert("nick-name Check!");
			$("input#nname").val('');
			$("input#nname").focus();
		}
		if($("input#password1").val().length==0 ||$("input#password2").val().length==0 || $("input#password1").val()!=$("input#password2").val()){
			alert("pw Check!");
			$("input#password1").val('');
			$("input#password2").val('');
			$("input#password1").focus();
		}else{
			$("input#password").val($("input#password1").val());
		}
		if($("input#snumber").val().length==0 || $("input#snumber").val().length!=6 || isNaN($("input#snumber").val())){
			alert("birth Check!");
			$("input#snumber").val('');
			$("input#snumber").focus();
		}
		
		if($("input#tel").val().length==0 || $("input#tel").val().length!=11 || isNaN($("input#tel").val())){
			alert("tel Check!");
			$("input#tel").val('');
			$("input#tel").focus();
		}
		if($("input#email").val().length==0){
			alert("email Check!");
			$("input#email").val('');
			$("input#email").focus();
		}
		
	});
	
	$("a#signup").click(function(){
		$("form[role='form']").submit();
	});
	
});
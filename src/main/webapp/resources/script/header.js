$(document).ready (() => {
    $("#logo").click(e => {
        location.href="/";
    });

    $(".mypage").click(e => {
        location.href="mypage";
    });

    $("#login").click(e =>{
        location.href="login";
    });
    
    $(".reservation").click(e =>{
		location.href="rental_list";
	})
});
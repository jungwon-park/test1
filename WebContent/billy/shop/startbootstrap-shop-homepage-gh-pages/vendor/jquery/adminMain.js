$(function() {
	// total font
	$("*").css("font-family", "times new roman");
	$("input[name='btnCss']").css({
		'background-color' : 'black',
		'color' : 'white',
		'border' : '1px solid white',
		'font-size' : '0.7em'
	});

	$(".list-group-item").click(function() {
		if ($(this).text() == 'Total Publisher') {
			$("div#contents").load("totalPublisher.jsp");
		} else if ($(this).text() == 'Total Author') {
			$("div#contents").load("totalAuthor.jsp");
		} else if ($(this).text() == 'Add Book') {
			$("div#contents").load("addBook.jsp");
		} else if ($(this).text() == 'Add Publisher&Author') {
			$("div#contents").load("addAuthorPubl.jsp");
		} else if ($(this).text() == 'User List') {
			$("div#contents").load("userList.jsp");
		} else if ($(this).text() == 'Total Post') {
			$("div#contents").load("totalPost.jsp");
		} else if ($(this).text() == 'Total Book') {
			$("div#contents").load("totalBook.jsp");
		}
	});


	
}); // jQ load


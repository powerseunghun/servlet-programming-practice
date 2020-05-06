<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Output</title>
</head>
<body>
	책제목 : ${book.title }<br/>
	<!-- request -> session -> application 순서대로
	request.setAttribute라면
	request.getAttribute() -> (BookBean)request.getAttribute("book");
	session.setAttribute라면
	session.getAttribute() -->
	책저자 : ${book.author }<br/>
	출판사 : ${book.publisher }<br/>
</body>
</html>
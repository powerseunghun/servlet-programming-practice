<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id="", pwd="";
	if (request.getMethod().equals("POST")) {
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		if (id.isEmpty() || pwd.isEmpty()) {
			request.setAttribute("error", "ID 또는 비밀번호를 입력해주세요!");
			RequestDispatcher rd = request.getRequestDispatcher("logInOut.jsp");
			rd.forward(request, response);
			return;
		}
		
		if (session.isNew() || session.getAttribute("id") == null) {
			session.setAttribute("id", id);
			out.print("로그인 작업이 완료되었습니다.");
		}
		else {
			out.print("이미 로그인 상태입니다.");
		}
	}
	else if(request.getMethod().equals("GET")) {
		if (session != null && session.getAttribute("id") != null) {
			session.invalidate();
			out.print("로그아웃 작업이 완료되었습니다.");
		}
		else {
			out.print("현재 로그인 상태가 아닙니다.");
		}
	}
%>
<%
	RequestDispatcher rd = request.getRequestDispatcher("logInOut.jsp");
	rd.forward(request,response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	ID : <%=id %><br/>
	PWD : <%=pwd %><br/>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>
<% 
	//파라미터꺼내기 
	int id = Integer.parseInt(request.getParameter("id"));
	
	System.out.println(id); 
	
	//id의 데이터 가져오기 
	PhoneDao phoneDao = new PhoneDao();
	PersonVo personVo = phoneDao.getPerson(id);
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>전화번호부</h1>
		<h2>수정폼</h2>

		<p>수정화면입니다. 아래의 항목을 수정하고 "수정"버튼을 클릭하세요</p>
		<form action="./update.jsp" method="get">
		이름(name) <input type="text" name="" value="<%=personVo.getName() %>"> <br>
		핸드폰(hp) <input type="text" name="" value="<%=personVo.getHp()%>"> <br>
		회사(company) <input type="text" name="" value="<%=personVo.getCompany() %>"> <br>
		pk(personId) <input type="text" name="" value="<%=personVo.getPersonId()%>"> <br>
		<button>수정</button>
		</form>
</body>
</html>
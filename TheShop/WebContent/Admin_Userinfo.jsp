<%@page import="java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>안녕하세요</title>
</head>
<body>
	<center>
	<table>
			<tr>
				<td align="center" colspan="4"><td><a href="logout.do"><input type="button" value="Log out" style="height:30px; width: 80px;"></a>&nbsp;</td>
				<td><form action="Admin_ProductList.do" method="post">
						<input type="submit" value="제품 관리" style="height: 30px; width: 80px;">
					</form></td>
				<td><form action="Admin_CompList.do" method="post">
						<input type="submit" value="업체 관리"  style="height: 30px; width: 80px;">
					</form></td>

				<td><form action="report.do" method="post">
						<input type="submit" value="실적보고" style="height: 30px; width: 80px;">
					</form></td>
			</tr>
		</table>
		
		<table>
			<tr>
				<td align="center"></td>
			</tr>

			<tr>
				<td align="center"><h1>User List</h1></td>
			</tr>
			<tr>
				<td align="center">
					<table border="1">
						<tr>
							<th>User ID</th>
							<th>유저 이름</th>
							<th>주소</th>
							<th>전화 번호</th>
							<th>가입 날짜</th>
						</tr>
						<c:forEach items="${ALL_USER_LIST}" var="user">
							<tr>
								<td align="center">${user.userid}</td>
								<td align="left">${user.username}</td>
								<td align="right">${user.useradd}</td>
								<td align="right">${user.usertel}</td>
								<td align="right">${user.userdate}</td>
							</tr>
						</c:forEach>
					</table>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>
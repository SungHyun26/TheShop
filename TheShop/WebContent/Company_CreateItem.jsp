<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<form action="compnewitem.do" method="post">
		<table border="1">
			<tr>
				<td> 상품명 </td> <td> <input type="text" name="pname"> </td>
			</tr>
			<tr>
				<td> 상품수량 </td> <td> <input type="text" name="pstock"> </td>
			</tr>
			<tr>
				<td> 상품가격 </td> <td> <input type="text" name="pcost"> </td>
			</tr>
			<tr>
				<td> &nbsp; </td> <td> <input type="submit" value="상품등록"> </td>
			</tr>
		</table>
	</form>
</center>
</body>
</html>
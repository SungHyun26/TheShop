<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title >유저 정보 수정 페이지</title>

<script language="javascript">
    function changeState(){
    	alert("업체 정보가  변경 되었습니다.");
    	<%session.setAttribute("COMPANY_CHANGE_STATE", "DENY");%>
    }
</script>
</head>

<body>
<%
    		if(session.getAttribute("COMPANY_CHANGE_STATE")=="YES"){
    			out.println("<script type='text/javascript'> changeState(); </script>");
    		}				
 %>
<center>
<br /><br /><br /><br /><br /><br />
<table border = "0"> 
<form>
	
	<input type="image" src="http://localhost:8080/TeamProj/user.png"><br /><br />
	
	
	<font face="맑은고딕"><br />
	</font>
</form>
</table>

<form action="comp_modify.do" method="post">
	<!--  <td colspan="2" width="5"><font color="black" ><strong>
	ID<td><input type = "text" align="center" name = "userid" size = "10"></td><td>-->
	<table>
	<tr align="center">
		<td> 업체코드는 변경할 수 없습니다. </td>
	</tr>
	<tr>
		<td colspan="2" width="5"><font color="black" ><strong> CompanyCode</td>
		<td><input type = "text" align="center" name = "compcode" size = "10" value="${COMP_INFO.compcode}" readonly="readonly"></td>
	</tr>
	<tr>
		<td colspan="2" width="5"><font color="black"><strong> Password</td>
		<td><input type = "text" name = "comppw" size = "10" value = "${COMP_INFO.comppw}"></td>
	</tr>
	<tr>
		<td colspan="2" width="5"><font color="black"><strong> CompanyName </td>
		<td><input type = "text" name = "compname"  size = "10" value = "${COMP_INFO.compname}"></td>
	</tr>
	<tr>
		<td colspan="2" width="5"><font color="black"><strong>Address</td>
		<td><input type = "text" name = "compadd" size = "10" value = "${COMP_INFO.compadd}"></td>
	</tr>
	<tr>
		<td colspan="2" width="5"><font color="black"><strong>Tel</td>
		<td><input type = "text" name = "comptel"   size = "20" value = "${COMP_INFO.comptel}"> </td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value = "수정"></td>  <td colspan="2"><a href="company_productlist.do"> 돌아가기</a></td>  
	</tr>
</table>
</center>
</form>

</body>
</html>
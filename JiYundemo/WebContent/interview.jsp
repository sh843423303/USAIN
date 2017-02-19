<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<link href="jquery-easyui-1.5.1/themes/default/easyui.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
		function checkForm(form){
			if (form.name.value=="") {
			confirm("公司名字未填写，确认提交？");
				return false;
			}else if (form.it_time.value=="") {
				confirm("面试时间未填写，确认提交？")
				return false;
			}
			return true;
		}
	
	</script>
	<base href="<%=basePath%>">
<title>面试信息</title>
</head>
<body>
	<form action="interviewServlet?action=saveInterview"id="form1" method="post" onsubmit="checkForm(this)">
		<table>
			<tr>
				<td>公司</td><td><input type="text" name="company_name"> </td>
			</tr>
			<tr>
				<td>公司地址</td><td><input type="text" name="company_address"></td>
			</tr>
			<tr>
				<td>公司联系人</td><td><input type="text" name="company_contacts"></td>
			</tr>
				<tr>
				<td>面试人</td><td><input type="text" name="it_name"></td>
			</tr>
				<tr>
				<td>面试时间</td><td><input type="text" name="it_time"
						onfocus="WdatePicker({lang:'en'})" class="Wdate"
						/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="提交">
					<input type="reset" value="取消"><td>	
			</tr>
		</table>

	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>积云教育面试信息管理平台_用户登录</title>
		<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
			overflow:hidden;
		}
		.STYLE1 {
			font-size: 12px;
			color: #a1c8c6;
		}
		.STYLE4 {color: #FFFFFF; font-size: 12px; }
		-->
		</style>
	</head>
	<body>
	<form action="interviewServlet?action=login" method="post">
		<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr><td bgcolor="035551">&nbsp;</td></tr>
			<tr>
				<td height="311" background="img/login_03.gif">
					<table width="758" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr><td height="210" background="">&nbsp;</td></tr>
						<tr>
							<td height="101">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
		            					<td width="446" height="101" background="img/login_06.jpg">&nbsp;</td>
		            					<td width="156">
		            						<table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr>
							                		<td width="40%" height="22"><span class="STYLE4">用户类型</span></td>
							                		<td width="71" height="22">
										            <select name="select" style="width:100px; height:20px; border:solid 1px #035551; color:#000000">
										              	<option value="001">学生</option>
										              	<option value="002">讲师</option>
										            </select>
							                		</td>
							              		</tr>
												<tr>
							                		<td height="22"><span class="STYLE4">用户账号</span></td>
							                		<td width="71" height="22"><input type="text" name="username" style="width:100px; height:20px; border:solid 1px #035551; color:#000000"></td>
							              		</tr>
							              		<tr>
							                		<td height="22"><span class="STYLE4">用户密码</span></td>
							                		<td height="22"><input type="password" name="password" style="width:100px; height:22px; border:solid 1px #035551; color:#000000"></td>
							              		</tr>
							              		<tr>
							                		<td height="25">&nbsp;</td>
							                		<td height="25"><button type="submit" style="width:40px;height:25px" ><img src="img/dl.gif" width="37" height="19" border="0"><button type="reset" style="width:40px;height:25px"><img src="img/qx.gif" width="37" height="19"></button></td>
							                	</tr>
											</table>
										</td>
										<td width="156" background="img/login_09.gif">&nbsp;</td>
		          					</tr>
		        				</table>
		        			</td>
		      			</tr>
		    		</table>
		    	</td>
		  	</tr>
		  	<tr>
		    	<td bgcolor="1f7d78">&nbsp;</td>
		  	</tr>
		  	<tr>
		    	<td bgcolor="1f7d78"><div align="center"><span class="STYLE1">-- 北京积云教育2017--</span></div></td>
		  	</tr>
		</table>
		</form>
	</body>
</html>

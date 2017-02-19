<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	session.setAttribute("basePath", basePath);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>积云教育就业管理系统</title>

<link rel="stylesheet" id="themecss"
	href="resource/jquery-easyui-1.5.1/themes/default/easyui.css"
	type="text/css"></link>
<link rel="stylesheet" id="themecss" href="resource/css/ext.css"
	type="text/css"></link>
<script src="resource/jquery-easyui-1.5.1/jquery.min.js"></script>
<script src="resource/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>

</head>
<body class="easyui-layout">

	<div id="searchbar" data-options="region:'north'"
		style="margin: 0 auto;" border="false">
		<h2 class="h2-title">
			面试列表 <span class="s-poar"><a class="a-extend" href="#">收起</a></span>
		</h2>
		<div id="searchbox" class="head-seachbox">
			<div class="w-p99 marauto searchCont">
				<form class="form-search" action="doForm" method="post"
					id="queryForm" name="queryForm">
					<div class="fluidbox">
						<p class="p4 p-item">
							<label class="lab-item">面试时间:</label> <input type="text"
								class="txt" id="q_it_time" name="q_it_time" value="" />
						</p>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div data-options="region:'center'" border="false">
		<table id="dataGrid" class="easyui-datagrid"
			data-options="rownumbers:true
						,idField :'id'
						,singleSelect:true
						,autoRowHeight:false
						,fitColumns:true
						,toolbar:'#gridTools'
						,striped:true
						,pagination:true
						,pageSize:'20'
						,fit:true
    					,url:'products.json'
    					,method:'get'">
			<thead>
				<tr>
					<th field="id" hidden="hidden"></th>
					<th field="productid" width="120" align="center">面试时间</th>
					<th field="productname" width="120" align="center">面试地址</th>
				</tr>
			</thead>
		</table>

		<div id="gridTools">
			<a id="btn-search" href="javascript:void(0)"
				class="easyui-linkbutton" iconCls="icon-search" plain="true">查询</a>
		</div>
	</div>
</body>
</html>
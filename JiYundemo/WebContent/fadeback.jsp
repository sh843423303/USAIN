<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>面试反馈信息</title>
	<link rel="stylesheet" type="text/css" href="resource/jquery-easyui-1.5.1/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="resource/jquery-easyui-1.5.1/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="../demo.css">
	<script type="text/javascript" src="resource/jquery-easyui-1.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="resource/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
</head>
<body>
	<div style="margin:20px 0;"></div>
	<table class="easyui-datagrid" title="DataGrid Complex Toolbar" style="width:1000px;height:250px"
			data-options="rownumbers:true,singleSelect:true,url:'datagrid_data1.json',method:'post',toolbar:'#tb',footer:'#ft'">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:80">Item ID</th>
				<th data-options="field:'productid',width:100">Product</th>
				<th data-options="field:'listprice',width:80,align:'right'">List Price</th>
				<th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>
				<th data-options="field:'attr1',width:240">Attribute</th>
				<th data-options="field:'status',width:60,align:'center'">Status</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding:2px 5px;">
		时间: <input class="easyui-datebox" style="width:110px">
		到: <input class="easyui-datebox" style="width:110px">
		姓名: <input class="easyui-datebox" style="width:110px">
		<a href="#" class="easyui-linkbutton" iconCls="icon-search">Search</a>
	</div>
	<div id="ft" style="padding:2px 5px;">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true">添加</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true">编辑</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-save" plain="true">保存</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-cut" plain="true">剪切</a>
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true">移除</a>
	</div>
</body>
</html>
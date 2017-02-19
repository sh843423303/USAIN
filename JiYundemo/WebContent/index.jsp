<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	session.setAttribute("basePath", basePath);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>积云教育就业管理系统</title>

<link rel="stylesheet" id="themecss"
	href="resource/jquery-easyui-1.5.1/themes/default/easyui.css" type="text/css"></link>
<link rel="stylesheet" id="themecss"
	href="resource/css/ext.css" type="text/css"></link>
<script src="resource/jquery-easyui-1.5.1/jquery.min.js"></script>
<script src="resource/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
<style>
.ra_div a {
	display: block;
	border-bottom: dotted 1px #dedede;
	padding-bottom: 3px;
	text-decoration: none;
	color: #000;
	font-weight: normal;
	padding-top: 5px;
	padding-left: 15px;
}
</style>
</head>
<body class="easyui-layout" style="overflow-y:scroll;">
	<script type="text/javascript">
		function addTab(name, url) {
			var t = $('#tab');
			if (t.tabs('exists', name)) {
				t.tabs('select', name);
			} else {
				var content = '<iframe scrolling="auto" frameborder="0" src="'
						+ url + '" style="width:100%; height:100%"></iframe>';
				t.tabs('add', {
					title : name,
					selected : true,
					closable : true,
					content : content
				});
			}
		}

		$(function() {

			var $box = $('#box'), slideInterval = 4000;

// 			//首次默认
// 			var first = $("#aa > .panel > .ra_div >a:first");
// 			$(first).addClass('s_hover');
// 			eval(first.attr('onclick'));

			$(".panel a").click(function() {
				$(this).addClass('s_hover');
				$(this).siblings().removeClass('s_hover');
			});

			$('#tab')
					.tabs(
							{
								tools : [
										{
											text : '刷新',
											iconCls : 'icon-reload',
											handler : function() {
												var currTab = $('#tab').tabs(
														'getSelected');
												var url = $(
														currTab
																.panel('options').content)
														.attr('src');
												if (url) {
													var content = '<iframe scrolling="auto" frameborder="0" src="'
															+ url
															+ '" style="width:100%; height:100%"></iframe>';
													$('#tab').tabs('update', {
														tab : currTab,
														options : {
															content : content
														}
													});
												}
											}
										},
										{
											text : '关闭',
											iconCls : 'icon-cross',
											handler : function() {
												var tab = $('#tab').tabs(
														'getSelected');
												var index = $('#tab').tabs(
														'getTabIndex', tab);
												$('#tab').tabs('close', index);
											}
										} ]
							});

			$(".tabs-header").bind('contextmenu', function(e) {
				e.preventDefault();
				$('#rcmenu').menu('show', {
					left : e.pageX,
					top : e.pageY
				});
			});

			$("#closecur").bind("click", function() {
				var tab = $('#tab').tabs('getSelected');
				var index = $('#tab').tabs('getTabIndex', tab);
				$('#tab').tabs('close', index);
			});

			$("#closeall").bind("click", function() {
				var tablist = $('#tab').tabs('tabs');
				for (var i = tablist.length - 1; i >= 0; i--) {
					$('#tab').tabs('close', i);
				}
			});

			$("#closeother").bind("click", function() {
				var tablist = $('#tab').tabs('tabs');
				var tab = $('#tab').tabs('getSelected');
				var index = $('#tab').tabs('getTabIndex', tab);
				for (var i = tablist.length - 1; i > index; i--) {
					$('#tab').tabs('close', i);
				}
				var num = index - 1;
				for (var i = num; i >= 0; i--) {
					$('#tab').tabs('close', 0);
				}
			});

			$("#closeright").bind("click", function() {
				var tablist = $('#tab').tabs('tabs');
				var tab = $('#tab').tabs('getSelected');
				var index = $('#tab').tabs('getTabIndex', tab);
				for (var i = tablist.length - 1; i > index; i--) {
					$('#tab').tabs('close', i);
				}
			});

			$("#closeleft").bind("click", function() {
				var tab = $('#tab').tabs('getSelected');
				var index = $('#tab').tabs('getTabIndex', tab);
				var num = index - 1;
				for (var i = 0; i <= num; i++) {
					$('#tab').tabs('close', 0);
				}
			});

			$("#refresh")
					.click(
							function() {
								var currTab = $('#tab').tabs('getSelected');
								var url = $(currTab.panel('options').content)
										.attr('src');
								var content = '<iframe scrolling="auto" frameborder="0" src="'
										+ url
										+ '" style="width:100%; height:100%"></iframe>';
								$('#tab').tabs('update', {
									tab : currTab,
									options : {
										content : content
									}
								});
							});

			$("#refreshAll")
					.click(
							function() {
								var tablist = $('#tab').tabs('tabs');
								for (var i = tablist.length - 1; i >= 0; i--) {
									var currTab = tablist[i];
									var url = $(
											currTab.panel('options').content)
											.attr('src');
									var content = '<iframe scrolling="auto" frameborder="0" src="'
											+ url
											+ '" style="width:100%; height:100%"></iframe>';
									$('#tab').tabs('update', {
										tab : currTab,
										options : {
											content : content
										}
									});
								}
							});

		});

		function changeTheme(t) {
			var href = "/resources/jslib/easyui/themes/" + t
					+ "/easyui.css";
			$("#themecss").attr("href", href);
		}
	</script>

	<div data-options="region:'north',split:false" class="gradient"
		style="background-color: #dfe8f7; padding: 10px 0; height: 50px;">
		<h2
			style="font-size: 24px; font-family: '微软雅黑'; text-indent: 7px; margin: 0px; letter-spacing: 2px; font-weight: normal; line-height: 22px;">
			积云教育就业管理系统</h2>
		<span
			style="float: right; height: 16px; margin-top: -17px; margin-right: 55px;">欢迎用户：${userEntity.user_name }${userEntity.role_name }</span>
		<a href="/exit"
			style="float: right; height: 16px; margin-top: -17px; padding-right: 22px;"
			title="退出系统"><img src="/resources/images/log-out.png"
			border="0" /></a>

	</div>

	<div data-options="region:'west',title:'系统菜单',split:false"
		style="width: 150px;">


		<div id="aa" class="easyui-accordion" data-options="fit:true"
			style="height: auto;">
			<div title="我有面试" class="ra_div">
				<a href="javascript:void(0);"
					onclick="addTab('面试信息', 'interview.jsp')">面试信息</a>
				<a href="javascript:void(0);"
					onclick="addTab('面试反馈', 'interviewServlet?action=selectForFadeback')">面试反馈</a>
			</div>
			<div title="题库管理" class="ra_div">
				<a id='20' href="javascript:void(0);"
					onclick="addTab('面试师查询', '/selectFor')">面试题查询</a>
			</div>
		</div>

	</div>

	<div data-options="region:'center',split:false">
		<div id="tab" class="easyui-tabs" data-options="fit:true,border:false">
			<div class="tabs-header" title="首页"></div>

		</div>
	</div>

	<div id="rcmenu" class="easyui-menu" style="">
		<div id="refresh">刷新</div>
		<div id="refreshAll">刷新全部</div>
		<div class="menu-sep"></div>
		<div id="closecur">关闭</div>
		<div id="closeall">关闭全部</div>
		<div id="closeother">关闭其他</div>
		<div class="menu-sep"></div>
		<div id="closeright">关闭右侧标签页</div>
		<div id="closeleft">关闭左侧标签页</div>
	</div>

</body>
</html>
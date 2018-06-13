<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>
<html>
<head>
<base  href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/DRManager/">
	<meta charset="UTF-8">
	<title>DR商城后台管理系统-首页</title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/canvas.js"></script>
</head>
<body>
<canvas id="c" style="position: absolute;z-index: -100;margin: 0px;width: 98%"></canvas>
	<div class="easyui-layout" style="width:100%;height:650px;">
		<div data-options="region:'north'" style="height:80px;padding-left: 20px;">
			<p>
			<span style="font-weight:bold; font-size: 30px;font-family:'宋体';margin-right: 50px;text-shadow: -1px -1px 10px orange;">DR商城后台管理系统</span>
			<img src="${sessionScope.user.image}" style="width: 20px;height: 20px;border:1px solid gray;border-radius: 10px;position: relative;top: 5px;margin-right: 10px;"/>欢迎您：${sessionScope.user.shouJiHao}！<a href="admin/UserAction!logoff.action">安全退出</a>
			</p>
		</div>
		<div data-options="region:'south',split:true" style="height:50px;padding-top: 5px;padding-left: 20px;">
			<a href="http://localhost:8080/DRManager">系统说明</a>
			<a href="http://localhost:8080/DRManager">员工守则</a>
			<a href="http://localhost:8080/DRManager">公司信息</a>
			<a href="http://localhost:8080/DRManager">前台网站</a>
		</div>
		<div data-options="region:'east',split:true" title="公告" style="width:150px;"></div>
		<div data-options="region:'west',split:true" title="菜单栏" style="width:200px;">
		<ul class="easyui-tree" id="menutree">
			<li>
				<span>所有功能</span>
				<ul>
					<li data-options="state:'closed'">
						<span>用户管理</span>
						<ul>
							<li>
								<span>所有用户</span>
							</li>
							<li>
								<span>添加用户</span>
							</li>
							<li>
								<span>删除用户</span>
							</li>
							<li>
								<span>修改用户</span>
							</li>
						</ul>
					</li>
					<li  data-options="state:'closed'">
						<span>商品管理</span>
						<ul>
							<li>所有商品</li>
							<li>添加商品</li>
							<li>修改商品</li>
							<li>删除商品</li>
						</ul>
					</li>
					<li>
						<span>商品推广</span>
						<ul>
							<li>
								<span>所有推送</span>
							</li>
							<li>
								<span>添加推送</span>
							</li>
							<li>
								<span>修改推送</span>
							</li>
							<li>
								<span>删除推送</span>
							</li>
						</ul>
					</li>
					<li  data-options="state:'closed'">
						<span>商城活动</span>
						<ul>
							<li>所有活动</li>
							<li>添加活动</li>
							<li>修改活动</li>
							<li>删除活动</li>
						</ul>
					</li>
					<li data-options="state:'closed'">
						<span>订单管理</span>
						<ul>
							<li>
								<span>异常订单</span>
							</li>
							<li>
								<span>所有订单</span>
							</li>
							<li>
								<span>处理订单</span>
							</li>
							<li>
								<span>搜索订单</span>
							</li>
						</ul>
					</li>
					<li data-options="state:'closed'">
						<span>图片管理</span>
						<ul>
							<li>
								<span>所有图片</span>
							</li>
							<li>
								<span>添加图片</span>
							</li>
							<li>
								<span>删除图片</span>
							</li>
							<li>
								<span>修改图片</span>
							</li>
						</ul>
					</li>
					<li data-options="state:'closed'">
						<span>品牌管理</span>
						<ul>
							<li>
								<span>所有品牌</span>
							</li>
							<li>
								<span>添加品牌</span>
							</li>
							<li>
								<span>删除品牌</span>
							</li>
							<li>
								<span>修改品牌</span>
							</li>
						</ul>
					</li>
					<li data-options="state:'closed'">
						<span>支付管理</span>
						<ul>
							<li>
								<span>所有支付</span>
							</li>
							<li>
								<span>添加支付</span>
							</li>
							<li>
								<span>删除支付</span>
							</li>
							<li>
								<span>修改支付</span>
							</li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
		
		
		</div>
		<div data-options="region:'center',iconCls:' ui-icon-comment'">
			<div id="main" class="easyui-tabs" style="width:100%;height:100%">
				<div title="销售统计" style="padding:10px"  data-options="iconCls:'icon-large-chart'" >
					<div id="chartContainer" style="height: 100%; width: 100%;"></div>
				</div>
				<div title="我的消息" style="padding:10px"  data-options="iconCls:'icon-large-smartart',closable:true" >
					<table class="easyui-datagrid"
						data-options="border:false,singleSelect:true,fit:true,fitColumns:true">
						<thead>
							<tr>
								<th data-options="field:'itemid'" width="80">Item ID</th>
								<th data-options="field:'productid'" width="100">Product ID</th>
								<th data-options="field:'listprice',align:'right'" width="80">List Price</th>
								<th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
								<th data-options="field:'attr1'" width="150">Attribute</th>
								<th data-options="field:'status',align:'center'" width="60">Status</th>
							</tr>
						</thead>
					</table>
				</div>
				<div title="系统通知" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
					<ul class="easyui-datalist" title="公司消息" lines="true" style="width:100%;height:100%">
						<li value="AL">Alabama</li>
						<li value="AK">Alaska</li>
						<li value="AZ">Arizona</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function(){
			
			$('#menutree').tree({
				onClick: function(node){
					
					if(node.text=='所有用户'){
						addPanel(node.text,'allUsers.jsp');
					}else if(node.text=='所有商品'){
						addPanel(node.text,'allCars.jsp');
					}else if(node.text=='所有推送'){
						addPanel(node.text,'allExtends.jsp');
					}else if(node.text=='添加推送'){
						addPanel(node.text,'addExtends.jsp');
					}
				}
			});
		})
		
	</script>
	
	<!-- 添加信选项卡的js -->
	<script type="text/javascript">
		var index = 2;
		function addPanel(t,url){
			index++;
			
			if ($('#main').tabs('exists', t)){
				$('#main').tabs('select', t);
			} else {
				var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
				$('#main').tabs('add',{
					title:t,
					content:content,
					closable:true,
					iconCls:'icon-man'
				});
			}
		}
		function removePanel(){
			var tab = $('#main').tabs('getSelected');
			if (tab){
				var index = $('#main').tabs('getTabIndex', tab);
				$('#main').tabs('close', index);
			}
		}
	</script>
	
	<!--  tree菜单的js -->
<script type="text/javascript">
		(function($){
			function getParentMenu(rootMenu, menu){
				return findParent(rootMenu);

				function findParent(pmenu){
					var p = undefined;
					$(pmenu).find('.menu-item').each(function(){
						if (!p && this.submenu){
							if ($(this.submenu)[0] == $(menu)[0]){
								p = pmenu;
							} else {
								p = findParent(this.submenu);
							}
						}
					});
					return p;
				}
			}
			function getParentItem(pmenu, menu){
				var item = undefined;
				$(pmenu).find('.menu-item').each(function(){
					if ($(this.submenu)[0] == $(menu)[0]){
						item = $(this);
						return false;
					}
				});
				return item;
			}

			$.extend($.fn.menu.methods, {
				enableNav: function(jq, rootMenu){
					var firstItemSelector = '.menu-item:not(.menu-item-disabled):first';
					var lastItemSelector = '.menu-item:not(.menu-item-disabled):last';
					return jq.each(function(){
						var menu = $(this);
						rootMenu = $(rootMenu).length ? $(rootMenu) : menu;
						menu.attr('tabindex','0').css('outline','none').unbind('.menunav').bind('keydown.menunav', function(e){
							var item = $(this).find('.menu-active');
							switch(e.keyCode){
								case 13:  // enter
									item.trigger('click');
									break;
								case 27:  // esc
									rootMenu.find('.menu-active').trigger('mouseleave');
									break;
								case 38:  // up
									var prev = item.length ? item.prevAll(firstItemSelector) : menu.find(lastItemSelector);
									prev.trigger('mouseenter');
									return false;
								case 40:  // down
									var next = item.length ? item.nextAll(firstItemSelector) : menu.find(firstItemSelector);
									next.trigger('mouseenter');
									return false;
								case 37:  // left
									var pmenu = getParentMenu(rootMenu, menu);
									if (pmenu){
										item.trigger('mouseleave');
										var pitem = getParentItem(pmenu, menu);
										if (pitem){
											pitem.trigger('mouseenter');
										}
										pmenu.focus();
									}
									return false;
								case 39:  // right
									if (item.length && item[0].submenu){
										$(item[0].submenu).menu('enableNav', rootMenu).find(firstItemSelector).trigger('mouseenter');
										$(item[0].submenu).focus();
									}
									return false;
							}
						});
					});
				}
			});
		})(jQuery);

		$(function(){
			$('#mm-nav').menu().menu('enableNav');
			$(document).keydown(function(e){
				if (e.altKey && e.keyCode == 87){
					$('#mm-nav').focus();
				}
			})
		})
	</script>
	
	<!-- jquery动态背景效果库js -->
	
		
		<!-- 生成图表的js -->
		<script>
			window.onload = function () {
			
			var options = {
				title: {
					text: "商品销售统计图"
				},
				subtitles: [{
					text: "As of November, 2017"
				}],
				animationEnabled: true,
				data: [{
					type: "pie",
					startAngle: 40,
					toolTipContent: "<b>{label}</b>: {y}%",
					showInLegend: "true",
					legendText: "{label}",
					indexLabelFontSize: 16,
					indexLabel: "{label} - {y}%",
					dataPoints: [
						{ y: 48.36, label: "Windows 7" },
						{ y: 26.85, label: "Windows 10" },
						{ y: 1.49, label: "Windows 8" },
						{ y: 6.98, label: "Windows XP" },
						{ y: 6.53, label: "Windows 8.1" },
						{ y: 2.45, label: "Linux" },
						{ y: 3.32, label: "Mac OS X 10.12" },
						{ y: 4.03, label: "Others" }
					]
				}]
			};
			$("#chartContainer").CanvasJSChart(options);
			
			}
		</script>

</body>
</html>
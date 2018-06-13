<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<table id="ex" title="未推送的商品" style="width:100%;height:470px;margin: 0px;"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'admin/DrAction!listExtensionDrsByPage.action',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'drId',width:80,align:'left'">编号</th>
				<th data-options="field:'DRFirstPicture',width:120,align:'left'">图片</th>
				<th data-options="field:'drBrand',width:120,align:'left'">品牌</th>
				<th data-options="field:'drSeries',width:120,align:'left'">系列</th>
				<th data-options="field:'drWeight',width:100,align:'left'">单钻重量</th>
				<th data-options="field:'drColor',width:60,align:'left'">颜色</th>
				<th data-options="field:'drPrice',width:100,align:'left'">价格</th>
				<th data-options="field:'drSales',width:80,align:'left'">销量</th>
			</tr>
		</thead>
	</table>
	<!-- 添加表格的事件 -->
	<script type="text/javascript">
		$(document).ready(function(){
			$('#ex').datagrid({
				onClickCell: function(index,field,value){
					if(field=='drfirstpicture'){
						imageDetail(value);
					}
				}
			});
		})
	</script>






</body>
</html>
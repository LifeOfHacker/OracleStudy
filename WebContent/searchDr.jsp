<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<base  href="${pageContext.request.scheme }://${pageContext.request.serverName}:${pageContext.request.serverPort}/DRManager/">
	<meta charset="UTF-8">
	<title>Basic DataGrid - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
</head>
<body style="margin: 0px;padding: 0px;">
<div class="easyui-panel" style="width:100%;max-width:100%;margin: 0px;padding: 0px;">
		<form id="ff" action="DrAction!searchDr.action" class="easyui-form" method="post" data-options="novalidate:true">
					品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌:<input class="easyui-textbox" name="searchpinpai" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:<input class="easyui-textbox" name="searchjiage" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					最小数量:<input class="easyui-textbox" name="searchmin" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					最大数量:<input class="easyui-textbox" name="searchmax" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					纯&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;度:<input class="easyui-textbox" name="searchchundu" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					
					<!-- 商&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;品:<input class="easyui-textbox" name="shangpingming" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					商品数量:<input class="easyui-textbox" name="shuliang" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					商品价格:<input class="easyui-textbox" name="jiage" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					尺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寸:<input class="easyui-textbox" name="chicun" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					纯&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;度:<input class="easyui-textbox" name="chundu" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					颜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色:<input class="easyui-textbox" name="yanse" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					切&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工:<input class="easyui-textbox" name="qiegong" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					材&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质:<input class="easyui-textbox" name="caizhi" data-options="required:false" style="width: 120px;height: 20px;"><br/> -->
			
		</form>
		<div style="text-align:center;">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:60px">查找</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:60px">清空</a>
		</div>
	</div>
	<script>
		function submitForm(){
			$('#ff').submit();
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>



</body>
</html>
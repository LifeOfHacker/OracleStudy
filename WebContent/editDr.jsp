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
		<form id="ff" class="easyui-form" action="DrAction!updateDr.action" method="post" data-options="novalidate:true">
			<div class="easyui-accordion" style="width:95%;height:300px;margin: 0px;padding: 0px;">
				<div title="基本信息" data-options="iconCls:'icon-large-smartart'" style="overflow:auto;padding: 5px;">
					<table></table>
					编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:<input class="easyui-textbox" name="bianhao" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌:<input class="easyui-textbox" name="pinpai" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					系&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;列:<input class="easyui-textbox" name="xilie" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					商&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;品:<input class="easyui-textbox" name="shangpingming" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					商品数量:<input class="easyui-textbox" name="shuliang" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					商品价格:<input class="easyui-textbox" name="jiage" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					尺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寸:<input class="easyui-textbox" name="chicun" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					纯&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;度:<input class="easyui-textbox" name="chundu" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					颜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色:<input class="easyui-textbox" name="yanse" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					切&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工:<input class="easyui-textbox" name="qiegong" data-options="required:false" style="width: 120px;height: 20px;"><br/>
					材&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质:<input class="easyui-textbox" name="caizhi" data-options="required:false" style="width: 120px;height: 20px;"><br/>
				
				</div>
				<div title="图片" data-options="iconCls:'icon-large-picture'" style="overflow: hidden;">
					<img src="images/dr_temp/1.jpg" style="width: 130px;height: 130px"/>
					<input type="file"  name="headImage" value="修改头像"/>
				</div>
				<!-- <div title="车辆视频" data-options="iconCls:'icon-large-clipart'" style="overflow: hidden;">
					<video src="videos/1.mp4"  style="width: 100%;height:100%" controls="controls" preload="auto"></video>
				</div> -->
				<div title="介绍" data-options="iconCls:'icon-large-shapes'" style="overflow: hidden;padding: 5px;">
					<input class="easyui-textbox" labelPosition="top" multiline="true"  style="width:100%;height:100%;margin: 5px;">
				</div>
			</div>
		</form>
		<div style="text-align:center;">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:60px">提交</a>
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
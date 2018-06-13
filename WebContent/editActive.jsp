<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
</head>
<body  style="margin: 0px;padding: 0px;">

<div class="easyui-panel" style="width:100%;max-width:100%;margin: 0px;padding: 0px;">
		<form id="ff" class="easyui-form" method="post" data-options="novalidate:true">
			<div class="easyui-accordion" style="width:100%;height:300px;margin: 0px;padding: 0px;">
				<div title="基本信息" data-options="iconCls:'icon-large-smartart'" style="overflow:auto;padding: 5px;">
					<table></table>
					<s:iterator value="act" id="a">
					标题:<input class="easyui-textbox" name="active_title" data-options="required:true" style="width: 550px;height: 50px;position: relative;left:5px"></br></br>	
					开始时间:<input class="easyui-textbox" name="active_begintime" data-options="required:true" style="width: 200px;height: 30px;">&nbsp;&nbsp;&nbsp;&nbsp;
					结束时间:<input class="easyui-textbox" name="active_finishtime" data-options="required:true" style="width: 200px;height: 30px;"></br></br>					
					参与人数:<input class="easyui-textbox" name="active_people" data-options="required:true" style="width: 200px;height: 30px;"><br/>
					</s:iterator>
				</div>
				<div title="活动图片" data-options="iconCls:'icon-large-picture'" style="overflow: hidden;">
					<input type="file" name="active_img">
				</div>
	
				<div title="活动介绍" data-options="iconCls:'icon-large-shapes'" style="overflow: hidden;padding: 5px;">
					<input class="easyui-textbox" name="active_des" labelPosition="top" multiline="true"  style="width:100%;height:100%;margin: 5px;">
				</div>
			</div>
		</form>
		<div style="text-align:center;">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="width:60px">添加</a>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Basic DataGrid - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>

</head>
<body style="margin: 0px;padding: 5px;">
	<table id="dg" title="用户列表" style="width:100%;height:400px;margin: 0px;"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'ActiveAction!SearchActive.action',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'active_id',width:60,align:'left'">编号</th>
				<th data-options="field:'active_title',width:150,align:'left'">标题</th>
				<th data-options="field:'active_begintime',width:150,align:'left'">开始时间</th>
				<th data-options="field:'active_finishtime',width:150,align:'left'">结束时间</th>
				<th data-options="field:'active_img',width:110,align:'left'">图片</th>
				<th data-options="field:'active_des',width:180,align:'left'">描述</th>
				<th data-options="field:'active_people',width:80,align:'left'">参与人数</th>
			</tr>
		</thead>
		<s:iterator value="act" id="a">
		<tr>
			<td><s:property value="#a.active_id"/></td>
			<td><s:property value="#a.active_title"/></td>
			<td><s:property value="#a.active_begintime"/></td>
			<td><s:property value="#a.active_finishtime"/></td>
			<td><img src='<s:property value="#a.active_img"/>' style="width: 100px;height: 20px"></td>
			<td><s:property value="#a.active_des"/></td>
			<td><s:property value="#a.active_people"/></td>
		</tr>
		</s:iterator>
	</table>
	<!-- 添加表格的事件-->
	<script type="text/javascript">
		$(document).ready(function(){
			$('#dg').datagrid({
				onClickCell: function(index,field,value){
					if(field=='active_title'||field=='active_img'||field=='active_des'){
						imageDetail(value);
					}else if(field=='shipin'){
						value=value.replace("/>","controls='controls' />");
						imageDetail(value);
					}
				}
			});
			
			$('#w').window('close')
			
			
			$(function(){
				var pager = $('#dg').datagrid().datagrid('getPager');	// get the pager of datagrid
				pager.pagination({
					buttons:[{
						iconCls:'icon-search',
						handler:function(){
							alert('search');
						}
					},{
						iconCls:'icon-edit',
						handler:function(){
							$("#w").panel({'title':'编辑活动信息','width':700,'height':400});
							$("#w").html('<iframe scrolling="auto" frameborder="0"  src="editActive.jsp" style="width:100%;height:100%;"></iframe>');
							$("#w").window("open");
						}
					},{
						iconCls:'icon-remove',
						handler:function(){
							var n=$("#dg").datagrid('getSelected');
							var i=$('#dg').datagrid('getRowIndex', $("#dg").datagrid('getSelected'));
							if(n==null){
								$.messager.alert('温馨提示','必须选中要删除的行才能删除!','error');
							}else
							{
								$.messager.confirm('确认信息', '确认删除编号为:'+n.active_id+'的活动信息吗?', function(r){
									if (r){
										$.get("ActiveAction!DeleteActiveInfo.action?active_id="+n.active_id,function(data){
												var noticeMessage='删除失败!';
												if(data==true){
													noticeMessage='删除成功!'
													$("#dg").datagrid('deleteRow',i)
												    $('#t1').datagrid('reload');  
													//alert(noticeMessage);
												}
												$.messager.show({
													title:'操作提示',
													msg:noticeMessage,
													timeout:2000,
													showType:'slide'
												});
												
												
										})
									}
								});

							}
						}
					},{
						iconCls:'icon-add',
						handler:function(){
							$("#w").panel({'title':'添加活动信息','width':700,'height':400});
							$("#w").html('<iframe scrolling="auto" frameborder="0"  src="addActive.jsp" style="width:100%;height:100%;"></iframe>');
							$("#w").window("open");
						}
					}]
				});			
			})
			
			

		})
		
		function imageDetail(src){
			src=src.replace("20px","100%");
			src=src.replace("100px","100%");
			$("#w").html(src);
			$('#w').window('open');
		}

	</script>
	<!-- 用来显示照片详情的window -->
	<div id="w" class="easyui-window" title="详情" data-options="iconCls:'icon-large-picture',modal:true,minimizable:false" style="width:600px;height:400px;padding:10px;">
	</div>


</body>
</html>
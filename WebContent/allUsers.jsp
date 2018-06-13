<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'admin/UserAction!listUserByPage.action',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'userid',width:80,align:'center'">用户编号</th>
				<th data-options="field:'ShouJiHao',width:120,align:'center'">手机号</th>
				<th data-options="field:'Password',width:100,align:'center'">密码</th>
				<th data-options="field:'YouXiang',width:100,align:'center'">邮箱</th>
				<th data-options="field:'NiCheng',width:120,align:'center'">昵称</th>
				<th data-options="field:'ZhenShiXingMing',width:100,align:'center'">真实姓名</th>
				<th data-options="field:'XingBie',width:40,align:'center'">性别</th>
				<th data-options="field:'birth',width:100,align:'center'">出生日期</th>
				<th data-options="field:'diqu',width:180,align:'center'">地区</th>
				<th data-options="field:'XiangXiDiZhi',width:100,align:'center'">详细地址</th>
				<th data-options="field:'YouBian',width:100,align:'center'">邮编</th>
				<th data-options="field:'image',width:100,align:'center'">头像</th>
				<th data-options="field:'ZuoJi',width:100,align:'center'">座机</th>
			</tr>
		</thead>
	</table>
	<script type="text/javascript">
	$(document).ready(function(){
			$('#w').window('close')
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
						
						var n=$("#dg").datagrid('getSelected');
						var i=$('#dg').datagrid('getRowIndex', $("#dg").datagrid('getSelected'));
						if(n==null){
							$.messager.alert('温馨提示','必须选中要修改的行才能修改!','error');
						}else{
							$.messager.confirm('确认信息', '确认修改编号为:'+n.userid+'的信息吗?', function(r){
								if (r){
									$.get("admin/UserAction!searchUserInfoById.action?userid="+n.userid)
									$("#w").panel({'title':'更新用户','width':700,'height':400});
									$("#w").html('<iframe scrolling="auto" frameborder="0"  src="updateUser.jsp" style="width:100%;height:100%;"></iframe>');
									$("#w").window("open");
								}
							});							
						}
					}
				},{
					iconCls:'icon-cancel',
					handler:function(){
						var n=$("#dg").datagrid('getSelected');
						alert(n.userid);
						if(n==null){
							$.messager.alert('温馨提示','请选中要删除的用户!','error');
						}else{
							$.messager.confirm('确认信息', '确认删除编号为:'+n.userid+'的用户信息吗?', function(r){
								if (r){
									$.get("admin/UserAction!deleteUserInfoById.action?userid="+n.userid,function(data){
											var noticeMessage=data;
											if(data==true){
												noticeMessage='删除成功!'
												$("#dg").datagrid('deleteRow',i)
											    //$('#t1').datagrid('reload');
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
						$("#w").panel({'title':'添加用户','width':700,'height':400});
						$("#w").html('<iframe scrolling="auto" frameborder="0"  src="addUser.jsp" style="width:100%;height:100%;"></iframe>');
						$("#w").window("open");
					}
				
				}]
			
			});			
		})
	</script>
<!-- 用来显示照片详情的window -->
	<div id="w" class="easyui-window" title="详情" data-options="iconCls:'icon-large-picture',modal:true,minimizable:false" style="width:600px;height:400px;padding:10px;">
	</div>

</body>
</html>
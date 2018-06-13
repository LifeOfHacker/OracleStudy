<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	
</head>
<body style="margin: 0px;padding: 5px;">
	<table id="dg" title="用户列表" style="width:100%;height:400px;margin: 0px;"
			data-options="rownumbers:true,singleSelect:true,pagination:true,url:'DrAction!listDrs.action',method:'get'">
		<thead>
			<tr>
				<th data-options="field:'Drid',width:80,align:'left'">编号</th>
				<th data-options="field:'pinpai',width:120,align:'left'">品牌</th>
				<th data-options="field:'xilie',width:120,align:'left'">系列</th>
				<th data-options="field:'shuliang',width:120,align:'left'">商品数量</th>
				<th data-options="field:'xiaoliang',width:120,align:'left'">销量</th>
				<th data-options="field:'jiage',width:120,align:'left'">商品价格</th>
				<th data-options="field:'chicun',width:120,align:'left'">尺寸</th>
				<th data-options="field:'chundu',width:120,align:'left'">纯净度</th>
				<th data-options="field:'yanse',width:120,align:'left'">颜色</th>
				<th data-options="field:'qiegong',width:120,align:'left'">切工</th>
				<th data-options="field:'caizhi',width:120,align:'left'">材质</th>
				<th data-options="field:'image',width:120,align:'left'">首图</th>
				<th data-options="field:'miaoshu',width:120,align:'left'">描述</th>
				<th data-options="field:'tuiguang',width:120,align:'left'">推广</th>
			</tr>
		</thead>
		 <%-- <s:iterator  value="drs" id="d">
			<tr>
				<td><s:property value="#d.drId"/></td>
				<td><s:property value="#d.drBrand"/></td>
				<td><s:property value="#d.drSeries"/></td>
				<td><s:property value="#d.drPrice"/></td>
				<td><s:property value="#d.drNumber"/></td>
				<td><s:property value="#d.drPrice"/></td>
				<td><s:property value="#d.drSize"/></td>
				<td><s:property value="#d.drSales"/></td>
				<td><s:property value="#d.drColor"/></td>
				<td><s:property value="#d.drCutting"/></td>
				<td><s:property value="#d.drMaterial"/></td>
				<td><img src='<s:property value="#d.DRFirstPicture"/>' style="width: 20px;height: 20px;border:1px solid gray;border-radius: 10px;position: relative;"/></td>
				<td><s:property value="#d.DRDescription"/></td>
				<td><s:property value="#d.DRExtension"/></td>
			</tr>
		</s:iterator>  --%>
	</table>
	<!-- 添加表格的事件-->
	<script type="text/javascript">
		$(document).ready(function(){
			
			$('#dg').datagrid({
				onClickCell: function(index,field,value){
					if(field=='image' || field=='miaoshu'){
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
							$("#w").panel({'title':'查询信息','width':400,'height':400});
							$("#w").html('<iframe scrolling="auto" frameborder="0"  src="searchDr.jsp" style="width:100%;height:100%;"></iframe>');
							$("#w").window("open");
						}
					},{
						iconCls:'icon-edit',
						handler:function(){
							var n=$("#dg").datagrid('getSelected');
							var i=$('#dg').datagrid('getRowIndex', $("#dg").datagrid('getSelected'));
							if(n==null){
								$.messager.alert('温馨提示','必须选中要修改的行才能修改!','error');
							}else{
								$.messager.confirm('确认信息', '确认修改编号为:'+n.Drid+'的信息吗?', function(r){
									if (r){
										//$.get("DrAction!updateDr.action?drid="+n.Drid,function(data){});
										$("#w").panel({'title':'修改信息','width':400,'height':400});
										$("#w").html('<form id="fff" class="easyui-form" action="DrAction!updateDr.action" method="post" data-options="novalidate:true"><table></table>编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:<input value="'+n.Drid+'" class="easyui-textbox" name="bianhao" data-options="required:false" style="width: 120px;height: 20px;"><br/>	品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌:<input value="'+n.pinpai+'" class="easyui-textbox" name="pinpai" data-options="required:false" style="width: 120px;height: 20px;"><br/>	系&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;列:<input value="'+n.xilie+'" class="easyui-textbox" name="xilie" data-options="required:false" style="width: 120px;height: 20px;"><br/> 商品数量:<input value="'+n.shuliang+'" class="easyui-textbox" name="shuliang" data-options="required:false" style="width: 120px;height: 20px;"><br/>	商品价格:<input value="'+n.jiage+'" class="easyui-textbox" name="jiage" data-options="required:false" style="width: 120px;height: 20px;"><br/>	尺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寸:<input value="'+n.chicun+'" class="easyui-textbox" name="chicun" data-options="required:false" style="width: 120px;height: 20px;"><br/>	纯&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;度:<input value="'+n.chundu+'" class="easyui-textbox" name="chundu" data-options="required:false" style="width: 120px;height: 20px;"><br/>	颜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色:<input value="'+n.yanse+'" class="easyui-textbox" name="yanse" data-options="required:false" style="width: 120px;height: 20px;"><br/>	切&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;工:<input value="'+n.qiegong+'" class="easyui-textbox" name="qiegong" data-options="required:false" style="width: 120px;height: 20px;"><br/>	材&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;质:<input value="'+n.caizhi+'" class="easyui-textbox" name="caizhi" data-options="required:false" style="width: 120px;height: 20px;"><br/></form><input  type="submit" value="修改" />');
										$("#w").window("open");
										
									}
								});							
							}
						}														
					},{
						iconCls:'icon-remove',
						handler:function(){
							var n=$("#dg").datagrid('getSelected');
							var i=$('#dg').datagrid('getRowIndex', $("#dg").datagrid('getSelected'));
							if(n==null){
								$.messager.alert('温馨提示','必须选中要删除的行才能删除!','error');
							}else{
								$.messager.confirm('确认信息', '确认删除编号为:'+n.Drid+'的信息吗?', function(r){
									if (r){
										$.get("DrAction!deleteDrInfoById.action?drid="+n.Drid,function(data){
												var noticeMessage=data;
												if(noticeMessage=='true'){
													noticeMessage='删除成功!'
													$("#dg").datagrid('deleteRow',i);
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
							$("#w").panel({'title':'添加信息','width':400,'height':400});
							$("#w").html('<iframe scrolling="auto" frameborder="0"  src="addDr.jsp" style="width:100%;height:100%;"></iframe>');
							$("#w").window("open");
						}
					}]
				});			
			})
			
			

		})
		
		function imageDetail(src){
			src=src.replace("20px","100%");
			src=src.replace("20px","100%");
			$("#w").html(src);
			$('#w').window('open');
		}

	</script>
	<!-- 用来显示照片详情的window -->
	<div id="w" class="easyui-window" title="详情" data-options="iconCls:'icon-large-picture',modal:true,minimizable:false" style="width:600px;height:400px;padding:10px;">
	</div>


</body>
</html>
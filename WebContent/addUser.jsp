<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	<title>添加用户</title>
	<link rel="stylesheet" type="text/css" href="themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="themes/icon.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="js/canvas.js"></script>
</head>
<body>
	<div style="margin:20px 0;"></div>
	<div class="easyui-panel" title="添加用户" style="width:100%;max-width:500px;padding:30px 60px;">
		<form id="adduser" method="post" action="admin/UserAction!addUserInfo.action" enctype="multipart/form-data">
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.userid" style="width:100%" data-options="label:'用户编号:',required:true">
			</div>
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.shouJiHao" style="width:100%" data-options="label:'手机号:',required:true">
			</div>
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.password" style="width:100%" data-options="label:'密码:',required:true">
			</div>
				<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.youXiang" style="width:100%" data-options="label:'邮箱:',required:true,validType:'email'">
			</div>
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.niCheng" style="width:100%" data-options="label:'昵称:',required:true">
			</div>
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.zhenShiXingMing" style="width:100%" data-options="label:'真实姓名:',required:true">
			</div>
			<div style="margin-bottom:20px"> 
             <span style="margin-right:30px">性&nbsp;&nbsp;别：</span> 
             <input type="radio" checked="checked"  name="u.xingBie" value="男" /> 
             <label for="nan"> 男</label> 
             <input type="radio"   name="sex" value="女" /> 
             <label for="nv"> 女</label> 
            </div> 
			 <div style="margin-bottom:20px"> 
             <span style="margin-right:20px">出生日期：</span> 
             <select name="u.nian" id="selYear"> <option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option></select> 
             <select name="u.yue" id="selMonth"> <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select> 
             <select name="u.ri" id="selDay"> <option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select> 
            </div> 
            <div style="margin-bottom:20px"> 
             <span style="margin-right:30px">地&nbsp;&nbsp;区：</span> 
             <select name="u.sheng" id="province"> <option value="-1">请选择省份</option> <option value="安徽省">安徽省</option><option value="北京市">北京市</option><option value="福建省">福建省</option><option value="甘肃省">甘肃省</option><option value="广东省">广东省</option><option value="广西壮族自治区">广西壮族自治区</option><option value="贵州省">贵州省</option><option value="海南省">海南省</option><option value="河北省">河北省</option><option value="河南省">河南省</option><option value="黑龙江省">黑龙江省</option><option value="湖北省">湖北省</option><option value="湖南省">湖南省</option><option value="吉林省">吉林省</option><option value="江苏省">江苏省</option><option value="江西省">江西省</option><option value="辽宁省">辽宁省</option><option value="150000">内蒙古自治区</option><option value="640000">宁夏回族自治区</option><option value="青海省">青海省</option><option value="山东省">山东省</option><option value="山西省">山西省</option><option value="陕西省">陕西省</option><option value="上海市">上海市</option><option value="四川省">四川省</option><option value="天津市">天津市</option><option value="西藏自治区">西藏自治区</option><option value="650000">新疆维吾尔自治区</option><option value="云南省">云南省</option><option value="浙江省">浙江省</option><option value="500000">重庆市</option></select> 
              <span>城市：</span> 
             <input name="u.shi" type="text" value="" style="height: 20px;width: 80px;" id="postcode" />  
            </div> 
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.xiangXiDiZhi" style="width:100%;height:60px" data-options="label:'详细地址:',multiline:true">
			</div>
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.youBian" style="width:100%" data-options="label:'邮编:',required:true">
			</div>
			<div style="margin-bottom:20px">
				<input class="easyui-textbox" name="u.zuoJi" style="width:100%" data-options="label:'座机:',required:true">
			</div>
			<div> 
            <span id="addimage" style="margin-right:85px">头像：</span>
            <input style="margin-left:130px" type="file"  name="headImg"/>
            </div>
		</form>
		<div style="text-align:center;padding:30px 0">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()" style="margin-right:85px;width:80px">提交</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()" style="width:80px">清空</a>
		</div>
	</div>
	<script>
		function submitForm(){
			$('#adduser').form('submit');
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
</body>
</html>
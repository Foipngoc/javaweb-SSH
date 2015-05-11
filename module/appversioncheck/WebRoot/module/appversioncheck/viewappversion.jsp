<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title id="apptitle">修改应用版本</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/common/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/common/table.css">	
	
	<script src="js/common/jquery-1.10.2.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>module/appversioncheck/js/viewappversion.js"></script>
	<script type="text/javascript" src="js/common/paging.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/WdatePicker/WdatePicker.js"></script>

  </head>
  
  <body>
 	<input id="basePath" name="basePath" type="hidden" value="<%=basePath%>">
  	<input type="hidden" value="<%=request.getParameter("appvid")%>" name="appvid" id="appvid">
 	<input type="hidden" value="<%=request.getParameter("appid")%>" name="appid" id="appid"/>
	<h2>应用名&nbsp;&nbsp;<input type="text" name="appname" id="appname" readonly="readonly" style="border: 0px; font-weight: bold;"></h2> <br>
	<h2>版本号&nbsp;&nbsp;<input type="text" name="versioncode" id="versioncode" readonly="readonly"></h2> <br>
	<h2>版本名&nbsp;&nbsp;<input type="text" name="versionname" id="versionname" readonly="readonly"> </h2><br>
	<h2>更新日志&nbsp;<textarea rows="6" cols="40" name="updatelog" id="updatelog" readonly="readonly"></textarea></h2><br>
	<h2>更新方式&nbsp;<select name="updatetype" id="updatetype" disabled="disabled"> <option value="0">强制更新</option><option value="1">用户选择</option><option value="2">不弹出更新</option></select> </h2><br>
	<h2>APP资源&nbsp;&nbsp;<input type="text" id="respath" style="border:0px;" readonly="readonly"><input type="button" id="file" onclick="downloadfile()" value="下载APP"></h2><br>
	<h2>下载路径&nbsp;<input type="text" name="downloadpath" id="downloadpath" readonly="readonly"> </h2><br>
	<h2>自动安装&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select disabled="disabled" name="autoinstall" id="autoinstall"><option value="1">自动安装</option><option value="0">不自动安装</option></select> </h2><br>
	<input type="button" value="关闭" onclick="closeview()">
  </body>
</html>

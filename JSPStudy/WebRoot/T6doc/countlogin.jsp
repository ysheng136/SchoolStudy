<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'countlogin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function yanzheng(){
			var name=form1.username.value;
			if(name==""){
				alert("昵称不能为空！");
				form1.username.focus();
				return;
			}
		}
	</script>
  </head>
  <body>
    <h1 align="center">欢迎</h1>
    <form action="T6doc/usercount.jsp" name="form1" method="get">
	    <table width="240" height="100" align="center" border="0">
	    	<tr><td><font face="华文行楷" color="blue">昵称：</font></td><td><input type="text" name="name" id="name" size="19"></td></tr>
	    	<tr><td colspan="2" align="center"><input type="submit" name="sub1" id="sub1" value="提交" onclick="yanzheng();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="re1" id="re1" value="清空"></td></tr>
	    </table>
	</form>
  </body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
<script type="text/javascript">
	function check(){
		if(form1.name.value==""){
			alert("城市名称不能为空！");
			form1.name.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div class="panel admin-panel margin-top">
	<div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>省份的修改</strong></div>
		<div class="body-content">
		<form method="post" name="form1" class="form-x" action="<%=basePath %>cityservlet?order=provinceupdate" onsubmit="return check();">
		<input type="hidden" name="cityid" value="${citybean.cityid}">
		<div class="form-group">
        <div class="field">
          <select name="provinceid" class="input w50" onchange="checkcity(this.value);">
            <option value="">请选择省份</option>
            <c:forEach items="${provincelist}" var="l">
				<c:if test="${citybean.provinceid == l.provinceid}">
					<option value="${l.provinceid }" selected="selected">${l.provinceName }</option>
				</c:if> 
	    			<option value="${l.provinceid }">${l.provinceName }</option>
			</c:forEach>
          </select>
      </div>
		<div class="form-group">
	        <div class="field">
	  			<input type="text" class="input w50"  name="cityname" data-validate="required:请填写城市名称" value="${citybean.cityname}">
	        <div class="tips"></div>
	        </div>
     	</div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit">确认修改</button> <button class="button bg-main icon-check-square-o" type="reset">重置</button>
        </div>
      </div>
</div>
<script type="text/javascript">
function del(id,mid){
	if(confirm("您确定要删除吗?")){			
		
	}
}
</script>
</body>
</html>
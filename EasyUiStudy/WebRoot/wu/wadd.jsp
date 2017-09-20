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
<link rel="stylesheet" href="<%=basePath %>wu/css/pintuer.css">
<link rel="stylesheet" href="wu/css/admin.css">
<script src="<%=basePath %>wu/js/jquery.js"></script>
<script src="<%=basePath %>wu/js/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel margin-top">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span新增物流</strong></div>
  <div class="body-content">
	<form method="post" name="form1" style="width:560px" class="form-x" action="<%=basePath %>wuliuservlet?order=add">
      <div class="form-group">
        <div class="label">
          <label>物流名称：</label>
        </div>
        <div class="field">
          <input type="text" style="width:560px"  class="input w50" name="proname" placeholder="输入物流名称" data-validate="required:请输入物流名称"/>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>物流价格：</label>
        </div>
        <div class="form-group">
        <div class="field">
          <input type="text"  style="width:560px" class="input w50" name="price"  placeholder="输入物流价格" data-validate="required:请填写物流价格">
        </div>
      </div>
    <div class="form-group">
        <div class="label">
          <label>物流数量：</label>
        </div>
        <div class="field">
          <input type="text" style="width:560px"  class="input w50" name="num"   placeholder="输入物流数量" data-validate="required:请填写物流数量"/>
          <div class="tips"></div>
        </div>
      </div>  
      <div class="form-group">
        <div class="label">
          <label>物流简介：</label>
        </div>
        <div class="field">
           <textarea type="text" style="width:360px"  class="input w50" name="date" style="height:150px;" placeholder="输入物流时间" data-validate="required:请填写物流时间"></textarea>
          <div class="tips"></div>
        </div>
      </div> 
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 新增/修改</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body>
</html>
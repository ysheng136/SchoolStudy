<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:wb="http://open.weibo.com/wb">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${studentBean.studentname}的购物车</title>
<meta name="keywords" content="IT在线教育,51CTO视频课程,IT在线培训,课程在线,培训视频,在线视频" />
<meta name="description" content="51CTO学院是专业的IT在线教育平台，聘请云计算、大数据、HTML5、网络安全、服务器、Android、iOS、开发技术、SQL Server、Oracle、数据库等技术领域的专家，更有思科认证、软考、Linux认证、微软认证、H3C认证系列精品IT在线培训课程，汇集最顶尖的IT技术精品课程，最优秀的IT培训讲师授课，大量技术培训教程，学员付费后可在线观看，此外还可以获得专家讲师亲自答疑，并参加课程的在线评测。" />
<LINK href="/favicon.ico" type="image/x-icon" rel=icon>
<script type="text/javascript" src="https://static1.51cto.com/edu/js/jquery.min.js?v=2.4.4"></script>
<script type="text/javascript" src="https://static1.51cto.com/edu/js/msgbox.js?v=2.4.4"></script>
<script type="text/javascript" src="https://static1.51cto.com/edu/js/nav.js?v=2.4.4"></script>
<script type="text/javascript" src="https://static1.51cto.com/edu/js/mbox.js?v=2.4.4"></script>
<script type="text/javascript" src="https://static1.51cto.com/edu/js/allpageevent.js?v=2.4.4"></script>
<!-- 通用顶部简导航 -->
<link rel="stylesheet" href="systemvo/css/pintuer.css"/>
<link rel="stylesheet" href="systemvo/css/admin.css"/>
<script src="systemvo/js/jquery.js"></script>
<script src="systemvo/js/pintuer.js"></script>
<link rel="stylesheet" type="text/css" href="https://static1.51cto.com/edu/css/gen_top.css?v=2.2.82">
<script type="text/javascript" src="https://static1.51cto.com/edu/js/gen_top.js?v=2.2.82"></script>
<!-- New Header -->
<link rel="stylesheet" type="text/css" href="https://static1.51cto.com/edu/css/../center/css/base.css?v=2.4.4">
<link type="text/css" href="https://static1.51cto.com/edu/css/whitestyle.css?v=2.4.4" rel="Stylesheet" />
<script type="text/javascript">
var gen_logo = '';
</script>
</head>
<body>

<div class="GenTopHeader" style="margin-top: 0px;">
    <ul class="Page"  id="GenTopBar"><li class="fl f14" id="Til"><a href="http://edu.51cto.com/">中国最大的IT技能学习平台</a></li>
        <li class="fr navi"><a href="http://edu.51cto.com/sitemap.html" target="_blank" style="background-color:none;">网站导航</a>
            <ul class="navigates">
                <li><a href="http://edu.51cto.com/px" target="_blank">微职位</a></li>
                <li><a href="http://edu.51cto.com/ke" target="_blank">视频课程</a></li>
                <li style="border-bottom: 1px solid #FFF;"><a href="http://edu.51cto.com/activity/lists/id-23.html?dh2" target="_blank">企业学习</a></li>
                <li><a href="http://edu.51cto.com/lecturer/lectopics" target="_blank">申请开课</a></li>
                <li><a href="http://www.51cto.com/" target="_blank">51CTO主站</a></li>
                <li><a href="http://x.51cto.com/act/cto/camp/page/video?edutop" target="_blank">CTO训练营</a></li>
                <li><a href="http://wot.51cto.com/?edutop" target="_blank">WOT峰会</a></li>
                <li><a href="http://wot.51cto.com/act/bcsl/info?edutop" target="_blank">百城沙龙</a></li>
            </ul>
        </li>
        <c:if test="${studentBean!=null}">
        	<li class="fr"><a target="_blank" href="<%=basePath %>loginservlet?order=loginin&name=${studentBean.studentmobile}">学习中心</a></li>
        </c:if>
        <li class="fr apps"><a href="<%=basePath %>datainfo/app.jsp" target="_blank" style="background:none;">课堂APP</a>
            <ul>
                <li><a href="http://edu.51cto.com/download/android/v-02.html" target="_blank">Android</a></li>
                <li><a href="https://itunes.apple.com/us/app/51cto-xue-yuan-shi-zhanit/id1038062672?l=zh&ls=1&mt=8" target="_blank">iPhone</a></li>
                <li><a href="https://itunes.apple.com/us/app/51cto-xue-yuan/id948807016?ls=1&mt=8"  target="_blank">iPad</a></li>
            </ul>
        </li>
        <li class="fr" id="TopCart">
            <a href="<%=basePath %>courselistservlet?order=mycar1" target="_blank" class="red">购物车<span>${requestScope.num}</span></a>
        </li>
        <li class="fr reg"><a href="<%=basePath %>datainfo/zhuce.jsp" target="_blank">注册</a></li>
        <c:if test="${studentBean==null}">
        	<li class="fr"><a href="<%=basePath %>datainfo/login.jsp">登录</a></li>
        </c:if>
       <c:if test="${studentBean!=null}">
       		 <li class="fr"><a href="<%=basePath %>loginservlet?order=exit"><font color="red">【安全退出】</font></a></li>
       		 <li class="fr reg"><a href="<%=basePath %>loginservlet?order=loginin&name=${studentBean.studentmobile}" target="_blank">${studentBean.studentname}</a></li>
       </c:if>
    </ul>
</div>        <ul class="FixedSideBar">
        <li class="FixedSideBar_iPad">
            <ul class="reddot"></ul>
            <p>APP下载</p>
            <div class="FixedSideBar_SSS"></div>
            <div class="FixedSideBar_iPad_QrCode">
                <img src="<%=basePath %>image/big.png" style="width:90px;" />
                <div class="tc">下载学院APP<br />缓存视频离线看</div>
            </div>
        </li>
        <li class="FixedSideBar_FeedBack">
            <p><a href="/user/feedback.html" target="_blank">意见反馈</a></p>
        </li>
        <li class="FixedSideBar_GoTop">
            <p>返回顶部</p>
        </li>
    </ul>
    
<div class="pagebg" style="width: 100%;background: #fff;">
    <div class="Page" style="height:90px;">
        <a href="http://edu.51cto.com/px/train/115?banner" target="_blank">
            <img src="<%=basePath %>image/bg2.jpg" />
        </a>
    </div>
</div>
<div class="Header">
    <div class="Page">
        <div class="Logo fl">
            <a href="http://edu.51cto.com/" title="51cto学院"><img src="<%=basePath %>image/itlogo.png" class="fl"></a>
        </div>
            <ul class="Navigate fl">
            <li><a href="<%=basePath %>courselistservlet?order=list">首页</a></li>
            <li><a href="<%=basePath %>datainfo/tiwen.jsp?coursename=${param.coursename}&url=${param.sectionurl}&imgsrc=${param.imgsrc}&studentid=${param.studentid}" target="_blank">我要提问</a></li>
            <li><a href="<%=basePath %>data/pingjia.jsp?coursename=${param.coursename}&url=${param.sectionurl}&imgsrc=${param.imgsrc}&studentid=${param.studentid}" target="_blank">我要评价</a></li>
            <li><a href="http://edu.51cto.com/package/packagelist.html?ejdh" target="_blank">我要退款</a></li>
            <li><a href="<%=basePath %>courselistservlet?order=jiaoliutaolun" target="_blank">讨论交流</a></li>
            <li><a href="http://edu.51cto.com/activity/lists/id-23.html?dh1" target="_blank">企业学习</a></li>
            <li><a href="http://edu.51cto.com/activity/lists/id-32.html?dh"  target="_blank">免费试听</a></li>
            <li>
              <p class="min_more">线下学习</p>
              <div class="min_more">
                  <a target="_blank" href="http://x.51cto.com/act/cto/camp/page/video?edunav">CTO训练营</a>
                  <a target="_blank" href="http://wot.51cto.com/?edunav ">WOT峰会</a>
                  <a target="_blank" href="http://wot.51cto.com/act/bcsl/info?edunav">百城沙龙</a>
              </div>
            </li>
        </ul>
    </div>
     <br/>
</div>
<br/>
<br/>
<br/>
	 <div style="margin-left:78px">
<form method="post" action="" id="listform">
<c:if test="${msg!=null}">
	<script type="text/javascript">
		alert("${msg}");
	</script>
  </c:if>
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 我的购物车列表</strong> <a href="" style="float:right; display:none;">添加课程</a></div>
    <table class="table table-hover text-center">
     <tr>
		<th align='center'>课程名称</th>
		<th align='center'>图片网址</th>
		<th align='center'>发布人名</th>
		<th align='center'>章节总数</th>
		<th align='center'>课程价格</th>
		<th align='center'>课程优惠</th>
		<th align='center'>是否有效</th>
		<th align='center'>发布时间</th>
		<th align='center' >操作</th>
	</tr>
        <tr>
          <c:forEach items="${shoplist}" var="y">
			<tr height='40'>
				<td align='center'>${y.coursename}</td>
				<td align='center'><img src="${y.picture_url}" width="40px" height="40px"></td>
				<td align='center'>${y.replay_username}</td>
				<td align='center'>${y.course_count}节</td>
				<td align='center'>${y.price*100}</td>
				<td align='center'>${y.discount}</td>
				<td align='center'>
					<c:if test="${y.effective==1}">
						有效
					</c:if>
					<c:if test="${y.effective!=1}">
						无效
					</c:if>
				</td>
				<td align='center'>${y.replay_date}</td>
				<td align="center">
					<div class="button-group"> 
						<a class="button border-main icon-edit" href="<%=basePath %>courselistservlet?carid=${y.carid}&order=paymoney&sectionid=${y.sectionid}" target="_blank"> 去付款 </a>&nbsp;&nbsp;
						<a  class="button border-red icon-trash-o" href="<%=basePath %>courselistservlet?carid=${y.carid}&order=delete"  onclick="javascript:if(confirm('删除确认')){return true;}else{return false;}"> 删 除 </a>
					</div>
				</td>
			</tr>
		</c:forEach>
      <tr width="100%">
        <td style="text-align:left; padding:19px 0;padding-left:20px;" colspan="6">
	        <input type="checkbox" id="checkall"/>全选 
	        <a href="javascript:void(0)" class="button border-red icon-trash-o" style="padding:5px 15px;" onclick="DelSelect()"> 删除</a> <a href="javascript:void(0)" style="padding:5px 15px; margin:0 10px;" class="button border-blue icon-edit" onclick="sorts()"> 排序</a> 
		</td>
		<td class="pagelist" colspan="10" align="center">
			<a href="">总记录数&nbsp;&nbsp;${pager.pagebarsum }</a>
			<a href="">页码&nbsp;&nbsp;${pager.currentpage }/${pager.sumpage }页</a>
			<a href="<%=basePath %>courselistservlet?order=mycar1&currenpage=1&handle=firstpage">首   页</a>
			<a href="<%=basePath %>courselistservlet?order=mycar1&currenpage=${pager.currentpage }&handle=uppage">上一页</a>
			<a href="<%=basePath %>courselistservlet?order=mycar1&currenpage=${pager.currentpage }&handle=downpage">下一页</a>
			<a href="<%=basePath %>courselistservlet?order=mycar1&currenpage=${pager.sumpage }&handle=lastpage">尾  页</a> 
		</td>
      </tr>
    </table>
<script type="text/javascript">
//搜索
function changesearch(){	
		
}

//单个删除
function del(id,mid,iscid){
	if(confirm("您确定要删除吗?")){
		
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
	 </div>

<div class="Footer">
    <div class="Page">
        <table class="QRcode tc">
            <caption>
                <a href="http://edu.51cto.com/" title="51cto学院"><img src="<%=basePath %>image/itlogo.png" alt="51cto学院" width="194" height="40"/>
            </caption>
            <tr>
                <td>
                    <img src="https://static1.51cto.com/edu/css/../center/images/qrcode.png" alt="学院APP" width="110" height="110"/>
                    <p>学院APP</p>
                </td>
                <td>
                    <img src="https://static1.51cto.com/edu/css/../center/images/qrcode2.png" alt="官方微信" width="110" height="110"/>
                    <p>官方微信</p>
                </td>
            </tr>
        </table>
        <div class="Info fl">
            <div class="Map">
                <a href="http://edu.51cto.com/about/index.html" title="关于我们" target="_blank">关于我们</a>
                <span></span>
                <a href="http://edu.51cto.com/help.html" target="_blank"  title="帮助中心">帮助中心</a>
                <span></span>
                <a href="http://edu.51cto.com/user/feedback.html" title="意见反馈" target="_blank">意见反馈</a>
                <span></span>
                <a href="http://edu.51cto.com/about/contactus.html" target="_blank"  title="联系我们">联系我们</a>
                <span></span>
                <a href="http://bbs.51cto.com/thread-1113045-1.html" target="_blank"  title="课程登记">课程登记</a>
                <span></span>
                <a href="http://edu.51cto.com/user/studyGains.html" target="_blank"  title="学员故事">学员故事</a>
                <span></span>
                <a href="http://51edu.blog.51cto.com/8899635/1862738" target="_blank"  title="学员交流">学员交流</a>
            </div>
            <p class="Call fl red">176-0797-5702</p>
            <p class="fl callTime">09:00 - 19:00</p>
            <div class="clear"></div>
            <p class="copy">Copyright &copy; 2017-2027 <a href="http://www.51cto.com/" target="_blank">51CTO.com</a></p>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="mask disp-n" id="AdviceMask"></div>
<div class="Advice disp-n" id="Advice">
    <div class="Main">
        <button class="close" onclick="$('#AdviceMask').hide();$('#Advice').hide();">&nbsp;</button>
        <button id="bizQQ_WPA">&nbsp;</button>
        <h3>可以开发票么？</h3>
        <p>可以的，购买课程或者充值余额后都是可以开具发票的，具体详情点击：<a href="http://bbs.51cto.com/thread-1472105-1.html" target="_blank">我要开发票</a></p>
        <h3>购买的课程可以下载么？</h3>
        <p>目前PC端暂不支持下载课程视频，请手机或者平板电脑下载“51CTO学院”APP后再下载视频哦！</p>
        <h3>优惠券如何使用？</h3>
        <p>非折扣课程（不包含1元课程/套餐）可使用，一个订单（可包含多个课程）只可使用一张；优惠券一经使用，不再返还；若被冻结请在PC端删除订单即可返还。</p>
        <p class="mt20">更多问题查询点击 <a href="http://edu.51cto.com/help.html" target="_blank">帮助中心</a></p>
        <p class="mt10">欢迎您提供宝贵意见，对于您的意见我们都会认真、慎重的讨论，每一个意见都是我们更好为您服务的鞭策和激励，感谢您帮助学院成长，<a href="http://edu.51cto.com/user/feedback.html" target="_blank">我要反馈意见</a></p>
    </div>
</div>
<script type="text/javascript">
$("#bizQQ_WPA").click(function(){
    window.open('http://edu.51cto.com/contactqq.html')
})
</script>

<script type="text/javascript" src="https://static1.51cto.com/edu/js/edu-ad.js?v=20161009"></script>
<script type="text/javascript" src="https://static1.51cto.com/edu/js/edu_header.js?v=1.2.2"></script>
<!----------------------数据分析  begin --------------------->
<script type="text/javascript">
    var sessionid = "mavmlnrshc02mtvs6e7ajlk6k3",
            ip = "218.204.104.235",
            user_id = "0",
            source = 0;
</script>
<script type="text/javascript" src="https://static1.51cto.com/edu/js/md5.js"></script>
<script type="text/javascript" src="https://static1.51cto.com/edu/js/tract_public.js?v=10.21"></script>
<script type="text/javascript" src="https://static1.51cto.com/edu/js/pv_tract.js?v=2016092803"></script>
<!----------------------数据分析  end -------------------->
<span style="display:none;">
<script src="https://logs.51cto.com/rizhi/count/count.js"></script>
</span>




<!--qiaohaun-->
                                    <script type="text/javascript"> document.write(unescape("%3Cscript src='https://tongji.51cto.com/cto.js/b57176900a4805e17afc7b8e25a43abf' type='text/javascript'%3E%3C/script%3E")); </script>

<script type="text/javascript">
//百度统计代码
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "https://hm.baidu.com/hm.js?8c8abdb71d78d33dfdb885e0bc71dae0";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<div style="display:none">
    <iframe frameborder="0" scrolling="no" width="0" height="0" src="http://log.51cto.com/pageview.php?frompos=edu_art"></iframe>
</div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="./common/config.jsp"%>
<html lang="ch">
<head>
<title>个人简历</title>
<!-- for-mobile-apps -->
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
        function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!-- //for-mobile-apps -->
<link href="${contextPath }/static/css/info/bootstrap.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="${contextPath }/static/css/info/font-awesome.css"
	rel="stylesheet">
<link href="${contextPath }/static/css/info/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Oleo+Script:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/css?family=Oswald:300,400,700"
	rel="stylesheet">
<!-- js -->
<script type="text/javascript"
	src="${contextPath }/static/js/info/jquery-2.1.4.min.js"></script>

<!-- start-smooth-scrolling -->
<script type="text/javascript"
	src="${contextPath }/static/js/info/move-top.js"></script>
<script type="text/javascript"
	src="${contextPath }/static/js/info/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- start-smooth-scrolling -->
</head>

<body>
	<!-- banner -->
	<div class="banner-figures">
		<div class="banner"
			style="background: url(${contextPath }/static/img/banner.jpg) no-repeat -5px 0px;">
			<div class="container banner-drop">
				<div class="header">
					<div class="header-left logo">
						<h1>
							<a href="index.html">lynnliness's&nbsp;info</a>
						</h1>
					</div>
					<div class="header-right">
						<nav>
							<ul>
								<li class="active"><a href="index.html" class="active"><span>主页</span></a>
								</li>
								<li><a href="#about" class="scroll"><span>个人简介</span></a></li>
								<li><a href="#experience" class="scroll"><span>项目经验</span></a>
								</li>
								<li><a href="#projects" class="scroll"><span>教育经历</span></a>
								</li>
							</ul>
						</nav>
						<div class="menu-icon animated wow zoomIn"
							data-wow-duration="1000ms" data-wow-delay="800ms">
							<span></span>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="name">
					<h2>张 兴盛</h2>
					<p>JAVA Developer</p>
				</div>
				<div class="social-icons animated wow bounceInDown"
					data-wow-duration="1000ms" data-wow-delay="800ms">
					<ul class="top-links">
						<a href="tencent://message/?uin=738353463&Site=JooIT.com&Menu=yes"
							title="QQ 联系我"> <img border="0"
							src='${contextPath }/static/img/tencent.png'>
						</a>
					</ul>
				</div>
			</div>
			<div class="banner-btm-grid-w3ls">
				<div class="banner-left-wthree">
					<img src="${contextPath }/static/img/banner-btm.jpg" alt=" "
						class="img-responsive">
					<ul class="address">

						<li>
							<ul class="address-text">
								<li><b>NAME</b></li>
								<li>: 张兴盛</li>
							</ul>
						</li>
						<li>
							<ul class="address-text">
								<li><b>BIR</b></li>
								<li>: 1993/09/17</li>
							</ul>
						</li>
						<li>
							<ul class="address-text">
								<li><b>MOBILE </b></li>
								<li>: 15072244201</li>
							</ul>
						</li>
						<li>
							<ul class="address-text">
								<li><b>E-MAIL </b></li>
								<li>: <a href="mailto:738353463@qq.com" title="给我发邮件">738353463@qq.com</a></li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="banner-right-w3-agileits">
					<iframe src="${contextPath }/mp3"></iframe>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<script>
			(function($) {
				$(".menu-icon").on("click", function() {
					$(this).toggleClass("open");
					$(".container").toggleClass("nav-open");
					$("nav ul li").toggleClass("animate");
				});

			})(jQuery);
		</script>

	</div>

	<!-- //banner -->
	<!-- about -->
	<div class="about" id="about">
		<div class="container">
			<span class="about-top-w3">Who I am?</span>
			<h4 class="title-w3ls">About Me</h4>
			<h5 class="sub">个人简介</h5>
			<p class="para-w3-agile">
				<a href="http://blog.csdn.net/acclike" target="_blank">博客</a>
			</p>
			<p class="para-w3-agile">态度踏实谦虚，能够独立解决大多数问题，善于沟通</p>
			<p class="para-w3-agile">
				2012年6月，参加校外培训机构，2013年5月毕业，属于保留专科学籍，校外培训，工作经验3-4年。</br>希望可以找到一个团队氛围好，工作环境安静，都不错的的工作，期望月薪16-18K，职业规划为架构师，待人真诚，乐于助人，有耐心，热爱学习新技术
			</p>
			<div class="skills-bar">
				<h4 class="title-w3ls">My Skills</h4>
				<section class='bar'>
					<section class='wrap'>
						<div class='wrap_right'>
							<div class='bar_group'>
								<div class='bar_group__bar thin' label='jQuery'
									show_values='true' tooltip='true' value='343'></div>
								<div class='bar_group__bar thin' label='AJAX' show_values='true'
									tooltip='true' value='350'></div>
								<div class='bar_group__bar thin' label='HTML' show_values='true'
									tooltip='true' value='200'></div>
								<div class='bar_group__bar thin' label='EXTJS'
									show_values='true' tooltip='true' value='200'></div>
								<div class='bar_group__bar thin' label='HTML' show_values='true'
									tooltip='true' value='245'></div>
								<div class='bar_group__bar thin' label='JAVA' show_values='true'
									tooltip='true' value='675'></div>
								<div class='bar_group__bar thin' label='SPRING'
									show_values='true' tooltip='true' value='456'></div>
								<div class='bar_group__bar thin' label='MAVEN'
									show_values='true' tooltip='true' value='670'></div>
								<div class='bar_group__bar thin' label='MYBATIS'
									show_values='true' tooltip='true' value='650'></div>
								<div class='bar_group__bar thin' label='MYSQL'
									show_values='true' tooltip='true' value='650'></div>
							</div>
							<div class="para-w3-agile">以上为常用技术</div>
						</div>
						<div class='clear'></div>
					</section>
				</section>
			</div>
		</div>
	</div>
	<!-- //about -->
	<!--work-experience-->
	<div id="experience" class="experience">
		<div class="container">
			<span class="about-top-w3">Java / Web Dev</span>
			<h4 class="title-w3ls">工作经历</h4>
			<div class="work-info">
				<div class="col-md-6 work-left">
					<h4>2016/01 — 至今</h4>
				</div>
				<div class="col-md-6 work-right">
					<h5>
						<span class="glyphicon glyphicon-briefcase"> </span> 杭州移动研发中心 /
						JAVA 开发
					</h5>
					<p>
					<li>杭州移动研发中心《工作手机》项目开发</li> <br>
					1：负责工作手机的后台开发，包括一些管理的开发和对APP接口的提供，采用Restful规范接口<br>
					2:对接IM实时通讯系统的推送功能，包括个推（<a href="http://www.getui.com/cn/index.html"
						target="_blank">http://www.getui.com/cn/index.html</a>） 和IM（<a
						href="http://www.cmccim.com/official/pages/index" target="_blank">
						http://www.cmccim.com/official/pages/index</a>）<br>
					3：通过cmpp3.0对接短信通道，完成对APP的验证码发送和短信登陆功能</br> 4：开发滚动消息模块支持APP首页的Banner展示渲染<br>
					5：开发一个账号对应多个集团的推送机制，用过Android的clientId和IOS的deviceToken与登陆选择集团绑定，实现系统推送、公司推送、部门推送、个人推送的推送级别控制<br>
					6：开发系统日志功能，实现Web端操作日志记录以及APP端登陆，崩溃，异常记录<br>
					7：开发APP版本更新控制，实现灰度更新以及旧版本的强制更新 8：权限控制框架Shiro的集成与使用<br>
					9：通讯录模块开发，满足一人多部门多职位的需求<br>
					10：模拟钉钉，开发消息必达的功能，由APP端发起请求，针对发送时间可设置为立即发送和定时发送，支持图片，音频，以及文字，可通过短信，Voip网络电话或者APP推送的方式实时通知到对方<br>

					<br>
					<li>二：《工作手机》子版本《和高校》项目开发</li> <br> 1：在工作手机基础上提供对重庆大学校园的定制化服务<br>
					2：投票”功能开发，满足大学的一些投票活动，同时可以对投票机制进行控制以及对作弊情况的公布<br>
					3：提供对APP提供的地理数据位置提供面对面建群的功能 <br> 4：提供二维码的生成以及解析功能，采用QRCode <br>
					<br>
					<li>三：《杭研OA》系统开发</li> <br> 1：用户信息通过Ldap同步验证，登陆，以及更新 </br>2：权限组，用户组开发<br>
					3：通过定义Word模板，利用POI对公文表单数据转制Word文档并提供下载，并根据正文内容样式调整，设置字体，字号，颜色，加粗，下划线等操作<br>
					4：利用poi对收到的word文档转义为html页面预览 5：第三方接口的对接以及单点登录对接<br>
					5：第三方接口的对接以及单点登录对接</br> 6：集成Swaager，对项目的接口文档做界面展示与页面测试
					</p>
				</div>
				<div class="clearfix"></div>
			</div>

			<div class="work-info">
				<div class="col-md-6 work-right work-right2">
					<h4>2013/07—2016/01</h4>
				</div>
				<div class="col-md-6 work-left work-left2">
					<h5>
						杭州市润通科技有限公司<span class="glyphicon glyphicon-briefcase"></span>
					</h5>
					<p>

						<a href="www.56123.com" target="_blank">浙江嵊州茂乾物流网点管理系统</a>
					</li> </br> 对运单进行开单保存，修改运单，未确认交易订单取消，确认交易，安排提货，确认到站，关闭运单，确认签收等操作.
					对已发车的运单可以进行变更操作，可修改部分数据，之后会提交至变更审核，由相关人员进行审核，
					审核通过之后将运单进行修改，不通过则可以继续提出变更申请，未审核之前运单不可再进行变更 对客服人员提出的变更申请进行审核操作
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="work-info">
				<div class="col-md-6 work-left">
					<h4>2013/07—2016/01</h4>
				</div>
				<div class="col-md-6 work-right">
					<h5>
						<span class="glyphicon glyphicon-briefcase"> </span>
						<li><a href="www.butchart.com" target="_blank">布查德花店</a></li>
					</h5>
					<p>根据项目需求文档高质量完成自己的工作，我完成的模块是产品和花材库的列表和查询以及会员中心，
						产品和花材库根据美工提供的原型进行操作，对购买数量，价格计算，包括普通会员和香奈儿会员的价格区分，
						会员中心可以查看订单列表，订单详情，已购买的优惠券，升级券，产品券及使用情况， 并可以修改自己的个人信息，充值虚拟货币</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="work-info">
				<div class="col-md-6 work-right work-right2">
					<h4>2013/07—2016/01</h4>
				</div>
				<div class="col-md-6 work-right">
					<h5>
						<li><a href="http://www.zyzhoto.com/shop/" target="_blank">中邮O2O（九牛网）手机零售网</a></li>
						<span class="glyphicon glyphicon-briefcase"></span>
					</h5>
					<p>首页相关内容的接口通道开发，使用memcache缓存中间件，以尽量减轻服务器压力；
						产品详情页面以及相关接口开发，商品评价系统，搜索热词，以及会员中心个人资料的管理；
						订单管理系统中申请退货，商品评价，以及对应后台管理系统模块</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--//work-experience-->
	<!-- projects -->
	<div class="projects" id="projects">
		<div class="container">
			<span class="about-top-w3">The best of my projects </span>
			<h4 class="title-w3ls">Featured Projects</h4>
			<div class="news-bottom">
				<div class="news-one-wthree-agile">
					<div class="col-md-6 news-left">
						<div class="biseller-column">
							<a class="lightbox" href="#one" title="点击查看培训经历"> <img
								src="${contextPath }/static/img/cute_dog.jpg" alt="" />
							</a>
							<div class="lightbox-target" id="one">
								<img src="${contextPath }/static/img/cute_dog.jpg" alt="" />
								<p class="pop">
									培训经历 2012/07 -- 2013/07</br> 清华IT JAVA培训</br>
									培训课程：html,css,js,java,struts,spring,hibernate</br>
									所获证书：清华大学继续学习认证中心毕业证书，二级计算机证书 </br> 培训地点：湖北武汉
								</p>
								<a class="lightbox-close" href="#"> </a>

								<div class="clearfix"></div>

							</div>
						</div>
					</div>
					<div class="col-md-6 news-right">
						<a href="#one"><h4>教育经历</h4></a>
						<p class="para-w3-agile">
							2012/09 -- 2015/06</br> 湖北广播电视大学/计算机信息技术</br>
						</p>
						</br> <a href="#one"><h4>常用技能</h4></a>
						<p class="para-w3-agile">
							html,css,js,java,struts,spring,mybatis,mysql,</br>swagger,redis,ext,jquery,ajax,tomcat
						</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- //projects -->
	<!-- contact -->

	<!-- //about -->

	<div class="footer">
		<div class="container">
			<p>Copyright &copy; 2017.Company name All rights reserved. by
				Zhangxs</p>
		</div>
	</div>
	<!-- //footer -->
	<script src="${contextPath }/static/js/info/bars.js"></script>

	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			    var defaults = {
			    containerID: 'toTop', // fading element id
			    containerHoverID: 'toTopHover', // fading element hover id
			    scrollSpeed: 1200,
			    easingType: 'linear' 
			    };
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<!-- //here ends scrolling icon -->
</body>
</html>
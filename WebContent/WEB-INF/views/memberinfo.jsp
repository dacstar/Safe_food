<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>index</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean"
	rel="stylesheet">
<link href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css"
	rel="stylesheet" type='text/css'>

<!-- Css -->
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/owl.theme.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="css/font-awesome.min.css"> 2019. 03. 13 CDN으로 아래 font-awesome으로 변경 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">

<!-- jS -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="js/owl.carousel.min.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/main.js" type="text/javascript"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){

   //#_enroll
   /*
   name_create
password
email_create
location_2
pnum
defaultCheck1
login_form
_name_create
_email.create
loginButton
   */
   

   
   $('#_enroll').click(function(){
    var sr="입력하세요!";
    if($('#name_create').val() == ''){
       alert('아이디를'+sr);
    }else if($('#password').val() == ''){
       alert('비밀번호를'+sr);
    }else if($('#password2').val() == ''){
       alert('이름을'+sr);
    }else if($('#location').val() == ''){
       alert('주소를'+sr);
    }else if($('#pnum').val() == ''){
       alert('폰넘버를'+sr);
    }else if($('#defaultCheck1').val() == ''){
       alert('알레르기를'+sr);
    }
    else if($('#password').val()!=$('#password2').val()){
    	alert('비밀번호가 틀립니다!!!');
    	$('#password').val('');
    	$('#password2').val('');
    	
    }
    else{
       alert("글작성!");
       $('#create-account_form').submit();
    }
   });
   
   $('#_snum3').click(function(){
     var id=$('#_snum').val();
     var str=$('#_text').val();
    
   //   location.href='<%=request.getContextPath()%>/main.do?action=delete&seq='+seeq;
      if(id == 3){
         if(str==""){
               alert("내용을 입력 해주세요");
               return ;
            }
         location.href='<%=request.getContextPath()%>/main.do?action=searchid&id='+str; //id
         }
         else if(id == 1){
            location.href='<%=request.getContextPath()%>/main.do?action=searchall'; //id   
            
         }else if(id == 2){
            if(str==""){
                   alert("내용을 입력 해주세요");
                   return ;
                }
            location.href='<%=request.getContextPath()%>/main.do?action=searchname&name='+str; //id   
            
         }
      //$(this).
   });
});
<%-- function Search(num,word,id){
   if(id == 1){
   location.href='<%=request.getContextPath()%>/main.do?action=&id='+num; //id
   }
   else if(id == 2){
      location.href='<%=request.getContextPath()%>/main.do?action=&searchall; //id   
      
   }else if(id == 3){
      location.href='<%=request.getContextPath()%>/main.do?action=&name='+word; //id   
      
   }
} --%>
</script>

</head>
<body>


	<!-- TOP HEADER Start
    ================================================== -->

	<section id="top">
		<div class="container">

			<div class="row">
				<h1>SSAFY</h1>
				<div class="col-md-7"></div>

				<div class="col-md-3 clearfix">

					<ul class="login-cart">
						<%--            <c:if test="${empty sessionScope.id}">
	<form action="<%=request.getContextPath()%>/main.do?action=login" method="post" id='_fo3'>
		<table>
		<tr><td>로그인</td><td><input type="text" name='id' id='_lid' data-msg='아이디를'/></td></tr>
		<tr><td>비밀번호</td><td><input type="password" name='pwd' id='_lpwd' data-msg='패스워드를'/></td></tr>
		</table>
	</form>
	<button id='_btnlog'><img alt="로그인" src="<%=request.getContextPath()%>/image/write.png"></button>
  </c:if>
  <%
  SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  %>
  <c:if test="${not empty sessionScope.id}">
	[${alias}]님 반갑습니다.<br/><%=sdf.format(new Date()) %><br/>
	<a href='./main.do?action=logout'>로그아웃</a>
  </c:if> --%>
						<c:if test="${empty sessionScope.id}">
							<li><a data-toggle="modal" data-target="#myModal" href="#">
									<i class="fa fa-user"></i> Sign Up
							</a></li>
							<li>
								<div class="cart dropdown">
									<a data-toggle="modal" data-target="#myModal2" href="#"><i
										class="fa fa-shopping-cart"></i>Login</a>
									<div class="dropdown-menu dropup">
										<span class="caret"></span>
										<ul class="media-list">
											<li class="media">

												<div class="media-body"></div>
											</li>
										</ul>

									</div>
								</div>
							</li>
						</c:if>
						<c:if test="${not empty sessionScope.id}">

							<li><a data-toggle="modal"
								href="<%=request.getContextPath()%>/main.do?action=logout"><i
									class="fa fa-shopping-cart"></i>LogOut</a></li>
						</c:if>
					</ul>
				</div>
				<div class="col-md-2">
					<div class="search-box">
						<div class="input-group">
							<input placeholder="Search Here" type="text" class="form-control">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button"></button>
							</span>
						</div>
						<!-- /.input-group -->
					</div>
					<!-- /.search-box -->
				</div>
			</div>
			<!-- End Of /.row -->
		</div>
		<!-- End Of /.Container -->






		<!-- LOGO Start
    ================================================== -->




		<!-- MENU Start
    ================================================== -->

		<nav class="navbar navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<!-- End of /.navbar-header -->

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav nav-main">
						<li class="active"><a href="index.jsp">HOME</a></li>
						<li><a href="products.html">상품정보</a></li>
						<li><a href="products.html">베스트 섭취 정보</a></li>
						<li><a href="products.html">내 섭취 정보</a></li>
						<li><a href="products.html">예상 섭취 정보</a></li>

						<li class="dropdown"><a href="#"> PAGES <span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
						<!-- End of /.dropdown -->


					</ul>
					<!-- End of /.nav-main -->
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		<!-- End of /.nav -->


		<div class="modal-body clearfix">

			<form action="<%=request.getContextPath()%>/main.do" method="post"
				id="create-account_form" class="std">
				<input type="hidden" name='action' value='modifymem'>
				<fieldset>
					<div class="block-heading">
						<h2>회원정보수정</h2>
					</div>
					<div class="form_content clearfix">
						<table>
							<tr>
								<td>아이디<span class="tStart"> *</span>
								</td>

								<td><input placeholder="email@example.com" type="email"
									id="name_create" name="id" value="<%=session.getAttribute("id") %>" readonly="readonly"
									class="form-control"></td>
							</tr>
							<tr>
								<td>비밀번호<span class="tStart"> *</span>
								</td>

								<td><input placeholder="비밀번호" type="password" id="password"
									name="pwd" value="" class="form-control"></td>
							</tr>
							<tr>
								<td>비밀번호확인<span class="tStart"> *</span>
								</td>

								<td><input placeholder="비밀번호" type="password" id="password2"
									name="pwd2" value="" class="form-control"></td>
							</tr>
							<tr>
								<td>주소<span class="tStart"> *</span>
								</td>

								<td><input placeholder="주소" type="text" id="location_2"
									name="location" value="" class="form-control"></td>
							</tr>
							<tr>
								<td>전화번호<span class="tStart"> *</span>
								</td>

								<td><input placeholder="전화번호" type="tel" id="pnum"
									name="phonenumber" value="" class="form-control"></td>
							</tr>
							<tr>


								<td colspan="2" align="center">
									<fieldset>
										<legend>
											알레르기<span class="tStart"> *</span>
										</legend>
										<!-- 0314 13:41 수정 -->
										<div>
											<span class="form-check"> <input
												class="form-check-input" type="checkbox" value="메밀"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 메밀</label>
											</span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="밀"
												name='allergy' id="defaultCheck1"> <label class="form-check-label"
												for="defaultCheck1"> 밀 </label>
											</span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="콩"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 콩</label>
											</span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="갑각류"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 갑각류 </label>
											</span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="우유"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 우유</label>

											</span>
										</div>

										<div>
											</span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="돼지고기"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 돼지고기</label>
											</span> </span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="달걀흰자"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 달걀흰자</label>
											</span> </span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="복숭아"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 복숭아</label>
											</span> </span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="소고기"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 소고기</label>
											</span> </span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="굴"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 굴</label>
											</span> </span> <span class="form-check"> <input
												class="form-check-input" type="checkbox" value="토마토"
												name='allergy' id="defaultCheck1"> <label
												class="form-check-label" for="defaultCheck1"> 토마토</label>
										</div>
										<!-- 0314 13:41 수정 -->
									</fieldset>
								</td>
							</tr>
						</table>
						</div>
						</fieldset>
						</form>
						<center>
							<p class="submit">
								<button class="btn btn-primary" id='_enroll'>회 원 정 보 &nbsp;수 정</button>
							</p>
						</center>

						<!-- PRODUCTS Start
    ================================================== -->
						<!--  바뀐부분 -->
						<script
							src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
						<script type="text/javascript">



function FoodSort(){
    $.ajax({
       url: "food.json", 
       dataType: 'json',
       success: function(result){
          Search(result);
          
       }
    }); 
}

$(function(){ 
   FoodSort();
});

function Search(food_arr){
   var len=food_arr.length;
   var str= "";
      str += "<table width='100%' height='100%' align='center'>";
    for (var i = 0; i < 1; i++) {
          str += "<tr height='25%'>";
          str += "<td width='30%' rowspan='4'>";
          str += "<img src='";
          str += food_arr[i].imgurl1;
          str += "' width='100%' height='100%'>";
          str += "</img>";
          str += "</td>";
          str +="</tr>"
    }
    str += "</table>"
    $(".qqq").html(str);
    
      var str2= "";
         str2 += "<table width='100%' height='100%' align='center'>";
       for (var i = 1; i < 2; i++) {
             str2 += "<tr height='25%'>";
             str2 += "<td width='30%' rowspan='4'>";
             str2 += "<img src='";
             str2 += food_arr[i].imgurl1;
             str2 += "' width='100%' height='100%'>";
             str2 += "</img>";
             str2 += "</td>";
             str2 +="</tr>"
       }
       str2 += "</table>"
       $(".qqq2").html(str2);
       
         var str3= "";
            str3 += "<table width='100%' height='100%' align='center'>";
          for (var i = 2; i < 3; i++) {
                str3 += "<tr height='25%'>";
                str3 += "<td width='30%' rowspan='4'>";
                str3 += "<img src='";
                str3 += food_arr[i].imgurl1;
                str3 += "' width='100%' height='100%'>";
                str3 += "</img>";
                str3 += "</td>";
                str3 +="</tr>"
          }
          str3 += "</table>"
          $(".qqq3").html(str3);
}
</script>





						<!-- FOOTER Start
    ================================================== -->

						<footer>
							<div class="container">
								<div class="row">
									<div class="col-md-4">
										<div class="block clearfix">
											<a href="#"> <img src="images/footer-logo.png" alt="">
											</a>
											<p>Based on the employment assistance know-how of the
												Employment and Labor Ministry and Samsung's experience in
												software training, the program is designed to help job
												seekers succeed by providing them with software competency
												education and various job support services.</p>

											<!-- End Of /.social-icon -->
										</div>
										<!-- End Of /.block -->
									</div>
									<!-- End Of /.Col-md-4 -->
									<div class="col-md-4">
										<div class="block">
											<h4>GET IN TOUCH</h4>
											<p>
												<i class="fa fa-map-marker"></i> <span>SSAFY 대전캠퍼스 </span>
												대전 유성구 동서대로 98-39
											</p>
											<p>
												<i class="fa  fa-phone"></i> <span>Phone:</span> (+386) 40
												123 456
											</p>

											<p>
												<i class="fa  fa-mobile"></i> <span>Mobile:</span> (+386) 40
												654 123 651
											</p>

											<p class="mail">
												<i class="fa  fa-envelope"></i>Email: <span>ssafy@ssafy.com</span>
											</p>
										</div>
										<!-- End Of /.block -->
									</div>
									<!-- End Of Col-md-3 -->
									<div class="col-md-4">
										<div class="block">
											<h4 class="connect-heading">CONNECT WITH US</h4>
											<ul class="social-icon">
												<li><a class="facebook-icon" href="#"> <i
														class="fa fa-facebook"></i>
												</a></li>
												<li><a class="plus-icon" href="#"> <i
														class="fa fa-google-plus"></i>
												</a></li>
												<li><a class="twitter-icon" href="#"> <i
														class="fa fa-twitter"></i>
												</a></li>
												<li><a class="pinterest-icon" href="#"> <i
														class="fa fa-pinterest"></i>
												</a></li>
												<li><a class="linkedin-icon" href="#"> <i
														class="fa fa-linkedin"></i>
												</a></li>
											</ul>
											<!--                   <h4>UPCOMING ITEMS</h4> -->
											<!--                   <div class="media"> -->
											<!--                      <a class="pull-left" href="#"> <img class="media-object" -->
											<!--                         src="images/product-item.jpg" alt="..."> -->
											<!--                      </a> <a class="pull-left" href="#"> <img class="media-object" -->
											<!--                         src="images/product-item.jpg" alt="..."> -->
											<!--                      </a> <a class="pull-left" href="#"> <img class="media-object" -->
											<!--                         src="images/product-item.jpg" alt="..."> -->
											<!--                      </a> <a class="pull-left" href="#"> <img class="media-object" -->
											<!--                         src="images/product-item.jpg" alt="..."> -->
											<!--                      </a> <a class="pull-left" href="#"> <img class="media-object" -->
											<!--                         src="images/product-item.jpg" alt="..."> -->
											<!--                      </a> <a class="pull-left" href="#"> <img class="media-object" -->
											<!--                         src="images/product-item.jpg" alt="..."> -->
											<!--                      </a> -->
											<!--                   </div> -->
											<!-- End Of /.media -->
										</div>
										<!-- End Of /.block -->
									</div>
									<!-- End Of Col-md-3 -->
								</div>
								<!-- End Of /.row -->
							</div>
							<!-- End Of /.Container -->



							<!-- FOOTER-BOTTOM Start
    ================================================== -->
							<!-- 0314 11:53분 카드 이미지 삭제 -->
							<div class="footer-bottom">
								<div class="container">
									<div class="row">
										<div class="col-md-12">
											<p class="copyright-text pull-right">
												Safety Food @2019 Designed by <a href="http://edu.ssafy.com">SSAFY</a>
												All Rights Reserved
											</p>
										</div>
										<!-- End Of /.col-md-12 -->
									</div>
									<!-- End Of /.row -->
								</div>
								<!-- End Of /.container -->
							</div>
							<!-- End Of /.footer-bottom -->
						</footer>
						<!-- End Of Footer -->
						<!-- 0314 11:53분 카드 이미지 삭제 -->
						<a id="back-top" href="#"></a>
</body>
</html>
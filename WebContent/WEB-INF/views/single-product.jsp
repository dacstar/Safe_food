<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%
   request.setCharacterEncoding("utf-8");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<title>login</title>
<title>SSAFY SAFETY FOOD</title>
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

<script type=”text/javascript”
   src=”https://www.gstatic.com/charts/loader.js”> </script>
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

<!-- Custom css -->
<link href="css/custom.css" rel="stylesheet">

<!-- jS -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="js/owl.carousel.min.js" type="text/javascript"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/main.js" type="text/javascript"></script>

<script type="text/javascript"
   src="https://www.gstatic.com/charts/loader.js"></script>

<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});
	google.charts.setOnLoadCallback(drawChart);
	var table = new Array(7);
	table[0] = new Array(2);
	table[1] = new Array(2);
	table[2] = new Array(2);
	table[3] = new Array(2);
	table[4] = new Array(2);
	table[5] = new Array(2);
	table[6] = new Array(2);

	$(document).ready(function() {
		var idx = $.urlParam('rnum');//사진번호 가져옴
		test(idx);

	});

	$.urlParam = function(name) {
		var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(window.location.href);
		return results[1] || 0;
	}

	function test(aaa) {
		$.ajax({
					url : "food.json",
					dataType : 'json',
					success : function(result) {
						var len = result.length;
						var str2 = "";

						for (var i = 0; i < len; i++) {
							if (aaa == result[i].rnum) {
								table[1][1] = Number(result[i].nutrient.kcal);
								table[2][1] = Number(result[i].nutrient.fat);
								table[3][1] = Number(result[i].nutrient.carbo);
								table[4][1] = Number(result[i].nutrient.protein);
								table[5][1] = Number(result[i].nutrient.transfat);
								table[6][1] = Number(result[i].nutrient.sugar);
								break;
							}

						}

					}
				});
	}

	function showhrmid2(aa) {
		var ids = $(aa).val();

		$.ajax({
			url : "http://192.168.208.42:8199/humans/api/findEmployeeById/"
					+ ids,
			dataType : 'json',
			success : function(result) {
				//alert('allo');
				for (var i = 0; i < result.length; i++) {
					data.push(result[i]);
				}
			}
		});
	}
	function drawChart() {

		table[0][0] = 'Task';
		table[0][1] = 'Hours per Day';
		table[1][0] = 'Kcal';
		table[2][0] = 'Fat';
		table[3][0] = 'Carbo';
		table[4][0] = 'Protein';
		table[5][0] = 'Transfat';
		table[6][0] = 'Sugar';
		var data = google.visualization.arrayToDataTable(table);

		var options = {
			title : '식품영양정보'
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('piechart'));
		chart.draw(data, options);
	}
	$(window).resize(function() {
		drawChart();
	});
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


		<!-- MODAL Start
       ================================================== -->

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">회원가입</h4>
					</div>
					<div class="modal-body clearfix">

						<form action="#" method="post" id="create-account_form"
							class="std">
							<fieldset>
								<h3>Sign In</h3>
								<div class="form_content clearfix">
									<table>
										<tr>
											<td>아이디<span class="tStart"> *</span>
											</td>

											<td><input placeholder="email@example.com" type="email"
												id="name_create" name="name_create" value=""
												class="form-control"></td>
										</tr>
										<tr>
											<td>비밀번호<span class="tStart"> *</span>
											</td>

											<td><input placeholder="비밀번호" type="password"
												id="email_create" name="email_create" value=""
												class="form-control"></td>
										</tr>
										<tr>
											<td>이름<span class="tStart"> *</span>
											</td>

											<td><input placeholder="이름" type="text"
												id="email_create" name="email_create" value=""
												class="form-control"></td>
										</tr>
										<tr>
											<td>주소<span class="tStart"> *</span>
											</td>

											<td><input placeholder="주소" type="text"
												id="email_create" name="email_create" value=""
												class="form-control"></td>
										</tr>
										<tr>
											<td>전화번호<span class="tStart"> *</span>
											</td>

											<td><input placeholder="전화번호" type="tel"
												id="email_create" name="email_create" value=""
												class="form-control"></td>
										</tr>
										<tr>


											<td colspan="2" align="center">
												<form action="#" method="post" id="allergy" class="std">
													<fieldset>
														<legend>
															알레르기<span class="tStart"> *</span>
														</legend>
														<!-- 0314 13:41 수정 -->
														<div>
															<span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1"> 새우</label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1"> 우유
															</label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1">
																	돼지고기</label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1"> 계란
																	흰자</label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1">
																	민들레</label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1">
																	복숭아</label>
															</span>
														</div>

														<div>
															<span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1">
																	소고기 </label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1">
																	닭고기</label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1"> 김치</label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1"> 참치</label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1"> 게</label>
															</span> <span class="form-check"> <input
																class="form-check-input" type="checkbox" value=""
																id="defaultCheck1"> <label
																class="form-check-label" for="defaultCheck1"> 빵</label>
															</span>
														</div>
														<!-- 0314 13:41 수정 -->
													</fieldset>
												</form>
											</td>
										</tr>
									</table>

									<p class="submit">
										<button class="btn btn-primary">등 록</button>
									</p>
								</div>
							</fieldset>
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">Login</h4>
					</div>
					<div class="modal-body clearfix">

						<form action="" method="post" id="login_form" class="std">
							<fieldset>

								<div class="form_content clearfix">
									<table>
										<tr>
											<td>아이디</td>

											<td><input placeholder="email@example.com" type="email"
												id="name_create" name="name_create" value=""
												class="form-control"></td>
										</tr>
										<tr>
											<td>비밀번호</td>

											<td><input placeholder="비밀번호" type="password"
												id="email_create" name="email_create" value=""
												class="form-control"></td>
										</tr>
									</table>
									<p class="submit" id="loginButton">
										<button class="btn btn-primary">로그인</button>
									</p>
								</div>
							</fieldset>
						</form>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</section>

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
               <li><a href="index.html">베스트 섭취 정보</a></li>
               <li><a href="index.html">내 섭취 정보</a></li>
               <li><a href="index.html">예상 섭취 정보</a></li>

               <li class="dropdown"><a href="#"> PAGES <span
                     class="caret"></span>
               </a>
                  <ul class="dropdown-menu">
                     <li><a href="#">Action</a></li>
                     <li><a href="#">Another action</a></li>
                     <li><a href="#">Something else here</a></li>
                     <li><a href="#">Separated link</a></li>
                  </ul></li>

               <li><a href="#">PORTFOLIO</a></li>
            </ul>
         </div>
      </div>
   </nav>


   <!-- breadcrumb Start
    ================================================== -->

   <section id="topic-header">
      <div class="container">
         <div class="row">
            <div class="col-md-4">
               <h1>제품정보</h1>
               <p></p>
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-8 hidden-xs">
               <ol class="breadcrumb pull-right">
                  <li><a href="index.jsp">Home</a></li>
                  <li><a href="#">Products</a></li>
                  <li class="active">Single Products</li>
               </ol>
            </div>
            <!-- /.col-md-8 -->
         </div>
         <!-- /.row -->
      </div>
      <!-- /.container-->
   </section>
   <!-- /Section -->

   <section id="single-product">
      <div class="container">
         <div class="row">
            <section class="main-container">
               <div class="container">
                  <div class="row">
                     <div class="main col-12">


                        <!-- page-title end -->
                        <div class="image-box style-3-b">
                           <div class="row">
                              <div class="col-md-6 col-lg-4 col-xl-3">
                                 <div class="overlay-container" id="_picture">
                                 	<img src="${food.imgurl1 }" alter="${food.prdlstNm }이미지" style="width: 100%;" />
                                 </div>
                                 <div class="separator with-icon">
                                    <i class="fa fa-shopping-bag bordered"></i>
                                 </div>
                              </div>
                              <div class="col-lg-8 col-xl-7 pv-30">
                                 <table class="table">
                                    <tbody>
                                       <tr>
                                          <td width='100'>제품명</td>
                                          <td id="_varName">${food.prdlstNm }</td>
                                       </tr>
                                       <tr>
                                          <td width='100'>제조사</td>
                                          <td id="_make"></td>
                                       </tr>
                                       <tr>
                                          <td width='100'>원재료</td>
                                          <td id="_source"></td>
                                       </tr>
                                       <tr>
                                          <td width='150'>알레르기 성분</td>
                                          <td id="_alergy"></td>
                                       </tr>
                                    </tbody>
                                 </table>
                                 <form class="clearfix row grid-space-10">
                                    <div class="form-group">
                                       <label>Quantity</label> <input type="text"
                                          class="form-control" id="qnt" name="qnt" value="1">
                                    </div>
                                 </form>
                                 <div class="product elements-list">
                                    <label> </label>
                                    <div class="btn-group">
                                       <a href="#" onclick="addIntakeFood(11)"
                                          class="btn btn-default btn-sm"><i
                                          class="fa fa-user pr-2"></i> 추가</a> <a href="#"
                                          onclick="addIntakePrev(11)" class="btn btn-default btn-sm"><i
                                          class="fa fa-user pr-2"></i> 찜</a>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <h4 class="space-top">영양 정보</h4>
                        <div style="display: flex">
                           <div id="piechart" class="pie"></div>
                           <div class="col-sm-6">
                              <table class="table">
                                 <tbody>
                                    <tr>
                                       <td width='200'>일일 제공량</td>
                                       <td id="_capacity"></td>
                                    </tr>
                                    <tr>
                                       <td width='200'>칼로리</td>
                                       <td id="_kcal">${food.kcal }</td>
                                    </tr>
                                    <tr>
                                       <td width='200'>탄수화물</td>
                                       <td id="_carbo">${food.carbo }</td>
                                    </tr>
                                    <tr>
                                       <td width='200'>단백질</td>
                                       <td id="_protein">${food.protein }</td>
                                    </tr>
                                    <tr>
                                       <td width='200'>지방</td>
                                       <td id="_fat">${food.fat }</td>
                                    </tr>
                                    <tr>
                                       <td width='200'>당류</td>
                                       <td id="_sugar">${food.sugar }</td>
                                    </tr>
                                    <tr>
                                       <td width='200'>나트륨</td>
                                       <td>0</td>
                                    </tr>
                                    <tr>
                                       <td width='200'>콜레스테롤</td>
                                       <td>0</td>
                                    </tr>
                                    <tr>
                                       <td width='200'>포화 지방산</td>
                                       <td>0</td>
                                    </tr>
                                    <tr>
                                       <td width='200'>트렌스지방</td>
                                       <td id="_trans"></td>
                                    </tr>
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>

            </section>

            <div class="row">
               <div class="col-md-9">
                  <!-- Nav tabs -->
                  <ul class="nav nav-tabs">
                     <li class="active"><a href="#home" data-toggle="tab">More
                           Info</a></li>
                     <li><a href="#profile" data-toggle="tab">Comments</a></li>
                  </ul>

                  <!-- Tab panes -->
                  <div class="tab-content">
                     <div class="tab-pane active" id="home">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                           Delectus eligendi quidem vel sit expedita nam sint non
                           explicabo magni totam?</p>
                     </div>
                     <div class="tab-pane" id="profile">
                        <p>No customer comments for the moment.</p>
                     </div>
                  </div>
               </div>
               <!-- End of /.col-md-9 -->
               <div class="col-md-3">
                  <div class="blog-sidebar">
                     <div class="block"></div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>

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
                     software training, the program is designed to help job seekers
                     succeed by providing them with software competency education and
                     various job support services.</p>

                  <!-- End Of /.social-icon -->
               </div>
               <!-- End Of /.block -->
            </div>
            <!-- End Of /.Col-md-4 -->
            <div class="col-md-4">
               <div class="block">
                  <h4>GET IN TOUCH</h4>
                  <p>
                     <i class="fa fa-map-marker"></i> <span>SSAFY 대전캠퍼스 </span> 대전 유성구
                     동서대로 98-39
                  </p>
                  <p>
                     <i class="fa  fa-phone"></i> <span>Phone:</span> (+386) 40 123
                     456
                  </p>

                  <p>
                     <i class="fa  fa-mobile"></i> <span>Mobile:</span> (+386) 40 654
                     123 651
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
               </div>
            </div>
         </div>
      </div>



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
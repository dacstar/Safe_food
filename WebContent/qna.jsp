
<% request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SSAFY SAFETY FOOD</title>
<script src="https://unpkg.com/vue"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,700'
	rel='stylesheet' type='text/css'>
<link href="http://fonts.googleapis.com/earlyaccess/nanumpenscript.css"
	rel="stylesheet" type='text/css'>

<!-- Css -->
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" />
<link rel="stylesheet" href="css/owl.carousel.css">
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
	<!-- End of /Section -->



	<!-- LOGO Start
    ================================================== -->

	<header>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<a href="#"> <img src="images/logo.jpg" alt="logo">
					</a>
				</div>
				<!-- End of /.col-md-12 -->
			</div>
			<!-- End of /.row -->
		</div>
		<!-- End of /.container -->
	</header>
	<!-- End of /Header -->




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

			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of /.nav -->






	<!-- PRODUCTS Start
    ================================================== -->

		<div id='app'>
		<div class="container">
		<component v-bind:is="currentview"></component>
		</div>
		</div>
	
			<script type="text/javascript" id="questionlist">
			<div class="container">
			<form action="">
			<a href="#"  @click='showlist(1)'> <img src="./images/plus_PNG31.png" width="30px" height="30px"></a>
			<input type="text"/>
			<input type="submit" value="검색"/>
			</form>
			<div class="card" v-for="q in info">
			<div class="card-body">
				<span>Q.</span><span v-html="q.question"></span>
				<p style="text-align:right" v-html="q.id"></p>
			</div>
			<div class="card" v-if="q.isanswered">
				<div class="card-body">
					<span v-html="q.answer"></span>
				</div>
			</div>
			<div min-height="25px">
			</div>
			</div>
</script>



<script type="text/x-template" id="addhrmtemplate">
<div>
<div>
<form action="" method="post" @submit.prevent="addQuestion">
<table class="content_table">
<colgroup>
      <col style="width:30%;" />
      <col style="width:70%;" />                     
</colgroup>   
<tr>
<th>제목</th>
<td><input data-msg="질문" type="text" name="question" id="_title" size="30" v-model="ctitle"/></td>
</tr>
<tr>
<th>작성자</th>
<td><input data-msg="작성자" type="text" name="id"  id="_writer" size="20" v-model="cwriter" /></td>
</tr>
<tr>
<td colspan="2" style="height:50px; text-align:center;">
<button type="submit" name="button">질문등록</button></td>
</tr>
</table>
</form>
</div>
</div>
</script>




	<!-- End of /.col-md-9 -->

	<!-- End of /.row -->




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
						<!-- 						<h4>UPCOMING ITEMS</h4> -->
						<!-- 						<div class="media"> -->
						<!-- 							<a class="pull-left" href="#"> <img class="media-object" -->
						<!-- 								src="images/product-item.jpg" alt="..."> -->
						<!-- 							</a> <a class="pull-left" href="#"> <img class="media-object" -->
						<!-- 								src="images/product-item.jpg" alt="..."> -->
						<!-- 							</a> <a class="pull-left" href="#"> <img class="media-object" -->
						<!-- 								src="images/product-item.jpg" alt="..."> -->
						<!-- 							</a> <a class="pull-left" href="#"> <img class="media-object" -->
						<!-- 								src="images/product-item.jpg" alt="..."> -->
						<!-- 							</a> <a class="pull-left" href="#"> <img class="media-object" -->
						<!-- 								src="images/product-item.jpg" alt="..."> -->
						<!-- 							</a> <a class="pull-left" href="#"> <img class="media-object" -->
						<!-- 								src="images/product-item.jpg" alt="..."> -->
						<!-- 							</a> -->
						<!-- 						</div> -->
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

	<a id="back-top" href="#"></a>
	<script type="text/javascript">
var questionlist = Vue.component('questionlist',{
    template: '#questionlist',
    data(){
        return {
          info: [],
          loading: true,
          errored: false 
        }
      },
      computed:{
      },
      methods:{
    	  	 pushAnsBtn: function(qNum){
    	  		 console.log(this.info.length);
    	  		  for(var i=0;i<this.info.length;i++){
    	  			var q = this.info[i];
    	  			console.log(q);
    	  			 if(q.qNum==qNum){
    	  				 if(q.isShowAns){
    	  					 q.isShowAns = false;
    	  				 }else{
    	  					 q.isShowAns = true;
    	  				 }
    	  				break;
    	  			 }
    	  		 } 
    	  		  
    	  	 },
	    	 addquestion: function(question){
	    		  axios
	    		    .post('http://localhost:8197/ssafyvue/api/addQuestion/'+question)
	    		    .then(function(response){
	    		    	  if(response.data.state=='succ'){
	    		    		  alert(response.data.name+"이 실행되었습니다.");
	    		    		  location.href='./qna.jsp';
	    		    	  }else{
	    		    		  alert(response.data.name+"에 실패하였습니다.");
	    		    		  location.href='./qna.jsp';
	    		    	  }
	    		      })
	    		    .catch(error => {
	    		      console.log(error)
	    		      this.errored = true
	    		    })
	    		    .finally(() => this.loading = false);
	    	 }
/* 	    	 deletequestion: function(qNum){
	    		  axios
	    		    .post('http://localhost:8197/ssafyvue/api/deleteQuestion/'+qNum)
	    		    .then(function(response){
	    		    	  if(response.data.state=='succ'){
	    		    		  alert(response.data.name+"이 실행되었습니다.");
	    		    		  location.href='./qna.jsp';
	    		    	  }else{
	    		    		  alert(response.data.name+"에 실패하였습니다.");
	    		    		  location.href='./qna.jsp';
	    		    	  }
	    		      })
	    		    .catch(error => {
	    		      console.log(error)
	    		      this.errored = true
	    		    })
	    		    .finally(() => this.loading = false);
	    	 } */
          },
      filters: {
    	   salarydecimal (value) {
          return value.toFixed(2)
        }
      }, 
      mounted () {
	         axios
	           .get('http://localhost:8197/ssafyvue/api/findAllQuestion')
	           .then(response => (this.info = response.data))
	           .catch(error => {
	             console.log(error)
	             this.errored = true
	           })
	           .finally(() => this.loading = false);
      }
});
var addhrm = Vue.component('addhrm',{
    template: '#addhrmtemplate',
    data () {
       return {
         loading: true,
         errored: false,
         question: '',
         id: '',
         answer: '',
       }
     },
     mounted () {
       axios
         .get('http://localhost:8197/ssafyvue/api/findAllQuestion')
         .then(response => (this.info = response.data))
         .catch(error => {
           console.log(error)
           this.errored = true
         })
         .finally(() => this.loading = false);
     },
     methods: {
    	 addquestion: function(q){
   		  axios
   		    .post('http://localhost:8197/ssafyvue/api/addQuestion/'+q)
   		    .then(function(response){
   		    	  if(response.data.state=='succ'){
   		    		  alert(response.data.name+"이 실행되었습니다.");
   		    		  location.href='./qna.jsp';
   		    	  }else{
   		    		  alert(response.data.name+"에 실패하였습니다.");
   		    		  location.href='./qna.jsp';
   		    	  }
   		      })
   		    .catch(error => {
   		      console.log(error)
   		      this.errored = true
   		    })
   		    .finally(() => this.loading = false);
   	 }
   }
});
var App=new Vue({
  el: '#app',
  data: {
	  currenttitle:'SSAFY HRM LIST',
	  empid:'',
	  currentview: 'questionlist',
	  allviews:['questionlist','addhrmtemplate' ],
      cutt:['SSAFY HRM LIST','SSAFY HRM ADD EMPLOEE','SSAFY HRM SEARCH BY ID','SSAFY HRM SEARCH BY NAME','SSAFY HRM SHOW DETAIL','SSAFY HRM DEPARTMENT CHART']
     },
   components: {
		questionlist: questionlist,
		addhrmtemplate:addhrmtemplate
     },
     methods:{
    	 showlist: function (val) {
    		 //alert(val);
			 this.currentview=this.allviews[val];
    		 this.currenttitle=this.cutt[val];
    		 console.log(this.currentview);
    		 //listhrm
    		 
         }
     }
});
Vue.config.devtools = true;
 </script>
</body>
</html>
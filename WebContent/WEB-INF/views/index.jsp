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
   $(function() {
      $('#loginButton').click(function() {
         var sr = "입력하세요!";
         if ($('#_name_create').val() == '') {
            alert('아이디를' + sr);
         } else if ($('#_email_create').val() == '') {
            alert('이름을' + sr);
         } else {

            $('#login_form').submit();
         }

      });

      $('#cantGoInfo').click(function() {
         alert('로그인하셈');
      });

      $('#_enroll').click(function() {
         var sr = "입력하세요!";

         if ($('#name_create').val() == '') {
            alert('아이디를' + sr);
         } else if ($('#password').val() == '') {
            alert('비밀번호를' + sr);
         } else if ($('#email_create').val() == '') {
            alert('이름을' + sr);
         } else if ($('#location').val() == '') {
            alert('주소를' + sr);
         } else if ($('#pnum').val() == '') {
            alert('폰넘버를' + sr);
         } else {
            alert("회원가입 시도!");
            $('#create-account_form').submit();
         }
      });

      /* -------------------------------------------------------*/
      $('#_snum3').click(function() {
         var id = $('#_snum').val();
         var str = $('#_text').val();

         if(id == 1){ //모든 상품 검색
            $('#_form3').submit();
            return;
         }else if(id == 2){ //상품이름 검색
            if (str == "") {
               alert("내용을 입력 해주세요");
               return;
            }
            location.href = 'findFoodByName.do?name=' + str; // name으로 찾기, GET방식
         }else if (id == 3) { //상품 번호 검색
            if (str == "") {
               alert("내용을 입력 해주세요");
               return;
            }
            location.href = 'findFoodById.do?do=' + str + '&p=1'; //id로 찾기, GET방식
         }
      });
      
      
      $('#_btnGetid').click(function(){
         
         var _id=$('#id_check').val();
         alert(_id);
         if(_id == ""){
            alert('아이디를 입력해주세요');
         }else{
            idcheck(_id);
         }
      });
      

   });
   
   function idcheck(id){
      $.ajax({
            type:"POST",
            url:"./getID.do",
            async: true,
            data: "m_id="+id,
            success:function(msg){
               outputList2(msg);
            }
      });
   };
   
   function outputList2(msg){  
      if(msg.message=='SUCS'){
         //alert(msg.message);
         $("#_rgetid").html("사용할 수 없는 아이디 입니다.");
         $("#m_id").val("");
      }else{
         //alert(msg.message);
         $("#_rgetid").html("사용할 수 있는 아이디 입니다.");
         $("#m_id").val($("#id_check").val());
         
      }
        
   } ;
   
   
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

                  <c:if test="${empty login}">
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
                  <c:if test="${not empty login}">
                     <li>
                        ${login.m_id }님 반갑습니다!!
                        
                        <a href="./logout.do" data-toggle="modal">
                           <i class="fa fa-shopping-cart" ></i>
                           LogOut
                        </a>
                     </li>
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
               </div>
            </div>
         </div>
      </div>


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

<!-- ===============회원가입을 만들어볼까요!====================== -->
                  <form action="signUpaf.do" method="post" id="create-account_form" class="std" name="memberdto">
                     <!-- <input type="hidden" name='action' value='signin'> -->
                     <fieldset>
                        <h3>Sign In</h3>
                        <div class="form_content clearfix">
                           <table>
                           <tr>
                                 <td><a href="#none" id="_btnGetid">아이디체크</a> <span class="tStart"> *</span>   </td>
                                 <td><input placeholder="email@example.com" type="text"
                                    id="id_check"  value="" class="form-control"/>
                                 <span class="tStart" id="_rgetid"></span></td>
                              </tr>
                              <tr>
                                 <td>아이디 <span class="tStart"> *</span>   </td>
                                 <td><input placeholder="email@example.com" type="text"
                                    id="name_create" name="m_id" value="" class="form-control">
                                 </td>
                              </tr>
                              <tr>
                                 <td>비밀번호<span class="tStart"> *</span></td>
                                 <td><input placeholder="비밀번호" type="text"
                                    id="password" name="m_pwd" value="" class="form-control"></td>
                              </tr>
                              <tr>
                                 <td>이름<span class="tStart"> *</span></td>
                                 <td><input placeholder="이름" type="text"
                                    id="email_create" name="m_name" value="" class="form-control"></td>
                              </tr>
                              <tr>
                                 <td>주소<span class="tStart"> *</span></td>
                                 <td><input placeholder="주소" type="text" id="location_2"
                                    name="m_location" value="" class="form-control"></td>
                              </tr>
                              <tr>
                                 <td>전화번호<span class="tStart"> *</span></td>
                                 <td><input placeholder="전화번호" type="tel" id="pnum"
                                    name="m_phonenum" value="" class="form-control"></td>
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
                                             id="defaultCheck1" name='allergy'> <label
                                             class="form-check-label" for="defaultCheck1"> 밀 </label>
                                          </span> <span class="form-check"> <input
                                             class="form-check-input" type="checkbox" value="콩"
                                             name='allergy' id="defaultCheck1"> <label
                                             class="form-check-label" for="defaultCheck1"> 콩</label>
                                          </span> <span class="form-check"> <input
                                             class="form-check-input" type="checkbox" value="갑각류"
                                             name='allergy' id="defaultCheck1"> <label
                                             class="form-check-label" for="defaultCheck1"> 갑각류
                                          </label>
                                          </span> <span class="form-check"> <input
                                             class="form-check-input" type="checkbox" value="우유"
                                             name='allergy' id="defaultCheck1"> <label
                                             class="form-check-label" for="defaultCheck1"> 우유</label>

                                          </span>
                                       </div>

                                       <div>
                                          <span class="form-check">
                                          <input
                                             class="form-check-input" type="checkbox" value="돼지고기"
                                             name='allergy' id="defaultCheck1">
                                             <label
                                             class="form-check-label" for="defaultCheck1">
                                                돼지고기</label>
                                          </span> </span> <span class="form-check"> <input
                                             class="form-check-input" type="checkbox" value="달걀흰자"
                                             name='allergy' id="defaultCheck1"> <label
                                             class="form-check-label" for="defaultCheck1">
                                                달걀흰자</label>
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
                                    </fieldset>
                                 </td>
                              </tr>
                           </table>

                           </p>
                        </div>
                     </fieldset>
               </form>
                     </div>
                     <center>
                        <p class="submit">
                           <button class="btn btn-primary" id='_enroll'>등 록</button>
                        </p>
                     </center>
   
                  <div class="modal-footer">
                     <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  </div>
            </div>
         </div>
      </div>



<!-- ===============로그인을 만들어볼까요!====================== -->
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

                  <form action="logInaf.do" method="post"
                     id="login_form" class="std" name="memberdto">
                     <input type="hidden" name='action' value='login'>
                     <fieldset>

                        <div class="form_content clearfix">
                           <table>
                              <tr>
                                 <td>아이디</td>

                                 <td><input placeholder="email@example.com" type="email"
                                    id="_name_create" name="m_id" value="" class="form-control"></td>
                              </tr>
                              <tr>
                                 <td>비밀번호</td>

                                 <td><input placeholder="비밀번호" type="password"
                                    id="_email_create" name="m_pwd" value="" class="form-control"></td>
                              </tr>
                           </table>
                           </p>
                        </div>
                     </fieldset>
                  </form>
                  <center>
                     <p class="submit" id="loginButton">
                        <button class="btn btn-primary">로그인</button>
                     </p>
                  </center>

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

         <div class="collapse navbar-collapse"
            id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav nav-main">
               <li class="active"><a href="#">공지사항</a></li>
               <li><a href="products.html">상품정보</a></li>
               <li><a href="qna.jsp">Q n A</a></li>
               <c:if test="${empty login}">
                  <% /* TODO 내 정보 링크   */ %>
                  <li><a href="#" id="cantGoInfo">내정보</a></li>
               </c:if>
               <c:if test="${not empty login}">
                  <% /* TODO 내 정보 링크   */ %>
                  <li><a href="">내정보</a></li>
               </c:if>
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
            </ul>
         </div>
      </div>
   </nav>


   <!-- FEATURES Start  ================================================== -->
   <form action="findAllFood.do" method="post" id="_form3">
      <section id="features">
         <div class="container">
            <div class="row">
               <div class="col-xs-8 col-xs-offset-2">
               
                  <div class="input-group">
                  
                     <div class="input-group-btn search-panel">
                        <select name='snum' id='_snum'>
                           <option selected>셀렉트박스</option>
                           <option value='1'>모든 상품</option>
                           <option value='2'>상품명</option>
                           <option value='3'>상품번호</option>
                        </select>
                     </div>
                     
                     <input type="hidden" name="search_param" value="all" id="search_param">
                     <input type="text" class="form-control" name="x" placeholder="Search term..." id='_text'>
                     <span class="input-group-btn">
                        <button class="btn btn-default" id='_snum3' type="button">
                           <img src="images/search.png">
                        </button>
                     </span>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </form>

   <!-- CATAGORIE Start
    ================================================== -->

   <!--  바뀐부분 -->
   <section id="products">
      <div class="container">
      
         <div class="row">
            <div class="col-md-12">
               <div class="products-heading">
                  <h2>검색목록</h2>
               </div>
            </div>
         </div>
         
         <div class="row">
            <c:if test="${empty foods}">
               <div class="col-md-3">
                  <div class="products">
                     <a href="">검색 내용이 없습니다.</a>
                  </div>
               </div>
            </c:if>

            <c:forEach items="${foods}" var="food" varStatus="vs">
               <div class="col-md-2">
                  <div class="products">
                     <a href="fooddetail.do?rnum=${food.rnum}"> <img
                        src="${food.imgurl1}" alt="">
                     </a> <a href="fooddetail.do?rnum=${food.rnum}">
                        <h4>${food.prdlstNm }</h4>
                     </a> <a class="view-link shutter" href="#"> <i
                        class="fa fa-plus-circle"></i>추가
                     </a> <a class="view-link shutter" href="#"> <i
                        class="fa fa-plus-circle"></i>찜
                     </a>
                  </div>
               </div>
            </c:forEach>
            
         </div>
      </div>
   </section>


   <!-- PRODUCTS Start
    ================================================== -->
   <!--  바뀐부분 -->
   <script   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script>
   <script type="text/javascript">
      function FoodSort() {
         $.ajax({
            url : "food.json",
            dataType : 'json',
            success : function(result) {
               Search(result);

            }
         });
      }

      $(function() {
         FoodSort();
      });

      function Search(food_arr) {
         var len = food_arr.length;
         var str = "";
         str += "<table width='100%' height='100%' align='center'>";
         for (var i = 0; i < 1; i++) {
            str += "<tr height='25%'>";
            str += "<td width='30%' rowspan='4'>";
            str += "<img src='";
            str += food_arr[i].imgurl1;
            str += "' width='100%' height='100%'>";
            str += "</img>";
            str += "</td>";
            str += "</tr>"
         }
         str += "</table>"
         $(".qqq").html(str);

         var str2 = "";
         str2 += "<table width='100%' height='100%' align='center'>";
         for (var i = 1; i < 2; i++) {
            str2 += "<tr height='25%'>";
            str2 += "<td width='30%' rowspan='4'>";
            str2 += "<img src='";
            str2 += food_arr[i].imgurl1;
            str2 += "' width='100%' height='100%'>";
            str2 += "</img>";
            str2 += "</td>";
            str2 += "</tr>"
         }
         str2 += "</table>"
         $(".qqq2").html(str2);

         var str3 = "";
         str3 += "<table width='100%' height='100%' align='center'>";
         for (var i = 2; i < 3; i++) {
            str3 += "<tr height='25%'>";
            str3 += "<td width='30%' rowspan='4'>";
            str3 += "<img src='";
            str3 += food_arr[i].imgurl1;
            str3 += "' width='100%' height='100%'>";
            str3 += "</img>";
            str3 += "</td>";
            str3 += "</tr>"
         }
         str3 += "</table>"
         $(".qqq3").html(str3);
      }
   </script>



   <% /* TODO 페이지네이션 */ %>
   <div class="pagination-bottom" id="foodlist_pagination">
      <ul class="pagination">
         <li class="disabled"><a href="#">&laquo;</a></li>
         <c:forEach begin="${startPage}" end="${endPage}" var="p">
            <c:if test="${page == p}">
               <li class="active"><a href="${parents}&action=${parents}&p=${p}">
                     ${p} </a></li>
            </c:if>

            <c:if test="${page != p}">
               <li><a href="${parents}&action=${parents}&p=${p}"> ${p} </a></li>
            </c:if>
         </c:forEach>
         <li><a href="#">»</a></li>
      </ul>
   </div>


   <section id="catagorie">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="block">
                  <div class="block-heading">
                     <h2>음식 설명</h2>
                  </div>
                  <div class="row">
                  
                     <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                           <a class="catagotie-head" href="blog-single.html">
                              <div class="qqq"></div>
                           </a>
                           <div class="caption">
                              <p>Lorem ipsum dolor sit amet, consectetur adipisicing
                                 elit. Iste, aut, esse, laborum placeat id illo a expedita
                                 aperiam...</p>
                              <p>
                                 <a href="blog-single.html"
                                    class="btn btn-default btn-transparent" role="button"> <span>Check
                                       Items</span>
                                 </a>
                              </p>
                           </div>
                        </div>
                     </div>
                     
                     <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                           <a class="catagotie-head" href="blog-single.html">
                              <div class="qqq2"></div>
                           </a>
                           <div class="caption">
                              <p>Lorem ipsum dolor sit amet, consectetur adipisicing
                                 elit. Iste, aut, esse, laborum placeat id illo a expedita
                                 aperiam...</p>
                              <p>
                                 <a href="blog-single.html"
                                    class="btn btn-default btn-transparent" role="button"> <span>Check
                                       Items</span>
                                 </a>
                              </p>
                           </div>
                        </div>
                     </div>
                     
                     <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                           <a class="catagotie-head" href="blog-single.html">
                              <div class="qqq3"></div>
                           </a>
                           <div class="caption">
                              <p>Lorem ipsum dolor sit amet, consectetur adipisicing
                                 elit. Iste, aut, esse, laborum placeat id illo a expedita
                                 aperiam...</p>
                              <p>
                                 <a href="blog-single.html"
                                    class="btn btn-default btn-transparent" role="button"> <span>Check
                                       Items</span>
                                 </a>
                              </p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </section>

   <!-- CALL TO ACTION Start
    ================================================== -->

   <section id="call-to-area">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="block">
                  <div class="block-heading">
                     <h2>Our Partners</h2>
                  </div>
               </div>
               <!-- End of /.block -->
               <div id="owl-example" class="owl-carousel">
                  <div>
                     <img src="images/company-1.png" alt="">
                  </div>
                  <div>
                     <img src="images/company-2.png" alt="">
                  </div>
                  <div>
                     <img src="images/company-3.png" alt="">
                  </div>
                  <div>
                     <img src="images/company-4.png" alt="">
                  </div>
                  <div>
                     <img src="images/company-5.png" alt="">
                  </div>
                  <div>
                     <img src="images/company-6.png" alt="">
                  </div>
                  <div>
                     <img src="images/company-7.png" alt="">
                  </div>
                  <div>
                     <img src="images/company-8.png" alt="">
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
      <div class="footer-bottom">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <p class="copyright-text pull-right">
                     Safety Food @2019 Designed by <a href="http://edu.ssafy.com">SSAFY</a>
                     All Rights Reserved
                  </p>
               </div>
            </div>
         </div>
      </div>
   </footer>
   <a id="back-top" href="#"></a>
</body>
</html>
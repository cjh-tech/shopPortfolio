 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String id = (String)request.getAttribute("id");
%>    
<!DOCTYPE html>
<html lang="kor">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Medicamp Responsive Bootstrap Template">
<meta name="keywords" content="Pixel">
<meta name="author" content="rkwebdesigns">
<!-- Site Title   -->
<title>Medical Shopping</title>
<!-- Fav Icons   -->
<link rel="icon" href="resources/images/favicon.png" type="image/x-icon">
<!-- Bootstrap -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
<!-- Fonts Awesome -->
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,800italic,800,600italic,600,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!-- magnific-popup -->
<link href="resources/css/magnific-popup.css" rel="stylesheet">
<!-- animate Effect -->
<link href="resources/css/animate.css" rel="stylesheet">
<!-- Main CSS -->
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="resources/css/responsive.css" rel="stylesheet">
</head>
<body>
<header id="header" class="head">
  <div class="top-header">  
     <div class="container">
       <div class="row ">
         <ul class="contact-detail2 col-md-6 pull-left">
           <li> <a href="#"><i class="fa fa-mobile"></i>Call me 010-1234-5678</a></li>
           <li> <a href="#"><i class="fa fa-envelope-o"></i> example@naver.com</a> </li>
         </ul>
         <div class="social-links col-md-6 pull-right">
           <ul class="social-icons pull-right">
             <li> <a href="http://facebook.com" target="_blank"><i class="fa fa-facebook"></i></a> </li>
             <li> <a href="http://twitter.com" target="_blank"><i class="fa fa-twitter"></i></a> </li>
             <li> <a href="http://dribble.com/" target="_blank"><i class="fa fa-skype"></i></a> </li>
             <li> <a href="http://pinterest.com" target="_blank"><i class="fa fa-dribbble"></i></a> </li>
           </ul>
         </div>
       </div>
     </div>
    </div>
  <nav class="navbar navbar-default navbar-menu">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> 
          <span class="sr-only">Toggle navigation</span> 
          <span class="icon-bar"></span> 
          <span class="icon-bar"></span> 
          <span class="icon-bar"></span> 
        </button>
        <a class="navbar-brand" href="main">
            <div class="logo-text"><span><samp>M</samp>Medical</span>Shopping</div>
            <!-- <img src="images/logo.png" alt="logo"> -->
          </a> 
      </div>
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" data-hover="dropdown" data-animations="fadeIn">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="main">베스트상품</a></li>
                <li><a href="medicine">의료용품 </a></li>
                <li><a href="food">식품</a></li>
                 <li>
                	<% if(id == null || id.isEmpty()) { %>
                	    <a href="login">로그인</a>
                	<% } else { %>
                		<a href="logout">로그아웃</a>
                	<% } %>
                 </li>
                 	<% if(id == null || id.isEmpty()) { %>
                	 <li><a href="register">회원가입</a><li>
                	<% } else { %>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"  aria-expanded="false">개인정보<span class="caret"></span></a>
                       <ul class="dropdown-menu">
                		<li><a href="mybasket">장바구니</a></li>
                		<li><a href="mypage">마이페이지</a></li>
                	   </ul>
               		</li> 
                	<% } %>
              	<li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">고객센터<span class="caret"></span></a>
	              <ul class="dropdown-menu">
	                <li><a href="faq">FAQ</a></li>
	                <li><a href="inquiryboard">문의게시판</a></li>
	              </ul>
               </li>
            </ul>   
          </div>
      <!--/.nav-collapse --> 
    </div>
  </nav>
</header>
<section id="inner-title" class="inner-title">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-lg-6">
        <h2>식품</h2>
      </div>
      <div class="col-md-6 col-lg-6">
        <div class="breadcrumbs">
          <ul>
            <li>현재페이지 : 식품</li>
           </ul>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="section-12">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-md-12">
        <div class="portfolioFilter text-center"> 
          <a href="#" data-filter="*" class="current">모두보기</a>/ 
          <a href="#" data-filter=".dairy">유제품</a>/
          <a href="#" data-filter=".cereals">곡류</a>/
          <a href="#" data-filter=".meat">육류</a>/
          <a href="#" data-filter=".fresh">신선식품</a>
        </div>
        <div class="portfolioContainer">
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 dairy text-center"> <a  href="product?product_id=13"><img src="resources/images/product/flaneyogurt.jpg" class="img-responsive wow zoomIn" alt ="image"></a><p> 요프레 플레인 화이트 1개 4500원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 dairy text-center"> <a  href="product?product_id=14"><img src="resources/images/product/yogurt.jpg" class="img-responsive wow zoomIn" alt="image"></a><p> 서울우유 요구르트 65ml 30개입 4000원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 dairy text-center"><a  href="product?product_id=15"> <img src="resources/images/product/soymilk.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> 삼육두유 검은참깨두유 32개입  15000원 </p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 cereals text-center"><a  href="product?product_id=16"> <img src="resources/images/product/barley.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> 찰보리 4kg 10000원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 cereals text-center"><a  href="product?product_id=17"> <img src="resources/images/product/oat.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> 귀리 1kg 5000원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 cereals text-center"><a  href="product?product_id=18"> <img src="resources/images/product/perilla.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> 들깨 3kg 23000원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 meat text-center"><a href="product?product_id=19"> <img src="resources/images/product/beef.jpg" alt="image" class="img-responsive wow zoomIn"></a><p>소고기 300g 13000원 </p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 meat text-center"><a  href="product?product_id=20"> <img src="resources/images/product/fork.jpg" alt="image" class="img-responsive wow zoomIn"></a><p>돼지고기 앞다리살 500g 4000원 </p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 meat text-center"><a  href="product?product_id=21"> <img src="resources/images/product/mackerel.jpg" alt="image" class="img-responsive wow zoomIn"></a><p>고등어 1kg 12000원 </p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 fresh text-center"><a  href="product?product_id=22"> <img src="resources/images/product/garlic.jpg" alt="image" class="img-responsive wow zoomIn"></a><p>다진마늘 500g 3200원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 fresh text-center"><a  href="product?product_id=23"> <img src="resources/images/product/sweetpotato.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> 고구마 10kg 35000원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 fresh text-center"><a  href="product?product_id=24"> <img src="resources/images/product/ginseng.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> 인삼 500g 30000원 </p> </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="section10" class="section-10-background">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-lg-9">
        <div class="section-10-box-text-cont">
          <h3>더 많은 상품은? <span class="color-yellow">  Call : 010-1234-5678</span></h3>
        </div>
      </div>
      <div class="col-md-3 col-lg-3">
        <div class="section-10-btn-cont"><a href="medicine" class="btn btn-secondary wow fadeInUp">상품보러가기</a></div>
      </div>
    </div>
  </div>
</section>
<section id="footer-top" class="footer-top">
  <div class="container">
      <div class="col-md-3 col-lg-3">
        <div class="footer-top-box">
          <h4>저희 기업에 대해</h4>
          <p>창립 1주년된 저희 기업은 고객님에게 더 좋은 물건을 보답하고자 매일매일 신선하고 검증된 제품만을 선별하고 있습니다</p>
         </div>
       </div>
        <div class="col-md-3 col-lg-3">
        <div class="footer-top-box">   
          <h4>Office address</h4>
          <b>서울특별시 강남구 진달래길 34길 14 진한빌딩 301호 </b> 
         </div>
       </div> 
       <div class="col-md-3 col-lg-3">
        <div class="footer-top-box">  
          <h4>Contact us</h4><br/>
            <b>Mob: </b> 010-1234-5678<br/>
            <b>Mail: </b> example@naver.com </p>	
          </div>
       </div>   
      <div class="col-md-3 col-lg-3">
        <div class="footer-top-box">
          <h4>Subscribe</h4>
          <div class="cs-form">
            <form action="#" method="post">
              <div class="input-holder">
                <input type="email" placeholder="Enter Valid Email Address">
                <label> <i class="fa fa-location-arrow fa-2x"></i>
                  <input class="submit-bgcolor" type="submit" value="submit">
                </label>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
</section>
<section id="footer-bottom" class="footer-bottom">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-lg-9">
        <div class="copyright">Copyright &copy; 2020. All Rights Reserved</div>
      </div>
      <div class="col-lg-3">
        <ul class="list-inline social-buttons">
          <li><a href="#"><i class="fa fa-twitter"></i></a></li>
          <li><a href="#"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
        </ul>
      </div>
    </div>
  </div>
</section>
<script src="resources/js/jquery.min.js"></script> 
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.plugin.min.js"></script>
<script src="resources/js/jquery.isotope.min.js"></script> 
<script src="resources/js/jquery.magnific-popup.min.js"></script> 
<script src="resources/js/bootstrap-dropdownhover.min.js"></script>
<script src="resources/js/wow.min.js"></script> 
<script src="resources/js/waypoints.min.js"></script> 
<script src="resources/js/jquery.counterup.min.js"></script> 
<script src="resources/js/main.js"></script>
</body>
</html>
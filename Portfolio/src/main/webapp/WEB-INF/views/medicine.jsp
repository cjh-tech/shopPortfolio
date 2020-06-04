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
        <h2>의료용품</h2>
      </div>
      <div class="col-md-6 col-lg-6">
        <div class="breadcrumbs">
          <ul>
            <li>현재페이지 : 의료용품</li>
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
          <a href="#" data-filter=".detergent">세정제</a>/
          <a href="#" data-filter=".mask">마스크</a>/
          <a href="#" data-filter=".protective">방역복</a>/
          <a href="#" data-filter=".medicine">의약품</a>
        </div>
        <div class="portfolioContainer">
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 detergent text-center"> <a  href="product?product_id=4"><img src="resources/images/product/viti-detergent.jpg" class="img-responsive wow zoomIn" alt ="image"></a><p> 비타할로 핸드워시 2개 9000원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 detergent text-center"> <a  href="product?product_id=5"><img src="resources/images/product/kid-detergent.jpg" class="img-responsive wow zoomIn" alt="image"></a><p> 아이깨끗해 핸드 솝 3개 9900원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 detergent text-center"><a  href="product?product_id=6"> <img src="resources/images/product/chungchun-detergent.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> 청춘 핸즈퓨리 손소독제 1개 4500원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mask text-center"><a  href="product?product_id=1"> <img src="resources/images/product/kf94.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> kf94 마스크 1개 1500원</p></div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mask text-center"><a  href="product?product_id=2"> <img src="resources/images/product/kf80.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> kf80 마스크 1개 1200원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 mask text-center"><a  href="product?product_id=3"> <img src="resources/images/product/kn95.jpg" alt="image" class="img-responsive wow zoomIn"></a><p> kn95 마스크 1개 1400원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 protective clothing text-center"><a  href="product?product_id=7"> <img src="resources/images/product/aceguard-clothing.jpg" alt="image" class="img-responsive wow zoomIn"></a><p>에이스가드 방역복1개 </p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 protective clothing text-center"><a  href="product?product_id=8"> <img src="resources/images/product/3m-clothing.jpg" alt="image" class="img-responsive wow zoomIn"></a><p>3M 원피스형 방역복3개 32700원 </p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 protective clothing text-center"><a  href="product?product_id=9"> <img src="resources/images/product/3m-clothing(1).jpg" alt="image" class="img-responsive wow zoomIn"></a><p>3M 원피스형 방역복 1개 11000원 </p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 medicine text-center"><a  href="product?product_id=10"> <img src="resources/images/product/ramdae.jpg" alt="image" class="img-responsive wow zoomIn"></a><p>렘데시비르 1개 11000원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 medicine text-center"><a  href="product?product_id=11"> <img src="resources/images/product/clolo.jpg" alt="image" class="img-responsive wow zoomIn"></a><p>클로로퀸 1개 12000원</p> </div>
          <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 medicine text-center"><a  href="product?product_id=12"> <img src="resources/images/product/tyrenol.jpg" alt="image" class="img-responsive wow zoomIn"></a><p>타이레놀1개 2500원</p> </div>
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
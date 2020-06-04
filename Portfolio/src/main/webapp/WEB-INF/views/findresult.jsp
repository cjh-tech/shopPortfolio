<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
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
    </div>
  </nav>
</header>
<section id="inner-title" class="inner-title">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-lg-6">
        <h2>로그인</h2>
      </div>
      <div class="col-md-6 col-lg-6">
      </div>
    </div>
  </div>
</section>
<section id="section-12">
  <div class="container">
    <div class="row">
      <div class="col-md-12 col-md-12">
        <div>
                   아이디 :<input type="text" class="form-control" value="${result1.id}">
                   비번: <input type="text" class="form-control" placeholder="현재 비번찾기 모드가 아닙니다" value=${result2.password}>
                <input type="button" value="뒤로가기" onclick="history.back(-1);">
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
          <h3>초 특가 상품. 지금 당장 사러가기!</h3>
        </div>
      </div>
      <div class="col-md-3 col-lg-3">
        <div class="section-10-btn-cont"><a href="#" class="btn btn-secondary wow fadeInUp">Get Started!</a></div>
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
          <h4>검색하기</h4>
          <div class="cs-form">
            <form action="#" method="post">
              <div class="input-holder">
                <input type="email" placeholder="예시">
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
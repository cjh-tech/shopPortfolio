<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String id = (String)request.getAttribute("id");
%>
   <c:set var="member" value='${list}'/>
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
<!-- animate Effect -->
<link href="resources/css/animate.css" rel="stylesheet">
<!-- Main CSS -->
<link href="resources/css/style.css" rel="stylesheet">
<!-- Responsive CSS -->
<link href="resources/css/responsive.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
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
      <div class="col-md-6 col-lg-6"><h2>개인정보</h2></div>
      <div class="col-md-6 col-lg-6">
        <div class="breadcrumbs">
          <ul>
            <li>현재페이지 : </li>
            <li>마이페이지</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</section>      
<section id="section20" class="section20 blog-list">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-lg-9">
      <div class="section-20-box">
          <div class="section-20-box-text-cont">
          <form method="POST" name="form">
                <P><label>아이디 </label> : ${member.id}</P>
                <p><label>이름</label> : ${member.name}</p>
                <P><label>비밀번호</label> : <input type="text" name="password" value="${member.password}"/></P>
                <P><label>생일</label> : ${member.birth}</P>
                <P><label>성별</label> : ${member.gender}</P>
                <P><label>이메일</label> : <input type="text" name="email" value="${member.email}"/></P>
                <P><label>핸드폰</label> : <input type="text" name="phone" value="${member.phone}"/></P>
                <P><label>주소</label> : <input type="text" name="address" value="${member.address}"/></P>
               <input type="submit" value="수정하기" onclick="javascript:form.action='updateMypage';"/>
           	   <input type="submit" value="삭제하기" onclick="javascript:form.action='deleteMypage';"/>
            </form>
          </div>
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String id = (String)request.getAttribute("id");
%>
<html lang="kor">
<head>
<!-- head 공통부분 -->
<%@ include file="common/head.jsp" %>
<!-- //head 공통부분 -->
<script type="text/javascript">
$(function(){
	var msg = '${msg}';
	var msg1 = "로그인실패";
	var msg2 = "로그인성공";
	if(msg!=""){
		if( msg == msg1){
			alert("아이디와 비밀번호가 일치하지 않습니다");
		}else if( msg == "로그인성공"){
			alert("로그인에 성공하셨습니다");
		}
	}
});

</script>
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
<section id="slider" class="">
  <!-- Carousel -->
  <div id="main-slide" class="carousel slide" data-ride="carousel">

    <!-- Indicators -->
    <ol class="carousel-indicators visible-lg visible-md">
       <li data-target="#main-slide" data-slide-to="0" class="active"></li>
       <li data-target="#main-slide" data-slide-to="1"></li>
    </ol><!--/ Indicators end-->

    <!-- Carousel inner -->
    <div class="carousel-inner">
								<!-- style="background-image:url(resources/images/slide/1.jpg)" -->
      <div class="item active" >
            <canvas id="myChart"></canvas>
	  <script>
		var ctx = document.getElementById('myChart');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: ['${date2[6]}','${date2[5]}','${date2[4]}','${date2[3]}',
					'${date2[2]}', '${date2[1]}', '${date2[0]}'],
				datasets: [{
					label: '코로나 국내 감염자 누적확진자',
					data: [	${barData[6]}, ${barData[5]}, ${barData[4]}, ${barData[3]},
						 ${barData[2]}, ${barData[1]}, ${barData[0]}],
					backgroundColor: [
						'rgba(54, 162, 235, 0.2)',
						'rgba(255, 99, 132, 0.2)',
						'rgba(54, 162, 235, 0.2)',
						'rgba(255, 206, 86, 0.2)',
						'rgba(75, 192, 192, 0.2)',
						'rgba(153, 102, 255, 0.2)',
						'rgba(255, 159, 64, 0.2)'
					],
					borderColor: [
						'rgba(255, 99, 132, 1)',
						'rgba(255, 99, 132, 1)',
						'rgba(54, 162, 235, 1)',
						'rgba(255, 206, 86, 1)',
						'rgba(75, 192, 192, 1)',
						'rgba(153, 102, 255, 1)',
						'rgba(255, 159, 64, 1)'
					],
					borderWidth: 2
				}]
			},
			options: {
				responsive: true,
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero: true
						}
					}]
				},
			}
		});
		</script>
            <div class="slider-content text-left">
               <div class="col-md-12">
                   <h2 class="slide-title effect2">ㅡ ㅡ ㅡ ㅡ ㅡ  </h2>
                   <h3 class="slide-sub-title effect3">국내 코로나 확진자 일일 갱신</h3>
                   <p class="slider-description lead effect3">개인위생에 필요한 상품들을 더 나은가격에</p>
                   <p class="effect3">
                    <a href="medicine" class="slider btn btn-primary">상품 보러가기</a>
                    <a href="faq" class="slider btn btn-secondary">문의하기</a>
                   </p>      
               </div>
            </div>
       </div><!--/ Carousel item 1 end -->
      <div class="item">
            <canvas id="doughnut-chart" width="800" height="450"></canvas>  
	<script>
		new Chart(document.getElementById("doughnut-chart"), {
		    type: 'doughnut',
		    data: {
		      labels: ["대구", "경북", "기타", "경기", "서울"],
		      datasets: [
		        {
		          label: "Population (millions)",
		          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
		          data: [${doughnutData[0]},${doughnutData[1]},${doughnutData[2]},${doughnutData[3]},${doughnutData[4]}]
		        }
		      ]
		    },
		    options: {
		      responsive: true,
		      title: {
		        display: true,
		        text: '${date[0]}년   ${date[1]}월  ${date[2]}일 국내 코로나 감염자 지역비율'
		      }
		    }
		});
	</script>
            <div class="slider-content">
               <div class="col-md-12 text-center">
                <h2 class="slide-title effect2">ㅡ ㅡ ㅡ ㅡ ㅡ  </h2>
                 <h3 class="slide-sub-title effect5">국내KF 인증 제품</h3>
                   <p>
                    <a href="medicine" class="slider btn btn-primary">상품보러가기</a>
                   </p>      
               </div>
            </div>
       </div><!--/ Carousel item 2 end -->
    </div><!-- Carousel inner end-->
    <!-- Controllers -->
    <a class="left carousel-control" href="#main-slide" data-slide="prev">
        <span><i class="fa fa-angle-left"></i></span>
    </a>
    <a class="right carousel-control" href="#main-slide" data-slide="next">
        <span><i class="fa fa-angle-right"></i></span>
    </a>
  </div><!--/ Carousel end -->
</section>
<section  id="section5" class="section-5 section-margine">
  <div class="container">
    <div class="row my-team">
      <div class="col-md-12">
        <header class="title-head">
          <h2>오늘의 베스트 상품</h2>
          <p>원하는 상품을 골라골라</p>
          <div class="line-heading">
            <span class="line-left"></span>
            <span class="line-middle">+</span>
            <span class="line-right"></span>
          </div>
        </header>
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp">
        <div class="my-member-img">
          <img src="resources/images/product/kf94.jpg" class="img-responsive" alt="team01">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">KF94 방진 마스크</h4>
          <p class="my-member-post">개당 1500원</p>  
          <div class="my-member-social">
            <ul>
              <li><a href="product?product_id=1" ><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>        
        </div>        
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp" >
        <div class="my-member-img">
          <img src="resources/images/product/kf80.jpg" class="img-responsive" alt="team02">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">KF80 황사마스크</h4>
          <p class="my-member-post">개당 1200원</p>
          <div class="my-member-social">
            <ul>
              <li><a href="product?product_id=2"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>   
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp">
        <div class="my-member-img">
          <img src="resources/images/product/viti-detergent.jpg" class="img-responsive" alt="team01">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">데일리뉴 핸드워시 2개</h4>
          <p class="my-member-post">개당 4500원</p>  
          <div class="my-member-social">
            <ul>
              <li><a href="product?product_id=4"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>    
        </div>        
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp">
        <div class="my-member-img">
          <img src="resources/images/product/chungchun-detergent.jpg" class="img-responsive" alt="team01">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">핸즈퓨리 손소독제</h4>
          <p class="my-member-post">개당 4500원</p>  
          <div class="my-member-social">
            <ul>
             <li><a href="product?product_id=6"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>        
        </div>        
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp">
        <div class="my-member-img">
          <img src="resources/images/product/ramdae.jpg" class="img-responsive" alt="team01">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">렘데시비르</h4>
          <p class="my-member-post">개당 11000원</p>  
          <div class="my-member-social">
            <ul>
              <li><a href="product?product_id=10"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>        
        </div>        
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp">
        <div class="my-member-img">
          <img src="resources/images/product/clolo.jpg" class="img-responsive" alt="team01">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">클로로퀸</h4>
          <p class="my-member-post">개당 12000원</p>  
          <div class="my-member-social">
            <ul>
               <li><a href="product?product_id=11"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>        
        </div>        
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp" data-wow-delay=".3s">
        <div class="my-member-img">
          <img src="resources/images/product/aceguard-clothing.jpg" class="img-responsive" alt="team03">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">에이스 가드 방역복</h4>
          <p class="my-member-post">1벌당 19000원</p>
          <div class="my-member-social">
            <ul>
              <li><a href="product?product_id=7"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>          
      </div>
      <div class="col-md-3 col-sm-6 my-team-member wow fadeInUp" data-wow-delay=".2s">
        <div class="my-member-img">
          <img src="resources/images/product/3m-clothing.jpg" class="img-responsive" alt="team04">
        </div>
        <div class="my-team-detail text-center">
          <h4 class="my-member-name">3m원피스형 방진복</h4>
          <p class="my-member-post">3벌 32700원</p>         
          <div class="my-member-social">
            <ul>
              <li><a href="product?product_id=8"><i class="fa fa-linkedin"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="section1" class="section-margine">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-6">
        <div class="section-1-box wow bounceIn">
          <div class="section-1-box-icon-background"><i class="fa fa-ambulance fa-2x"></i></div>
          <h4 class="text-center">무료 배송서비스</h4>
          <p class="text-center">언제나 고객님을 위한 퀵 배송서비스!</p>
        </div>
      </div>
      <div class="col-md-3  col-sm-6">
        <div class="section-1-box wow bounceIn" data-wow-delay=".1s">
          <div class="section-1-box-icon-background"><i class="fa fa-user-md fa-2x"></i></div>
          <h4 class="text-center">의료진으로부터 검증된 상품들</h4>
          <p class="text-center">저희 쇼핑몰은 국내 최고의 의료진으로부터 검증된 제품만을 사용합니다</p>
        </div>
      </div>
      <div class="col-md-3  col-sm-6">
        <div class="section-1-box wow bounceIn" data-wow-delay=".2s">
          <div class="section-1-box-icon-background"><i class="fa fa-h-square fa-2x"></i></div>
          <h4 class="text-center">체력증진을 위한 상품들</h4>
          <p class="text-center">고객님 여러분을 먼저 생각합니다 </p>
        </div>
      </div>
      <div class="col-md-3  col-sm-6">
        <div class="section-1-box wow bounceIn" data-wow-delay=".3s">
          <div class="section-1-box-icon-background"><i class="fa fa fa-heartbeat fa-2x"></i></div>
          <h4 class="text-center">응급약품 구비</h4>
          <p class="text-center">위태로울 수 있는 고객님을 한번 더 생각했습니다</p>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="section2" class="section-margine">
  <div class="container">
    <div class="row">
      <div class="col-md-8 nopadding">
          <div class="col-md-6 col-sm-6">
            <div class="section-2-box-left wow fadeInLeft">
              <figure><img src="resources/images/product/ginseng.jpg" class="img-responsive"></figure>
              <h4>인삼의 효능</h4>
              <p>인삼의 신진대사 촉진 작용, 진정작용, 혈당강하, 혈압강하, 면역력 향상, 암세포 억제, 피로 회복, 노화 방지 등 다양한 효능은 현대 의학으로도 입증되고 있다.</p>
              <a href="product?product_id=24" class="btn btn-primary">상품보러가기</a>
            </div>
          </div>
          <div class="col-md-6 col-sm-6">
            <div class="section-2-box-left wow fadeInLeft">
              <figure><img src="resources/images/product/barley.jpg" class="img-responsive"></figure>
              <h4>귀리의 효능</h4>
              <p>연구에 따르면 귀리에는 콜레스테롤이 높은 사람의 건강에 아주 좋은 베타글루칸이라는 섬유질이 풍부하다. </p>
              <a href="product?product_id=17" class="btn btn-primary">상품보러가기</a>
            </div>
          </div>
      </div>
      <div class="col-md-4  col-sm-12">
        <div class="section-2-box-right wow fadeInRight">
          <h3>배송 시간 </h3>
          <ul> 
            <li>월 - 토 : 당일 13시</li>
            <li>배송기간 : 평균 2박3일 </li> 
            <li>일요일은 접수를  오전10시까지 받습니다</li> 
          </ul>
          <a href="faq" class="btn btn-default">FAQ</a>
        </div>
      </div>
    </div>
  </div>
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
<section id="section23" class="appointment">
  <div class="modal fade" id="appointment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog style-one" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Make an Appoinment</h4>
        </div>
        <div class="modal-body">
          <div class="appoinment-form-outer">
            <form action="" method="post">
              <h4>Fill Up Appointment Form.</h4>
                <div class="form-group">
                  <label>Name <span class="required">*</span></label>
                  <input type="text" class="form-control" required="" placeholder="First Name" value="" name="name">
                </div>
                <div class="form-group">
                  <label>Email <span class="required">*</span></label>
                  <input type="email" class="form-control" required="" placeholder="Email" value="" name="name">
                </div>
                <div class="form-group">
                  <label>Phone <span class="required">*</span></label>
                  <input type="text" class="form-control" required="" placeholder="Phone" value="" name="name">
                </div>
                <div class="form-group">
                  <label>Age <span class="required">*</span></label>
                  <input type="text" class="form-control" required="" placeholder="age" value="" name="name">
                </div>
                <div class="form-group">
                  <label>Appoinment Date <span class="required">*</span></label>
                  <input class="datepicker form-control" type="text" required="" placeholder="MM/DD/Year" value="" name="name">
                </div>
                <div class="form-group">
                  <label>Time<span class="required">*</span></label>
                  <input type="text"  class="timepicker form-control" required="" placeholder="Time" value="" name="name">
                </div>
                <div class="form-group">
                  <label>Address <span class="required">*</span></label>
                  <input type="text" class="form-control" required="" placeholder="Address" value="" name="name">
                </div>
                <div class="text-left">
                  <button type="button" class="btn btn-primary">Send Message</button>
                </div>
            </form>
          </div>
        </div>
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
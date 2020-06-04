package com.cjh.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cjh.etc.CalendarSet;
import com.cjh.etc.CoronaDataSet;
import com.cjh.etc.CoronaTimer;
import com.cjh.etc.PageCriteria;
import com.cjh.etc.PageMaker;
import com.cjh.service.BoardService;
import com.cjh.service.MemberService;
import com.cjh.service.ProductService;
import com.cjh.vo.BasketVO;
import com.cjh.vo.BoardVO;
import com.cjh.vo.MemberVO;
import com.cjh.vo.ProductVO;

@Controller
public class HomeController {
	@Autowired
	MemberService service1;
	@Autowired
	BoardService service2;
	@Autowired
	ProductService service3;
	
	@RequestMapping(value="/inquiryboard" , method = {RequestMethod.GET, RequestMethod.POST})
	public String inquiryBoard (Model model, PageCriteria cri ,
			 HttpServletRequest request) throws Exception{
		int totalCount = service2.totalCount(); 
		PageMaker pageMaker = new PageMaker();		
		pageMaker.setDisplayPageNum(5);
		pageMaker.setCri(cri);		
		pageMaker.setTotalCount(totalCount);
		List<BoardVO> list =service2.selectAll(cri.getPageStart(), cri.getPerPageNum());
		model.addAttribute("list", list);
		model.addAttribute("page", pageMaker);
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id"); 
		model.addAttribute("id", id);
		return "inquiryBoard";
	}
	
	@RequestMapping(value = "/writeBoard" , method = RequestMethod.GET)
	public String writeBoard2( Model model , HttpServletRequest request
	           ) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		return "writeBoard";
	}
	@RequestMapping(value = "/writeBoard" , method = RequestMethod.POST)
	public String writeBoard1( Model model , HttpServletRequest request
		,@RequestParam String contents
		,@RequestParam String subject ) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		int count = 0;
		BoardVO vo = new BoardVO(id,subject,contents,count);
		service2.insertBoard(vo);
		List<BoardVO> list =service2.selectAll(0,10);
		model.addAttribute("list", list);
		return "inquiryBoard";
	}
	@RequestMapping(value = "/boardDetail", method = RequestMethod.GET)
	public String borardDetail1(Model model , HttpServletRequest request
			,@RequestParam int idx) throws Exception {
		System.out.println("idx"+idx);
		List<BoardVO> testList = service2.selectIdx(idx);
    	int count = testList.get(0).getCount();
    	System.out.println("count"+count);
    	count += 1 ;
		service2.updatehitCount(idx, count);
		List<BoardVO> list =service2.selectIdx(idx);
		model.addAttribute("list", list);
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id"); 
		model.addAttribute("id", id);
		return "boardDetail";
	}
	@RequestMapping(value = "/deleteBoard" , method = RequestMethod.GET)
	public String deleteBoard( Model model , HttpServletRequest request
			,@RequestParam int idx  ) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		service2.deleteBoard(idx);
		List<BoardVO> list = service2.selectAll(0,10);
		model.addAttribute("list", list);
		return "inquiryBoard";
	}
	@RequestMapping(value = "/updateBoard" , method = RequestMethod.POST)
	public String updateBoard( Model model , HttpServletRequest request
			,@RequestParam int idx 
			,@RequestParam String subject
			,@RequestParam String contents) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		BoardVO vo = new BoardVO(subject,contents,idx);
		service2.update(vo);
		List<BoardVO> list = service2.selectIdx(idx);
		model.addAttribute("list", list);
		return "inquiryBoard";
	}
	
	@RequestMapping("/")
	public String main() {
		return "redirect:main";
	}
	
	@RequestMapping(value = "/main" , method = RequestMethod.GET)
	public String main( Model model , HttpServletRequest request
			           ) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id"); 
		model.addAttribute("id", id);
		CoronaDataSet coronaData = new CoronaDataSet();
		String[] doughnutResult = coronaData.doughnutData();
		CalendarSet calendar = new CalendarSet();
		String[] date1 = calendar.setDoughutCalendar();
		model.addAttribute("doughnutData", doughnutResult);
		model.addAttribute("date", date1);
		String[] date2 = calendar.setBarCalendar();
		model.addAttribute("date2", date2);
		int[] barResult = coronaData.barData();
		model.addAttribute("barData", barResult);
		return "main";
	}
	@RequestMapping(value = "/medicine" , method = RequestMethod.GET)
	public String medicine( Model model , HttpServletRequest request
						 ) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		return "medicine";
	}
	@RequestMapping(value = "/food" , method = RequestMethod.GET)
	public String food( Model model , HttpServletRequest request
							) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		return "food";
	}
	@RequestMapping(value = "/faq", method = RequestMethod.GET)
	public String faq( Model model , HttpServletRequest request
							) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		return "faq";
	}
	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String payment1( Model model , HttpServletRequest request
					) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		return "payment";
	}                                                                                 
	@RequestMapping(value = "/payment", method = RequestMethod.POST)
	public String payment2( Model model , HttpServletRequest request
					) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		return "payment";
	}
	@RequestMapping(value = "/test2", method = RequestMethod.GET)
	public String test2( Model model) throws Exception{
		CoronaDataSet coronaData = new CoronaDataSet();
		String[] result = coronaData.doughnutData();
		CalendarSet calendar = new CalendarSet();
		String[] date = calendar.setDoughutCalendar();
		model.addAttribute("coronaData", result);
		model.addAttribute("date", date);
		return "test2";
	}
	@RequestMapping(value = "/test1", method = RequestMethod.GET)
	public String test1( Model model) throws Exception{
		CoronaDataSet coronaData = new CoronaDataSet();
		int[] result = coronaData.barData();
		model.addAttribute("coronaData", result);
		return "test1";
	}
	@RequestMapping(value = "/best", method = RequestMethod.GET)
	public String best( Model model , HttpServletRequest request
					) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		return "best";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login1( Model model , HttpServletRequest request
					) throws Exception {
		return "login";
	}
	@RequestMapping(value = "/login", method =  RequestMethod.POST)
	public String login2(Model model, HttpServletRequest request
						,@RequestParam String id
		 				,@RequestParam String password) throws Exception {
		 HttpSession session = request.getSession();
		 MemberVO vo = service1.SelectMember(id);
		 if(vo.getPassword().equals(password)) {
			 session.setAttribute("id" , vo.getId());
        	 session.setAttribute("username" , vo.getName());
        	 model.addAttribute("id", id);
        	 model.addAttribute("password",vo.getPassword());
        	 model.addAttribute("username",vo.getName());
        	 String result = "로그인성공";
        	 model.addAttribute("msg", result);
        	 return main(model, request);
         } else {
        	 String result = "로그인실패";
        	 model.addAttribute("msg", result);
        	 return "login";
         }
    }
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout( Model model , HttpServletRequest request
					) throws Exception {
		HttpSession session = request.getSession();
		session.invalidate();
		CoronaDataSet coronaData = new CoronaDataSet();
		String[] doughnutResult = coronaData.doughnutData();
		CalendarSet calendar = new CalendarSet();
		String[] date = calendar.setDoughutCalendar();
		model.addAttribute("doughnutData", doughnutResult);
		int[] barResult = coronaData.barData();
		model.addAttribute("barData", barResult);
		model.addAttribute("date", date);
			
		return "main";
	}
	@RequestMapping(value = "/findid", method = RequestMethod.GET)
	public String findid1( Model model , HttpServletRequest request
						) throws Exception{
		return "findid";
	}
	
	@RequestMapping(value = "/findid", method = RequestMethod.POST)
	public String findid2( Model model , HttpServletRequest request
			,@RequestParam String email) throws Exception{
			MemberVO result = service1.findId(email);
			model.addAttribute("result1", result);
			return "findresult";
	}
	
	@RequestMapping(value = "/findpw", method = RequestMethod.GET)
	public String findpw1( Model model , HttpServletRequest request
						) throws Exception{
		return "findpw";
	}
	
	@RequestMapping(value = "/findpw", method = RequestMethod.POST)
	public String findpw2( Model model , HttpServletRequest request
			,@RequestParam String id
			,@RequestParam String name
			,@RequestParam String email) throws Exception{
			MemberVO vo = new MemberVO(id,name,email);
			MemberVO result2 = service1.findPw(vo);
			model.addAttribute("result2",result2);
			return "findresult";
			
	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register1( Model model , HttpServletRequest request
						) throws Exception{
		return "register";
	}
	
	@ResponseBody
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register2( Model model ,@RequestParam String id
							,@RequestParam String username
							,@RequestParam String password
							,@RequestParam String birth
							,@RequestParam String gender
							,@RequestParam String email
							,@RequestParam String phone
							,@RequestParam String address) throws Exception{
		MemberVO vo = new MemberVO(id,username,password,birth,gender,email,phone,address); 
			
		service1.insertMember(vo);
		CoronaDataSet coronaData = new CoronaDataSet();
		String[] doughnutResult = coronaData.doughnutData();
		CalendarSet calendar = new CalendarSet();
		String[] date1 = calendar.setDoughutCalendar();
		model.addAttribute("doughnutData", doughnutResult);
		model.addAttribute("date", date1);
		String[] date2 = calendar.setBarCalendar();
		model.addAttribute("date2", date2);
		int[] barResult = coronaData.barData();
		model.addAttribute("barData", barResult);
				 	
		return "main";
	}
	
	@ResponseBody
	@RequestMapping(value="/register3", method=RequestMethod.POST)	
	public String register3(@RequestParam Map<String,Object> params){		
		try {
			service1.insertMember2(params);
			return "success";
		}catch(Exception e) {			
			return "failed";
		}			
	}
		
	@RequestMapping(value = "/ajaxtest", method = RequestMethod.GET)
	public String ajax1( Model model , HttpServletRequest request
						) throws Exception{
		return "ajaxtest";
	}
	
	@ResponseBody
	@RequestMapping(value = "/ajaxtest", method = RequestMethod.POST)
	public String checkId(@RequestParam String id,Model model) throws Exception{
	 	String checkid = id;
		System.out.println(checkid);
	 	MemberVO vo = service1.SelectMember(checkid);
		String result = "null";
		if(vo == null) {
			result = "0";
		}else {
			result = "1";
		}
	 	return result;
	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET ,produces="text/plain;charset=UTF-8")
	public String myPage( Model model ,HttpServletRequest request) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id"); 
        MemberVO vo = service1.SelectMember(id);
        model.addAttribute("list", vo);
		model.addAttribute("id", id);
		return "myPage";
	}
	
	@RequestMapping(value = "/updateMypage", method = RequestMethod.POST)
	public String updateMypage( Model model ,HttpServletRequest request
			,@RequestParam String password
			,@RequestParam String email
			,@RequestParam String phone
			,@RequestParam String address
			) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id"); 
		MemberVO vo = new MemberVO(id,password,email,phone,address);
		service1.updateMember(vo);
		MemberVO vo1 = service1.SelectMember(id);
		model.addAttribute("list", vo1);
		model.addAttribute("id", id);
		return "myPage";
	}
	
	@RequestMapping(value = "/deleteMypage", method = RequestMethod.POST)
	public String deleteMypage( Model model ,HttpServletRequest request
					) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id"); 
		service1.deleteMember(id);
	    return "main";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete1( Model model , HttpServletRequest request 
					)throws Exception  {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id"); 
		MemberVO vo1 = service1.SelectMember(id);
		model.addAttribute("list", vo1);
		return "delete";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete2( Model model ,HttpServletRequest request
					) throws Exception {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id"); 
		service1.deleteMember(id);
		session.invalidate();
		return "main";
	}
		
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product1( Model model , HttpServletRequest request
			,@RequestParam int product_id	) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		ProductVO vo = service3.selectProduct(product_id);
		model.addAttribute("vo", vo);
		return "product";
	}
	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public String product2( Model model , HttpServletRequest request
			) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		return "product";
	}
	
	@RequestMapping(value = "/basket", method = RequestMethod.POST)
	public String basket1( Model model , HttpServletRequest request
			,@RequestParam int count
			,@RequestParam int sum
			,@RequestParam int product_id
			,@RequestParam String product_name) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
			
		ProductVO pvo = service3.selectProduct(product_id);
		List<BasketVO> vo = service3.selectBasket(id);
	      	       	
		      if( vo.isEmpty() || product_id != vo.get(0).getProduct_num())  {
					BasketVO bvo = new BasketVO(id,product_id,product_name,count,sum,pvo.getPicture_url());
					service3.insertBasket(bvo);
					List<BasketVO> resultBasket = service3.selectBasket(id);
					model.addAttribute("vo", resultBasket);
				}else if(product_id == vo.get(0).getProduct_num()) {
					List<BasketVO> resultBasket = service3.selectBasket(id);
					count += resultBasket.get(0).getProduct_count();
					sum += resultBasket.get(0).getPrice();
					BasketVO bvo = new BasketVO( id, product_id, count, sum);
					service3.updateBasket(bvo);
					resultBasket = service3.selectBasket(id);
					model.addAttribute("vo", resultBasket);
				}
	    return "basket";
	}
	
	@ResponseBody
	@PostMapping(value="basketDelete")
	public String basketDelete(@RequestParam int basketId ) {
		try {
			service3.basketDelete(basketId);
			return "success";
		}catch(Exception e){
			return "failed";	
		}		
	}
	
	@ResponseBody
	@PostMapping(value="basketGropDelete")
	public String basketGropDelete(@RequestParam int productNum, HttpSession session ) {
		try {
			String id = (String)session.getAttribute("id");
			Map<String, Object> paramMap=new  HashMap<String, Object>();
			paramMap.put("userid", id);
			paramMap.put("productNum", productNum);			
			service3.basketGropDelete(paramMap);
			return "success";
		}catch(Exception e){
			return "failed";	
		}		
	}
	
	@RequestMapping(value = "/mybasket", method = RequestMethod.GET)
	public String basket2( Model model , HttpServletRequest request
			           		) throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		model.addAttribute("id", id);
		List<BasketVO> bvo = service3.selectBasket(id);
		model.addAttribute("vo",bvo);
		return "mybasket";
	}
		
	@RequestMapping(value = "/timetest", method = RequestMethod.GET)
	public String test100( Model model , HttpServletRequest request
					) throws Exception {
		CoronaTimer ct = new CoronaTimer();
		ct.coronaSchedule();
		return "timetest";
	}
	@RequestMapping(value = "/jusoPopup", method = RequestMethod.GET)
	public String juso1( Model model , HttpServletRequest request
					) throws Exception {
		return "jusoPopup";
	}
	@RequestMapping(value = "/jusoPopup", method = RequestMethod.POST)
	public String juso2( Model model , HttpServletRequest request
					) throws Exception {
		return "jusoPopup";
	}
	@RequestMapping(value = "/beformain", method = RequestMethod.GET)
	public String testt2( Model model , HttpServletRequest request
					) throws Exception {
		return "beformain";
	}
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test101( Model model , HttpServletRequest request
					) throws Exception {
		return "test";
	}
}


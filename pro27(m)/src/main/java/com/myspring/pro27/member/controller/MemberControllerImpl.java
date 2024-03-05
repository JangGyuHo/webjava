package com.myspring.pro27.member.controller;



import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myspring.pro27.member.service.MemberService;
import com.myspring.pro27.member.vo.MemberVO;



@Controller("memberController")
public class MemberControllerImpl implements MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);
	@Autowired
	private MemberService memberService;
	@Autowired
	private MemberVO memberVO;
	

	/*
	public void setMemberService(MemberServiceImpl memberService) {
		this.memberService =memberService;
	}
	private MemberVO memberVO;
	
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService; 
	}*/
	
	@Override
	@RequestMapping(value="/member/listMembers.do", method = RequestMethod.GET)
	public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) 
			throws Exception{
		request.setCharacterEncoding("utf-8");
		String viewName =(String)request.getAttribute("viewName");
		//String viewName = getViewName(request);
		System.out.println(viewName);
	logger.info("viewName==========" + viewName);
	logger.debug("viewName==========" + viewName);
		List membersList = memberService.listMembers();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("membersList", membersList);
		
		return mav;
	}
	
	@Override
	@RequestMapping(value="/member/addMember.do", method = RequestMethod.POST) //d여기 수상
	public ModelAndView addMember(@ModelAttribute("member") MemberVO member, HttpServletRequest request,
			HttpServletResponse respons) throws Exception {
		request.setCharacterEncoding("utf-8");
		int result= 0;
		result =memberService.addMember(member);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}

	@Override
	@RequestMapping(value="/member/removeMember.do", method = RequestMethod.GET)
	public ModelAndView removeMember(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		memberService.removeMember(id);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;
	}
	/*@Override
	@RequestMapping(value={"/member/loginForm.do", "/member/memberForm.do"}, method = RequestMethod.GET)
	public ModelAndView form( HttpServletRequest request,
			HttpServletResponse respons) throws Exception {
		String viewName =getViewName(request);
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}
		*/
	@Override
	@RequestMapping(value="/member/login.do", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("member") MemberVO member, RedirectAttributes rAttr, HttpServletRequest request,
			HttpServletResponse respons) throws Exception {
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		memberVO = memberService.login(member);
		if(memberVO != null) {
			HttpSession session = request.getSession();
		session.setAttribute("member", memberVO);
		session.setAttribute("isLogOn", true);
		mav.setViewName("redirect:/member/listMembers.do");
	} else {
		rAttr.addAttribute("result", "loginFaild");
		mav.setViewName("redirect:/member/loginForm.do");
	}
	return mav;
}
	@Override
	@RequestMapping(value="/member/logout.do", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse respons)
			throws Exception {
		HttpSession session = request.getSession();
		session.removeAttribute("member");
		session.removeAttribute("isLogOn");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/member/listMember.do");
		return mav;
	}

 @Override
	@RequestMapping(value = "/member/modMemberForm.do", method= RequestMethod.GET)
	public ModelAndView modMemberForm(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		String viewName =(String)request.getAttribute("viewName");
		MemberVO memberInfo =memberService.findMember(id);
		//String viewName =getViewName(request);
		ModelAndView mav = new ModelAndView(viewName);
		System.out.println("=====11" + viewName);
		mav.addObject("memberInfo", memberInfo);
		mav.setViewName(viewName);
		return mav;
	}
	
	@Override
	@RequestMapping(value = "/member/modMember.do", method= RequestMethod.POST)
	public ModelAndView modMember(@ModelAttribute("memberInfo") MemberVO memberInfo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//String viewName =(String)request.getAttribute("viewName");
		request.setCharacterEncoding("utf-8");
	//	String viewName =getViewName(request);
		//System.out.println(viewName);
	//	System.out.println("=====1122" + viewName);
		int result= 0;
		result = memberService.updateMember(memberInfo);
		ModelAndView mav = new ModelAndView("redirect:/member/listMembers.do");
		return mav;

	}
	@RequestMapping(value= "/member/memberForm.do", method = RequestMethod.GET)
	private ModelAndView memberForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String viewName =(String)request.getAttribute("viewName");
		System.out.println("=====" + viewName);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value= "/member/*Form.do", method = RequestMethod.GET)
	private ModelAndView form(@RequestParam(value="result", required=false) String result, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String viewName =(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		mav.addObject("result", result);
		mav.setViewName(viewName);
		return mav;
	}

	

	/*
	private String getViewName(HttpServletRequest request) throws Exception{
		String contextPath = request.getContextPath();
		String uri = (String)request.getAttribute("javax.servlet.include.request_uri");
		if(uri == null || uri.trim().equals("")) {
			uri = request.getRequestURI();
		}
		int begin = 0;
		if(!((contextPath == null) || ("".equals(contextPath)))) {
			begin = contextPath.length();
		}
		int end;
		if(uri.indexOf(";") != -1) {
			end = uri.indexOf(";");
		} else if(uri.indexOf("?") != -1) {
			end = uri.indexOf("?");
		} else {
			end = uri.length();		
	}
	String viewName = uri.substring(begin, end);		
	if(viewName.indexOf(".") != -1) {		
		viewName = viewName.substring(0, viewName.lastIndexOf("."));	
	}
if(viewName.lastIndexOf("/") != -1) {
	viewName = viewName.substring(viewName.lastIndexOf("/"),viewName.length());
}
return viewName;
}
	
	*/

		

   

}

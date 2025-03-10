package com.kh.burgerking.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// System.out.println("/bk/order 요청이 들어옴!");
		
		// 데이터를 받아 가공해가지고 Service로 넘겨주는 역할
		// 응답받은 데이터를 View로 보냄~
		
		/* 
		 * VIEW에서 GET방식으로 요청 시 doGet()가 호출됨!!!
		 * 
		 * 두 개의 매개변수가 존재함
		 * 
		 * 첫 번째 매개변수 HttpServletRequest => 요청 시 전달된 내용들이 담김
		 * => 요청 전송방식(GET), 사용자의 IP주소, 어떤 URL을 통해서 왔는지, 사용자가 입력한 값 등등...
		 * 
		 * 두 번째 매개 변수 HttpServletResponse => 요청 처리 후 응답할 때 사용
		 */
		
		// 진짜 쿼리스트링이 옴.
//		String queryString = request.getQueryString();
//		System.out.println(queryString);
		
		int num = Integer.parseInt(request.getParameter("num"));
		String productName = request.getParameter("product-name");
		
		/* 
		 * 자주보는 문제 상황
		 * 
		 * 404 : 파일이나 요청을 받아주는 서블릿을 찾지 못했을 때 발생
		 * 		 => 오타일 확률이 높음.
		 * 
		 * 500 : 자바 소스코드 상의 오류(예외 발생~)
		 */
		
		// 잘 다녀옴 => Insert 했다고 침.
		
		/*
		 * 요청처리(Service의 메서드를 호출 해서 DB와의 상호작용까지 끝난 상태)
		 */
		
		int totalPrice = num * 500;
		
		/* 
		 * 제품명(사용자가 입력한 제품명)의 총 가격은 XXX원(총 결제해야 하는 금액) 입니다.
		 */
		
		// 1단계 ) 응답데이터 형식 지정 -> 문서형태의 HTML / UTF-8
		response.setContentType("text/html; charset=UTF-8");
		
		// 2단계 ) 출력 스트림 생성
		PrintWriter writer = response.getWriter();
		
		// 3단계 ) 스트림을 통해 HTML 출력
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title> Get 방식 응답 </title>");
		writer.println("<body>");
		writer.printf("%s의 총 가격은 %d 입니다.", productName, totalPrice);
		writer.println("<script>");
		writer.println("alert('추카포카~')");
		writer.println("</script>");
		writer.println("</body>");
		writer.println("</head>");
		writer.println("</html>");
		
		// 비즈니스 로직과 프레젠테이션 로직이 합쳐져 있다 => 단일 책임 원칙 위반
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("/bk/order doPost 메서드 호출됨~");
	}

}

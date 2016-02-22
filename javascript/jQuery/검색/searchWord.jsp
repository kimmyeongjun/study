<%@ page import="java.util.Vector"%>
<%@ page contentType="text/xml; charset=utf-8"%>

<%
	request.setCharacterEncoding("utf-8"); //요청데이터의 한글 인코딩 설정, SQL문에 사용할 파라미터값과 관련됨

	//반드시 응답되는 내용의  Content-type을 "text/xml;charset=utf-8"해야함, 생략시 결과가 표시되지 않을 수 있음
	response.setContentType("text/xml;charset=utf-8");//응답되는 내용의 Content-type을 설정
	Vector<String> wordList = new Vector<String>();

	String outString = ""; // 요청한 페이지인 searchWord.js로 리턴할 결과를 저장할 변수
	String word = request.getParameter("word");//searchWord.js부터 넘어온 word파라미터값을 저장

	wordList.add("Java");
	wordList.add("미션임파서블5");
	wordList.add("jQuery");
	wordList.add("미션임파서블2");
	wordList.add("미션임파서블");

	wordList.add("Oracle");
	wordList.add("JavaScript");
	wordList.add("Selector");
	wordList.add("Select");
	wordList.add("Servlet");
	wordList.add("암살");
	wordList.add("암호화");
	wordList.add("Oreo");

	outString = "<table>";
	for (int i = 0; i < wordList.size(); i++) {//wordList컬렉션의 요소의 수만큼 반복수행 
		String s = wordList.get(i);
		if (s.startsWith(word)) {
			outString += "<tr><td>" + s + "</td></tr>";//출력문자열을 구성
		}
	}

	outString += "</table>";
	out.println(outString); //요청한 페이지인 searchWord.js로 결과를 리턴
%>
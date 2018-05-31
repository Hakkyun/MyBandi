<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String option = (String) request.getAttribute("option");
	String getText = (String) request.getAttribute("getText");
%>
<html>
<head>
<title>검색화면</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/searchBook/hkLocal.css?ver=1">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/category/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/join/font-awesome.min.css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/earlyaccess/jejugothic.css">
<script
	src="<%=request.getContextPath()%>/resources/js/main/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/main/bootstrap.min.js"></script>

</head>
<body>
	<div><%@ include file="../common/Header.jsp"%></div>
	<br>
	<div class="container jg">
		<div class="row">
			<div class="col-sm-10">
				<div class="bg-pripink" style="padding: 2%; padding-left: 5%;">
					"<%=getText%>"(으)로
					<%=option%>
					2,134건 검색
				</div>
				<br>
				<div class="row">
					<div class="col-md-4 leftdiv">
						<ul class="leftbar" style="min-width: inherit;">
							<li><a href="#">문학(4)</a>
								<ul>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 소설(1)</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 시(2)</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 에세이(자서전)(1)</a></li>
								</ul></li>
							<li><a href="#">인문</a>
								<ul>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 역사/문화</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 종교</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 심리</a></li>
								</ul></li>
							<li><a href="#">과학</a>
								<ul>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 기술/공학</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 컴퓨터/IT</a></li>
								</ul></li>
							<li><a href="#">취미</a>
								<ul>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 가정(요리)</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 운동(건강)</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 여행</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 음악(대중문화)</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 스포츠</a></li>
								</ul></li>
							<li><a href="#">교육</a>
								<ul>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 어린이/청소년</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 참고서(초/중/고)</a></li>
								</ul></li>
							<li><a href="#">사회</a>
								<ul>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 정치/사회</a></li>
									<li><a href="#">&nbsp;&nbsp;&nbsp; 경제/경영</a></li>
								</ul></li>
						</ul>
					</div>
					<div class="col-md-8" id="content">
						<div class="">
							<%
								for (int i = 0; i < 10; i++) {
							%>
							<div class="row booklist">
								<div class="col-lg-2 text-center mt-2 mb-2" style="padding: 0px">
									<img
										src="<%=request.getContextPath()%>/resources/img/aUHXdzfRbG14810_1.jpg"
										alt="책" class="bookImg">
								</div>
								<div class="col-lg-6 bookInfo">
									<div class="bookTitle">나는 독일에서 일한다</div>
									<div>21,000원</div>
									<div>★★★★☆</div>
								</div>
								<div class="col-lg-4" style="margin: auto;">
									<div class="input-group mb-1 mt-1">
										<div class="input-group-prepend">
											<label class="input-group-text" for="bookCount01">수량</label>
											<input class="input-group" type="number" min="0" value="1"
												id="bookCount01" />
										</div>
									</div>
									<div class="mt-2">
										<button class="btn btn-block bg-ultravio">장바구니</button>
									</div>
									<div class="mt-2 mb-2">
										<button class="btn btn-block">바로구매</button>
									</div>

								</div>
							</div>
							<br>
							<%
								}
							%>

						<!-- bookList부분 -->
						</div>
						<div>
							<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item active"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">4</a></li>
								<li class="page-item"><a class="page-link" href="#">5</a></li>
								<li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
							</ul>
						</div>

					<!-- middiv -->
					</div>
				<!-- leftdiv + middiv -->
				</div>
			<!-- topdiv + leftdiv + bookList -->
			</div>

			<div class="col-md-2 test">banner</div>

		</div>


	</div>


</body>
</html>
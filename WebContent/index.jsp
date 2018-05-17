<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<fmt:requestEncoding value="UTF-8"/>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./style.css">
<script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
<script src="./app.js"></script>
<script>
	$.ajax({
		type: "post",
		url: "${path}/problems.do?method=print",
		dataType: "json",
		success:function(data){
			var choicesList = [];
			var choicesArray;
			for(var i=0; i<data.length; i++){
				if(data[i].type == 1){
					choicesList[i] = data[i].choices;
					choicesArray = choicesList[i].split(",")
					$(".problem").append('<div class="tmpl-problem-stub" style="padding:15px 0;">'
							+ '<span class="id">' + (i+1) + ". " + '</span>'
							+ '<span class="problem-text">' + data[i].problem_text + '</span>'
							+ '<div class="answer-user">'
							+ '<div class="tmpl-answer-stub-choice" style="text-align:right;padding-right:10px;">' + 
							'<span class="label"></span>' +
							'<input type="radio" value="1" /><span class="choice">' + choicesArray[0] +
							'</span><input type="radio" value="2" /><span class="choice">' + choicesArray[1] +
							'</span><input type="radio" value="3" /><span class="choice">' + choicesArray[2] +
							'</span><input type="radio" value="4" /><span class="choice">' + choicesArray[3] +
							'</span><input type="radio" value="5" /><span class="choice">' + choicesArray[4] +
							'</span></div></div>');
				}else if(data[i].type == 2){
					$(".problem").append('<div class="tmpl-problem-stub" style="padding:15px 0;">'
							+ '<span class="id">' + (i+1) + ". " + '</span>'
							+ '<span class="problem-text">' + data[i].problem_text + '</span>'
							+ '<div class="answer-user">'
							+ '<div class="tmpl-answer-stub-text" style="text-align:right;padding-right:10px;">'
							+ '<span class="label"></span><input type="text" class="value" />'
							+ '</div></div>');
				}else{
					$(".problem").append('<div class="tmpl-problem-stub" style="padding:15px 0;">'
							+ '<span class="id">' + (i+1) + ". " + '</span>'
							+ '<span class="problem-text">' + data[i].problem_text + '</span>'
							+ '<div class="answer-user">'
							+ '<div class="tmpl-answer-stub-draw" style="text-align:right;padding-right:10px;">'
							+ '<span class="label"></span>'
							+ '<canvas class="canvas" style="width: 125px;height: 125px;border: 1px solid black;'
						    + 'cursor: default;"></canvas>'
							+ '</div></div>');
				}
			}
		}
	});
</script>
</head>
<body>
	<section class="main">
		<section class="screen">
			<div class="problem">
			</div>

			<aside class="main-result">
			</aside>
		</section>

		<footer class="main-footer">
			<button class="submit">제출</button>
		</footer>
	</section>

	<section class="templates">
		<div class="tmpl-problem-stub">
			<span class="id"></span>.
			<span class="problem-text"></span>

			<div class="answer-user"></div>
			<div class="answer-right"></div>
		</div>

		<div class="tmpl-answer-stub-choice">
			<span class="label"></span>

			<input type="radio" value="1" />
			<span class="choice"></span>

			<input type="radio" value="2" />
			<span class="choice"></span>

			<input type="radio" value="3" />
			<span class="choice"></span>

			<input type="radio" value="4" />
			<span class="choice"></span>

			<input type="radio" value="5" />
			<span class="choice"></span>
		</div>

		<div class="tmpl-answer-stub-text">
			<span class="label"></span>
				
			<input type="text" class="value" />
		</div>

		<div class="tmpl-answer-stub-draw">
			<span class="label"></span>
				
			<canvas class="canvas"></canvas>
		</div>

		<div class="tmpl-result-stub">
			<span class="id"></span>.
			<span class="result"></span>
		</div>
	</section>

	<script>
		var app = new App($('.main'));
	</script>
</body>
</html>
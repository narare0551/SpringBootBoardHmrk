<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="layout/header.jsp"%>
<div style="width: 60%; margin: auto;">
	<main>
		<br>
		<h1>BOARD LIST</h1>
		<br> <br>


		<table class="table">


			<!-- 		<thead class="thead-dark"> -->
			<!-- 			<tr> -->
			<!-- 				<th>ID</th> -->
			<!-- 				<th>TITLE</th> -->
			<!-- 				<th>CONTENT</th> -->
			<!-- 				<th>READCOUNT</th> -->
			<!-- 				<th>CREATEDATE</th> -->
			<!-- 			</tr> -->
			<!-- 		</thead> -->


			<tbody>
			<div class="card-deck">
				<c:forEach var="board" items="${boards.content}">
				
					<div class="card text-white bg-primary mb-3" style="max-width: 18rem ; min-width:14rem ">
						<h5 class="card-header bg-transparent border-success">게시글 ${board.id} 번</h5>
						<div class="card-body">
							<h4 class="card-title">글제목  <br>    ${board.title}</h4>

							<h4 class="card-text">내용 <br>    ${board.content}</h4>
							<%-- 							<h4 class="card-text">${board.readcount}</h4> --%>
							
							<a href="/board/${board.id}" class="btn btn-outline-warning abc">글 수정하기</a>
						</div>
						<div class="card-footer">Written on :
							${board.date}</div>
						<br>
					</div>
					<br>



					<!-- 				<tr> -->
					<%-- 					<td>${board.id}</td> --%>
					<%-- 					<td><a href="/board/${board.id}">${board.title}</a></td> --%>
					<!-- 					<td>${board.content}</td> -->
					<%-- 					<td>${board.readCount}</td> --%>
					<%-- 					<td>${board.date}</td> --%>
					<!-- 				</tr> -->
				</c:forEach>
				</div>
			</tbody>
		</table>
		<br> <br>
		<div class="row">
			<div class="col-4"></div>
			<div class="col-2">
				<button type="button" class="btn btn-dark"
					onclick="location.href='?page=${boards.pageable.pageNumber-1}' ">이전</button>
			</div>
			<div class="col-2">
				<button type="button" class="btn btn-dark"
					onclick="location.href='?page=${boards.pageable.pageNumber+1}' ">다음</button>
			</div>
			<div class="col-4"></div>
		</div>
	</main>
</div>

<%@include file="layout/footer.jsp"%>

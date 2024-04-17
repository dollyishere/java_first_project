<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면: main.jsp</title>
<link rel="stylesheet"
	href="../resources/css/bootstrap.css">
<link rel="stylesheet"
	href="../css/main.css">
<style>
	body {
	    align-items: flex-start;
	}
</style>
</head>
<body>
	<div class="container-fluid m-5">
	<!-- 헤터 -->
		<c:import url="/components/defaultHeader.jsp" />
		<div class="container-fluid m-5">
			<div class="row justify-content-evenly align-items-flex-start">
				<!-- 내 study 리스트 -->
				<div class="col-md-auto mb-3">
					<a href="<c:url value="/study/myStudyServlet" />" style="text-decoration: none;">
						<h2 class="mb-3">My Study</h2>
					</a>
					<div class="custom-form text-center" style="width: 30rem;  min-height: 30rem;">
						<form action="<c:url value="/study/studyListServlet" />" method="get">
						    <button type="submit" style="background-color: #B9A4BF; color:white;" class="btn">
						        <b style="color:white;">스터디 참여</b>
						    </button>
						</form>
					</div>
				</div>
				<!-- 내 todo 리스트 -->
				<div class="col-md-auto  mb-3">
					<h2 class="mb-3">My Todo</h2>
					<div class="custom-form text-center" style="width: 46rem; min-height: 30rem;">
					<table class="m-3" style="width: 40rem;">
					  <thead>
					    <tr>
					    <th scope="col">#</th>
					      <th scope="col">Todo명</th>
					      <th scope="col">Study명</th>
					      <th scope="col">시작일</th>
					      <th scope="col">종료일</th>
					      <th scope="col">상태</th>
					      <th scope="col">상세보기</th>
					    </tr>
					  </thead>
						  <tbody class="table-group-divider">
						  	<c:choose>
								<c:when test="${ empty todoList }">
									<%-- if() 부분 --%>
									<tr>
										<td class="m-5" valign="middle" align="center" colspan="7">진행 중인 todo가 없습니다.</td>
									</tr>
								</c:when>
								<c:otherwise>
									<%-- else 부분 --%>
									<c:forEach var="todo" items="${ todoList }" varStatus="status">
										<tr>
											<!-- 인덱스 번호 -->
											<td align="center"><c:out value="${ todo.index + 1 }" /></td>
											<!-- todo 이름 -->
											<td align="center"><c:out value="${ todo.name }" /></td>
											<!-- study 이름 -->
											<td align="center"><c:out value="${ todoStudyList.get(todo.index).getName() }" /></td>
											<!-- 시작일 -->
											<td align="center"><c:out value="${ todo.startDate }" /></td>
											<!-- 종료일 -->
											<td align="center"><c:out value="${ todo.endDate }" /></td>
											<!-- 상태 -->
											<td align="center"><c:out value="${ statusList.get(todo.index).getStatus() }" /></td>
											<td>
												<a href="<c:url value="/member/updateServlet?id=${ member.id }&amp;nowPath=a" /> ">
													상세보기
												</a>
											</td>
										</tr>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
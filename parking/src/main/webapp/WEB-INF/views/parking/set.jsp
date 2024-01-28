<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주차장-급지요금설정</title>
</head>

<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
	
<!-- Bootstrap & Bootswatch -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
		rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.2/flatly/bootstrap.min.css"
		rel="stylesheet">
		
<body>

	<div class="container mt-5 pt-5 mb-5">
		 <div class="row text-start">
			<a href="/">
				<button class="btn btn-secondary"><i class="fa-solid fa-arrow-left"></i></button>
			</a>
		</div>
		<div class="row text-center mt-5">
			<c:choose>
				<c:when test="${isSet}">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>급지명</th>
								<th>전일요금</th>
								<th>기본시간</th>
								<th>기본요금</th>
								<th>간격시간</th>
								<th>간격요금</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="parkingSetDto" items="${set}">
								<tr>
									<td>${parkingSetDto.parkingArea}</td>
									<td>${parkingSetDto.parkingPastFee}</td>
									<td>${parkingSetDto.parkingStartTime}</td>
									<td>${parkingSetDto.parkingStartFee}</td>
									<td>${parkingSetDto.parkingTermTime}</td>
									<td>${parkingSetDto.parkingTermFee}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:when>
				<c:otherwise>
					<h3>설정된 급지요금이 없습니다.</h3>
				</c:otherwise>
			</c:choose>
		</div>
		<div class="row mt-3">
        	<div class="col-md-12 text-end">
				<a href="/parking/insertSet">
					<button class="btn btn-info">급지요금 설정</button>
				</a>
			</div>
		</div>
	</div>
	
</body>
</html>
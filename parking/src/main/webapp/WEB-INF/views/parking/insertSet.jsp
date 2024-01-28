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
			<form action="/parking/insertSet" method="post" class="col-md-6 offset-md-3">
				<div class="row mb-3">
					<div class="col-md-3 mt-1">
						<label for="parkingArea" class="form-label" style="font-weight: bold;">급지</label>
					</div>
					<div class="col-md-9">
						<input type="number" id="parkingArea" name="parkingArea" placeholder="ex) 1, 2, .." class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-3 mt-1">
						<label for="parkingArea" class="form-label" style="font-weight: bold;">전일요금(원)</label>
					</div>
					<div class="col-md-9">
						<input type="number" id="parkingPastFee" name="parkingPastFee" class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-3 mt-1">
						<label for="parkingArea" class="form-label" style="font-weight: bold;">기본시간(분)</label>
					</div>
					<div class="col-md-9">
						<input type="number" id="parkingStartTime" name="parkingStartTime" class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-3 mt-1">
						<label for="parkingArea" class="form-label" style="font-weight: bold;">기본요금(원)</label>
					</div>
					<div class="col-md-9">
						<input type="number" id="parkingStartFee" name="parkingStartFee" class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-3 mt-1">
						<label for="parkingArea" class="form-label" style="font-weight: bold;">간격시간(분)</label>
					</div>
					<div class="col-md-9">
						<input type="number" id="parkingTermTime" name="parkingTermTime" class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-3 mt-1">
						<label for="parkingArea" class="form-label" style="font-weight: bold;">간격요금(원)</label>
					</div>
					<div class="col-md-9">
						<input type="number" id="parkingTermFee" name="parkingTermFee" class="form-control">
					</div>
				</div>
				
				<div class="col-md-12 text-end">
    				<button class="btn btn-primary" type="submit">저장</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
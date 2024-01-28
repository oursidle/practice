<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주차장-주차장등록</title>
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
			<form action="/parking/insertInfo" method="post" class="col-md-6 offset-md-3">
				<div class="row mb-3">
					<div class="col-md-3 mt-2">
						<label for="parkingName" class="form-label" style="font-weight: bold;">주차장명</label>
					</div>
					<div class="col-md-9">
						<input type="text" id="parkingName" name="parkingName" placeholder="ex) 대흥1동" class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-3 mt-2">
						<label for="parkingArea" class="form-label" style="font-weight: bold;">급지</label>
					</div>
					<div class="col-md-9">
						<input type="number" id="parkingArea" name="parkingArea" placeholder="ex) 1, 2, .." class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-3 mt-2">
						<label for="parkingTime" class="form-label" style="font-weight: bold;">운영시간</label>
					</div>
					<div class="col-md-9">
						<input type="text" id="parkingTime" name="parkingTime" placeholder="ex) 00:00~00:00" class="form-control">
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
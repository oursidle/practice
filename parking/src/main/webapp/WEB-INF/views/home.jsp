<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주차장</title>

<style>
    .custom-container {
      border: 5px solid #ccc;
      border-radius: 30px;
      padding: 20px;
    }
 </style>
  
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
		<div class="row text-center custom-container">
			<div class="row mt-5">
				<h1 style="font-weight: bold;">대흥 주차장</h1>
			</div>
			<div class="row mt-5 pt-3">
				<a href="/parking/totalFee">
					<button class="btn btn-success">요금 계산</button>
				</a>
			</div>
			<div class="row mt-3 pt-3">
				<div class="col-md-12 text-center mb-5">
					<a href="/parking/info">
						<button class="btn btn-info">주차장 정보</button>
					</a>
					<a href="/parking/set">
						<button class="btn btn-info">급지요금</button>
					</a>
				</div>
			</div>
		</div>
	</div>
	
</body>
</html>
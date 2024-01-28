<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요금계산</title>
</head>

<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
	
<!-- Bootstrap & Bootswatch -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
		rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.3.2/flatly/bootstrap.min.css"
		rel="stylesheet">
		
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<script>
	$(document).ready(function() {
		$(".feeButton").click(function(){
			$.ajax({
				url: "http://localhost:8080/rest/parking/totalFee",
				method: "post",
				data: {
					parkingArea : $("#parkingArea").val(),
					parkingInHour : $("#parkingInHour").val(),
					parkingInMin : $("#parkingInMin").val(),
					parkingOutHour : $("#parkingOutHour").val(),
					parkingOutMin : $("#parkingOutMin").val()
				},
				success: function(response){
					$(".totalFee").text("요금: " + response + "원");
				}
			});
		});
	});
</script>

<body>

	<div class="container mt-5 pt-5 mb-5">
		<div class="row text-start">
			<a href="/">
				<button class="btn btn-secondary"><i class="fa-solid fa-arrow-left"></i></button>
			</a>
		</div>
		<div class="row text-center mt-5">
			<form action="/parking/totalFee" method="post" class="col-md-6 offset-md-3">
				<div class="row mb-3">
					<div class="col-md-3 mt-1">
						<label for="parkingArea" class="form-label" style="font-weight: bold;">급지명</label>
					</div>
					<div class="col-md-9">
						<input type="number" id="parkingArea" name="parkingArea" placeholder="ex) 1, 2, .." class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-3 mt-1">
						<label for="parkingInHour" class="form-label" style="font-weight: bold;">입차시간</label>
					</div>
					<div class="col-md-4">
						<input type="number" id="parkingInHour" name="parkingInHour" placeholder="ex) 24" class="form-control">
					</div>
					<div class="col-md-1">
					:
					</div>
					<div class="col-md-4">
						<input type="number" id="parkingInMin" name="parkingInMin" class="form-control">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-3 mt-1">
						<label for="parkingOutHour" style="font-weight: bold;">출차시간</label>
					</div>
					<div class="col-md-4">
						<input type="number" id="parkingOutHour" name="parkingOutHour" placeholder="ex) 24" class="form-control">
					</div>
					<div class="col-md-1">
					:
					</div>
					<div class="col-md-4">
						<input type="number" id="parkingOutMin" name="parkingOutMin" class="form-control">
					</div>
				</div>
				
				<div class="col-md-12 text-end">
    				<input class="btn btn-primary feeButton" type="button" value="계산" class="form-control">
				</div>
			</form>
		</div>
		<div class="row text-center mt-5">
			<div class="totalFee"style="font-weight: bold; font-size: 36px; color: #3498db;"></div>
		</div>
	</div>
	
</body>
</html>
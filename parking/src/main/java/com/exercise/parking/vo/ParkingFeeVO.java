package com.exercise.parking.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class ParkingFeeVO {
	private int parkingInHour;//입차시간
	private int parkingInMin;//입차분
	
	private int parkingOutHour;//출차시간
	private int parkingOutMin;//출차분
}

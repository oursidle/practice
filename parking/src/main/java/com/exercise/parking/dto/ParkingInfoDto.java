package com.exercise.parking.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class ParkingInfoDto {
	private String parkingName;//주차장명
	private int parkingArea;//급지 (단위: 급지)
	private String parkingTime;//운영시간
}

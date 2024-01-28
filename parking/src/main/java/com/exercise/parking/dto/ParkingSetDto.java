package com.exercise.parking.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor @Builder
public class ParkingSetDto {
	private int parkingArea;//급지 (단위: 급지)
	private int parkingPastFee;//전일요금 (단위: 원)
	private int parkingStartTime;//기본시간 (단위: 분)
	private int parkingStartFee;//기본요금 (단위: 원)
	private int parkingTermTime;//간격시간 (단위: 분)
	private int parkingTermFee;//간격요금 (단위: 원)
}
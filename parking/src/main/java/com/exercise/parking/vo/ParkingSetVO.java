package com.exercise.parking.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//요금 계산을 위한 VO
@Data	@NoArgsConstructor @AllArgsConstructor @Builder
public class ParkingSetVO {
	private int parkingArea;//급지 (단위: 급지)
	private int parkingStartTime;//기본시간 (단위: 분)
	private int parkingStartFee;//기본요금 (단위: 원)
	private int parkingTermTime;//간격시간 (단위: 분)
	private int parkingTermFee;;//간격요금 (단위: 원)
}

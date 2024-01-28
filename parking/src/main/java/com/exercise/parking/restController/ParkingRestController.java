package com.exercise.parking.restController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exercise.parking.dao.ParkingDao;
import com.exercise.parking.dto.ParkingSetDto;
import com.exercise.parking.vo.ParkingFeeVO;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/rest/parking")
public class ParkingRestController {
	
	@Autowired
	private ParkingDao parkingDao;
	
	
	//요금 계산
	@PostMapping("/totalFee")
	public int totalFee(@ModelAttribute ParkingFeeVO parkingFeeVO,
										int parkingArea, Model model) {
		//입•출자 시간, 분 가져오기
		int parkingInHour = parkingFeeVO.getParkingInHour();
		int parkingInMin = parkingFeeVO.getParkingInMin();
		int parkingOutHour = parkingFeeVO.getParkingOutHour();
		int parkingOutMin = parkingFeeVO.getParkingOutMin();
		
		//이용시간 구하기
		//[1] 시간 * 60 + 분
		//[2] 출차 - 입차
		int parkingInTime = parkingInHour * 60 + parkingInMin;
		int parkingOutTime = parkingOutHour * 60 + parkingOutMin;
		int parkingUsedTime = parkingOutTime - parkingInTime;
		
		//급지에 따른 정보 가져오기
		List<ParkingSetDto> areaList = parkingDao.parkingSetList(parkingArea);
		int parkingStartTime = areaList.get(0).getParkingStartTime();
		int parkingStartFee = areaList.get(0).getParkingStartFee();
		int parkingTermTime = areaList.get(0).getParkingTermTime();
		int parkingTermFee = areaList.get(0).getParkingTermFee();
	
		//이용요금 계산
		//[1] time = 사용시간 - 기본시간
		//[2] time이 기본시간 보다 크다면: (기본시간 + (time / 간격시간) * 간격요금)
		//[3] time이 기본시간 보다 작다면: 기본시간
		int totalFee;
		int time = parkingUsedTime - parkingStartTime;
		if(time > parkingStartTime) {
			totalFee = parkingStartFee + ((time / parkingTermTime) * parkingTermFee);
		}else {
			totalFee = parkingStartFee;
		}
		
		model.addAttribute("totalFee", totalFee);
		
		return totalFee;
	}
}

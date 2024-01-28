package com.exercise.parking.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exercise.parking.dao.ParkingDao;
import com.exercise.parking.dto.ParkingInfoDto;
import com.exercise.parking.dto.ParkingSetDto;

@Controller
@RequestMapping("/parking")
public class ParkingController {

	@Autowired
	private ParkingDao parkingDao;
	
	
	//주차장 조회
	@RequestMapping("/info")
	public String info(Model model) {
		List<ParkingInfoDto> parkingInfo = parkingDao.parkingInfoList();
		model.addAttribute("isInfo", !parkingInfo.isEmpty());
	    model.addAttribute("info", parkingInfo);
		return "/WEB-INF/views/parking/info.jsp";
	}
	
	//주차장 등록 화면
	@GetMapping("/insertInfo")
	public String insertInfo() {
		return "/WEB-INF/views/parking/insertInfo.jsp";
	}
	
	//주차장 등록
	@PostMapping("/insertInfo")
	public String insertInfo(@ModelAttribute ParkingInfoDto parkingInfoDto) {
		parkingDao.insertInfo(parkingInfoDto);
		return "redirect:info";
	}
	
	//급지요금 조회
	@RequestMapping("/set")
	public String set(Model model) {
		List<ParkingSetDto> parkingSet = parkingDao.parkingSetList();
		model.addAttribute("isSet", !parkingSet.isEmpty());
		model.addAttribute("set", parkingSet);
		return "/WEB-INF/views/parking/set.jsp";
	}
	
	//급지요금 설정 화면
	@GetMapping("insertSet")
	public String insertSet() {
		return "/WEB-INF/views/parking/insertSet.jsp";
	}
	
	//급지요금 설정
	@PostMapping("/insertSet")
	public String insertSet(@ModelAttribute ParkingSetDto parkingSetDto) {
		parkingDao.insertSet(parkingSetDto);
		return "redirect:set";
	}
	
	//요금 계산 화면
	@GetMapping("/totalFee")
	public String totalFee() {
		return "/WEB-INF/views/parking/totalFee.jsp";
	}
	
}

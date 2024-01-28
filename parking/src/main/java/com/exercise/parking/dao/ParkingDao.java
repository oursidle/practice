package com.exercise.parking.dao;

import java.util.List;

import com.exercise.parking.dto.ParkingInfoDto;
import com.exercise.parking.dto.ParkingSetDto;

public interface ParkingDao {
	List<ParkingInfoDto> parkingInfoList();//주차장 조회
	void insertInfo(ParkingInfoDto parkingInfoDto);//주차장 등록
	
	List<ParkingSetDto> parkingSetList();//급지요금 조회
	void insertSet(ParkingSetDto parkingSetDto);//급지요금 설정
	
	List<ParkingSetDto> parkingSetList(int parkingArea);//급지에 따른 정보 조회
}
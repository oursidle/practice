package com.exercise.parking.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.exercise.parking.dto.ParkingInfoDto;
import com.exercise.parking.dto.ParkingSetDto;
import com.exercise.parking.mapper.ParkingInfoMapper;
import com.exercise.parking.mapper.ParkingSetMapper;

@Repository
public class ParkingDaoImpl implements ParkingDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private ParkingInfoMapper parkingInfoMapper;
	
	@Autowired
	private ParkingSetMapper parkingSetMapper;
	

	//주차장 조회
	@Override
	public List<ParkingInfoDto> parkingInfoList() {
		String sql = "select * from parkingInfo order by parking_name desc";
		return jdbcTemplate.query(sql, parkingInfoMapper);
	}
	
	//주차장 등록
	@Override
	public void insertInfo(ParkingInfoDto parkingInfoDto) {
		String sql = "insert into parkingInfo("
				+ "parking_name, parking_area, parking_time"
				+ ") values(?, ?, ?)";
		Object[] data = {
			parkingInfoDto.getParkingName(), parkingInfoDto.getParkingArea(),
			parkingInfoDto.getParkingTime()
		};
		jdbcTemplate.update(sql, data);
	}
	
	//급지요금 조회
	@Override
	public List<ParkingSetDto> parkingSetList() {
		String sql = "select * from parkingSet";
		return jdbcTemplate.query(sql, parkingSetMapper);
	}
	
	//급지요금 설정
	@Override
	public void insertSet(ParkingSetDto parkingSetDto) {
		String sql = "insert into parkingSet("
				+ "parking_area, parking_past_fee, parking_start_time, parking_start_fee,"
				+ "parking_term_time, parking_term_fee"
				+ ") values(?, ?, ?, ?, ?, ?)";
		Object[] data = {
			parkingSetDto.getParkingArea(), parkingSetDto.getParkingPastFee(),
			parkingSetDto.getParkingStartTime(), parkingSetDto.getParkingStartFee(),
			parkingSetDto.getParkingTermTime(), parkingSetDto.getParkingTermFee()
		};
		jdbcTemplate.update(sql, data);
	}

	//급지에 따른 정보 조회
	@Override
	public List<ParkingSetDto> parkingSetList(int parkingArea) {
		String sql = "select * from parkingSet where parking_area = ?";
		Object[] data = {parkingArea};
		return jdbcTemplate.query(sql, parkingSetMapper, data);
	}
	
}

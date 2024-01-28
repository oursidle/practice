package com.exercise.parking.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.exercise.parking.dto.ParkingInfoDto;

@Component
public class ParkingInfoMapper implements RowMapper<ParkingInfoDto> {

	@Override
	public ParkingInfoDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ParkingInfoDto parkingInfoDto = new ParkingInfoDto();
		parkingInfoDto.setParkingName(rs.getString("parking_name"));//주차장명
		parkingInfoDto.setParkingArea(rs.getInt("parking_area"));//급지 (단위: 급지)
		parkingInfoDto.setParkingTime(rs.getString("parking_time"));//운영시간
		return parkingInfoDto;
	}

}

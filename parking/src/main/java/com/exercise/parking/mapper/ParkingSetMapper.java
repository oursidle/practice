package com.exercise.parking.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.exercise.parking.dto.ParkingSetDto;

@Component
public class ParkingSetMapper implements RowMapper<ParkingSetDto> {

	@Override
	public ParkingSetDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ParkingSetDto parkingSetDto = new ParkingSetDto();
		parkingSetDto.setParkingArea(rs.getInt("parking_area"));//급지 (단위: 급지)
		parkingSetDto.setParkingPastFee(rs.getInt("parking_past_fee"));//전일요금 (단위: 원)
		parkingSetDto.setParkingStartTime(rs.getInt("parking_start_time"));//기본시간 (단위: 분)
		parkingSetDto.setParkingStartFee(rs.getInt("parking_start_fee"));//기본요금 (단위: 원)
		parkingSetDto.setParkingTermTime(rs.getInt("parking_term_time"));//간격시간 (단위: 분)
		parkingSetDto.setParkingTermFee(rs.getInt("parking_term_fee"));//간격요금 (단위: 원)
		return parkingSetDto;
	}

}

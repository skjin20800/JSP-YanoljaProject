package com.jkb.yanolja.service;

import java.util.ArrayList;
import java.util.List;

import com.jkb.yanolja.domain.motel.Motel;
import com.jkb.yanolja.domain.motel.MotelDao;
import com.jkb.yanolja.domain.motel.dto.MotelDetailDto;
import com.jkb.yanolja.domain.reservation.check.Check;
import com.jkb.yanolja.domain.reservation.dto.ResListReqDto;
import com.jkb.yanolja.domain.reservation.dto.ResReqDto;
import com.jkb.yanolja.domain.reservation.dto.ReservationDto;

public class MotelService<T> {

	MotelDao motelDao= new MotelDao();
	
	List<T> list = new ArrayList<>();

	public List<Motel> motelSeomyeon() {
		
		return motelDao.findBySeomyeon();
	}
	
	public List<Motel> motelGangnam() {
		
		return motelDao.findByGangnam();
	}
	
	@SuppressWarnings("unchecked")
	public List<T> motelDetail(MotelDetailDto dto) {
		List<String> check = new ArrayList<>();
		check.add(dto.getCheckin().toString());
		check.add(dto.getCheckout().toString());
			
		list.add((T) motelDao.findBymotelId(dto.getMotelId()));
		list.add((T) motelDao.findBymotelType(dto));
		list.add((T) check);
		return list;
	}
	
	
	@SuppressWarnings("unchecked")
	public List<T> checklist_info(String str1, String str2) {
		
		list.add((T) motelDao.checklist_info(str1, str2));
		
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> reservationInfo(ReservationDto dto) {
		List<String> check = new ArrayList<>();
		check.add(dto.getCheckin_info().toString());
		check.add(dto.getCheckout_info().toString());
		
		
		list.add((T) motelDao.findBymotelId(dto.getRes_motelId()));
		list.add((T) motelDao.findByOneTypeList(dto));
		list.add((T) check);
		return list;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> reservationEnd(ResReqDto dto) {
		
		String []check = Check.check(dto);
		int a;
		a = motelDao.saveReservation(dto, motelDao.findByMotelAndTypeList(dto), check);
		a += motelDao.reservationTrue(dto);
		if(a==2) {
			return list;	
		}
		return null;
	}
	
	@SuppressWarnings("unchecked")
	public List<T> reservationList(ResListReqDto dto) {
		
		if(dto.getReservation_username().equals("admin")) {
			list.add((T) motelDao.findByReservationListAdmin(dto));
		}else {
			list.add((T) motelDao.findByReservationList(dto));	
		}
		return list;
	}
	
	
	@SuppressWarnings("unchecked")
	public int reservationDelete(String typeListId) {
		int result = motelDao.resDelete(typeListId);
		if (result == 1) {
			result = motelDao.reservationFalse(typeListId);
			if (result == 1){
				return result; 
			}
		}
		return -1;
	}
	
}


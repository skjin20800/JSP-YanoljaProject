package com.jkb.yanolja.domain.reservation.check;

import com.jkb.yanolja.domain.reservation.dto.ResReqDto;

public class Check {

	public static String[] check(ResReqDto dto) {
		
		// 생년월일
		String checkin_Resp = new String(dto.getCheckin_input());
		String checkin_RespSub1 = checkin_Resp.substring(0, 4);
		String checkin_RespSub2 = checkin_Resp.substring(5, 7);
		String checkin_RespSub3 = checkin_Resp.substring(8, 10);

		// 시간
		String cut1 = dto.getCheckin_inputT().toString().replaceAll(":00 AM", "");
		String cut2 = cut1.replaceAll(":00 PM", "");
		String cut_1 = dto.getCheckin_inputT().substring(5, 7);
		if(cut_1.equals("PM")) {
			int PM = Integer.parseInt(cut2);
			PM = PM+12;
			cut2 = Integer.toString(PM);
			
		}
		
		String checkin_RespT = cut2 + ":00:00";
		
		
		//
		// 생년월일+시간 합체
		String checkin_Response = checkin_RespSub1 + "-" + checkin_RespSub2 + "-" + checkin_RespSub3 + " "
				+ checkin_RespT + "";
		


		// 생년월일
				String checkout_Resp = new String(dto.getCheckout_input());
				String checkout_RespSub1 = checkout_Resp.substring(0, 4);
				String checkout_RespSub2 = checkout_Resp.substring(5, 7);
				String checkout_RespSub3 = checkout_Resp.substring(8, 10);

				// 시간
				String cut3 = dto.getCheckout_inputT().toString().replaceAll(":00 AM", "");
				String cut4 = cut1.replaceAll(":00 PM", "");
				String cut_3 = dto.getCheckout_inputT().substring(5, 7);
				if(cut_3.equals("PM")) {
					int PM = Integer.parseInt(cut4);
					PM = PM+12;
					cut4 = Integer.toString(PM);
					
				}
				
				String checkout_RespT = cut4 + ":00:00";
				
				
				//
				// 생년월일+시간 합체
				String checkout_Response = checkout_RespSub1 + "-" + checkout_RespSub2 + "-" + checkout_RespSub3 + " "
						+ checkout_RespT + "";

		String[] Response = { checkin_Response, checkout_Response };
		
		
		return Response;

	}
}
